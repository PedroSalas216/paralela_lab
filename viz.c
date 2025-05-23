#define _XOPEN_SOURCE 500  // M_PI
#include "core.h"
#include "parameters.h"
#include <immintrin.h>
#include <GL/glut.h> // OpenGL
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

// variables globales
static float Ekin, Epot, Temp, Pres; // variables macroscopicas
static float Rho, V, box_size, tail, Etail, Ptail;
// static float *rxyz, *vxyz, *fxyz; // variables microscopicas

static Positions r;
static Velocities v;
static Forces f;

static float Rhob, sf, epotm, presm;
static int switcher = 0, frames = 0, mes;


// OpenGL specific drawing routines
static int win_id;
static int win_x = 900, win_y = 900;


static void pre_display(void)
{ // 3D
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();

    gluPerspective(45.0, (float)win_x / win_y, 1.0, 0.0);
    gluLookAt(1.0, 1.0, 1.0, 0.5, 0.5, 0.5, 1.0, 0.0, 0.0);

    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();

    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
}


static void post_display(void)
{
    glutSwapBuffers();
}


static void draw_atoms(void)
{
    float glL = cbrt((float)N / (RHOI - 0.8));

    float resize = 0.5;

    // grafico las lineas que delimitan la caja de simulación
    glBegin(GL_LINES);

    float box_line = resize * (box_size / glL);
    glColor3d(0.0, 0.0, 1.0);

    glVertex3d(0.0, 0.0, 0.0);
    glVertex3d(0.0, 0.0, box_line);

    glVertex3d(0.0, 0.0, 0.0);
    glVertex3d(0.0, box_line, 0.0);

    glVertex3d(0.0, 0.0, 0.0);
    glVertex3d(box_line, 0.0, 0.0);

    glVertex3d(box_line, box_line, box_line);
    glVertex3d(box_line, box_line, 0.0);

    glVertex3d(box_line, box_line, box_line);
    glVertex3d(box_line, 0.0, box_line);

    glVertex3d(box_line, box_line, box_line);
    glVertex3d(0.0, box_line, box_line);

    glVertex3d(0.0, box_line, 0.0);
    glVertex3d(box_line, box_line, 0.0);

    glVertex3d(0.0, box_line, box_line);
    glVertex3d(0.0, 0.0, box_line);

    glVertex3d(box_line, 0.0, box_line);
    glVertex3d(box_line, 0.0, 0.0);

    glVertex3d(box_line, 0.0, box_line);
    glVertex3d(0.0, 0.0, box_line);

    glVertex3d(0.0, box_line, box_line);
    glVertex3d(0.0, box_line, 0.0);

    glVertex3d(box_line, box_line, 0.0);
    glVertex3d(box_line, 0.0, 0.0);

    glEnd();

    // grafico las particulas (x, y, z) en el punto (dx, dy, dx), son reescaleadas
    // a [0, 1] y luego multiplicadas con un factor que las achica para poder
    // apreciar mejor el cambio en el volumen
    glBegin(GL_POINTS);

    int di;

    float dx;
    float dy;
    float dz;

    for (di = 0; di < 3 * N; di += 3) {
        dx = (r.x[di] /glL) * resize;
        dy = (r.y[di] /glL) * resize;
        dz = (r.z[di] /glL) * resize;
        // dx = (rxyz[di + 0] / glL) * resize;
        // dy = (rxyz[di + 1] / glL) * resize;
        // dz = (rxyz[di + 2] / glL) * resize;

        glColor3d(0.0, 1.0, 0.0);
        glVertex3d(dx, dy, dz);
    }

    glEnd();
}


/*static void reshape_func ( int width, int height )
{
	glutSetWindow ( win_id );
	glutReshapeWindow ( width, height );

	win_x = width;
	win_y = height;
}*/


static void idle_func(void)
{

    if (switcher == 3) {

        Rho = RHOI;
        V = (float)N / Rho;
        box_size = cbrt(V);
        tail = 16.0 * M_PI * Rho * ((2.0 / 3.0) * pow(RCUT, -9) - pow(RCUT, -3)) / 3.0;
        Etail = tail * (float)N;
        Ptail = tail * Rho;

        init_pos(&r, Rho);
        init_vel(&v, &Temp, &Ekin);
        forces(&r, &f, &Epot, &Pres, &Temp, Rho, V, box_size);

        switcher = 0;

    } else if (switcher == 2) { // imprimo propiedades en la terminal y cambio la densidad

        printf("%f\t%f\t%f\t%f\n", Rho, V, epotm / (float)mes,
               presm / (float)mes);

        Rhob = Rho;
        Rho = Rho - 0.1;


        V = (float)N / Rho;
        box_size = cbrt(V);
        tail = 16.0 * M_PI * Rho * ((2.0 / 3.0) * pow(RCUT, -9) - pow(RCUT, -3)) / 3.0;
        Etail = tail * (float)N;
        Ptail = tail * Rho;

        sf = cbrt(Rhob / Rho);
        for (int k = 0; k < N; k++) { // reescaleo posiciones a nueva densidad
            r.x[k] *= sf;
            r.y[k] *= sf;
            r.z[k] *= sf;
        }
        init_vel(&v, &Temp, &Ekin);
        forces(&r, &f, &Epot, &Pres, &Temp, Rho, V, box_size);

        switcher = 0;
        if (fabs(Rho - (RHOI - 0.9f)) < 1e-6) {
            printf("\n");
            switcher = 3;
        }

    } else if (switcher == 1) { // loop de medición

        for (int i = frames; i < frames + TMES; i++) {

            velocity_verlet(&r, &v, &f, &Epot, &Ekin, &Pres, &Temp, Rho,
                            V, box_size);

            sf = sqrt(T0 / Temp);
            for (int k = 0; k < N; k++) { // reescaleo de velocidades
                v.vx[k] *= sf;
                v.vy[k] *= sf;
                v.vz[k] *= sf;
            }
        }

        Epot += Etail;
        Pres += Ptail;

        epotm += Epot;
        presm += Pres;
        mes++;

        frames += TMES;
        if (frames % TRUN == 0) {
            switcher = 2;
        }

    } else if (switcher == 0) { // loop de equilibración

        while (frames % TEQ != 0) {

            velocity_verlet(&r, &v, &f, &Epot, &Ekin, &Pres, &Temp, Rho,
                            V, box_size);

            sf = sqrt(T0 / Temp);
            for (int k = 0; k < 3 * N; k++) { // reescaleo de velocidades
                v.vx[k] *= sf;
                v.vy[k] *= sf;
                v.vz[k] *= sf;
            }

            frames++;
        }

        mes = 0;
        epotm = 0.0;
        presm = 0.0;

        switcher = 1;
    }
    glutSetWindow(win_id);
    glutPostRedisplay();
}


static void display_func(void)
{
    pre_display();
    draw_atoms();
    post_display();
}


static void open_glut_window(void)
{
    glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE);

    glutInitWindowPosition(0, 0);
    glutInitWindowSize(win_x, win_y);
    win_id = glutCreateWindow("tiny molecular dynamics | visualization");

    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    glutSwapBuffers();
    glClear(GL_COLOR_BUFFER_BIT);
    glutSwapBuffers();

    pre_display();

    // glutKeyboardFunc ( key_func );
    // glutMouseFunc ( mouse_func );
    // glutMotionFunc ( motion_func );
    //glutReshapeFunc ( reshape_func );

    glutIdleFunc(idle_func);
    glutDisplayFunc(display_func);
}


// Función auxiliar para alocar memoria alineada
void allocate_memory(Positions* __restrict__ r, Velocities* __restrict__ v, Forces* __restrict__ f) {
    // Posiciones
    if (posix_memalign((void**)&r->x, 32, N * sizeof(float)) ||
        posix_memalign((void**)&r->y, 32, N * sizeof(float)) ||
        posix_memalign((void**)&r->z, 32, N * sizeof(float))) {
        fprintf(stderr, "Error: Memory allocation failed for positions\n");
        exit(1);
    }
    
    // Velocidades
    if (posix_memalign((void**)&v->vx, 32, N * sizeof(float)) ||
        posix_memalign((void**)&v->vy, 32, N * sizeof(float)) ||
        posix_memalign((void**)&v->vz, 32, N * sizeof(float))) {
        fprintf(stderr, "Error: Memory allocation failed for velocities\n");
        exit(1);
    }
    
    // Fuerzas
    if (posix_memalign((void**)&f->fx, 32, N * sizeof(float)) ||
        posix_memalign((void**)&f->fy, 32, N * sizeof(float)) ||
        posix_memalign((void**)&f->fz, 32, N * sizeof(float))) {
        fprintf(stderr, "Error: Memory allocation failed for forces\n");
        exit(1);
    }
}


// Función auxiliar para liberar memoria
void free_memory(Positions* __restrict__ r, Velocities* __restrict__ v, Forces* __restrict__ f) {
    free(r->x); free(r->y); free(r->z);
    free(v->vx); free(v->vy); free(v->vz);
    free(f->fx); free(f->fy); free(f->fz);
}


// viz main

int main(int argc, char** argv)
{

    glutInit(&argc, argv);

    allocate_memory(&r, &v, &f);

    // parametros iniciales para que los pueda usar (antes de modificar)
    // `idle_func`
    srand(SEED);
    Rho = RHOI;
    Rhob = Rho;
    V = (float)N / Rho;
    box_size = cbrt(V);
    tail = 16.0 * M_PI * Rho * ((2.0 / 3.0) * pow(RCUT, -9) - pow(RCUT, -3)) / 3.0;
    Etail = tail * (float)N;
    Ptail = tail * Rho;

    init_pos(&r, Rho);
    init_vel(&v, &Temp, &Ekin);
    forces(&r, &f, &Epot, &Pres, &Temp, Rho, V, box_size);
    //
    //

    printf("# Número de partículas:      %d\n", N);
    printf("# Temperatura de referencia: %.2f\n", T0);
    printf("# Pasos de equilibración:    %d\n", TEQ);
    printf("# Pasos de medición:         %d\n", TRUN - TEQ);
    printf("# (mediciones cada %d pasos)\n", TMES);

    open_glut_window();

    glutMainLoop();

    free_memory(&r, &v, &f);

    exit(0);
}

/*
 * Tiny Molecular Dynamics
 *
 * Unidades: Lennard-Jones
 *
 */

#ifndef PARAMETERS_H
#define PARAMETERS_H

#include <time.h> // time(NULL)

// [108, 256, 500, 864, 1372, 2048, 2916, 4000, 5324, 6912, 8788]

#ifndef N // número de particulas (debe ser un 4m^3 para el cristal inicial)
#define N 256
#endif

#ifndef SEED // rand SEED para las velocidades
#define SEED (time(NULL))
#endif

#ifndef T0 // isoterma
#define T0 2.0
#endif

#ifndef RHOI // densidad inicial
#define RHOI 1.2
#endif

#ifndef RCUT // radio de corte
#define RCUT 2.5
#endif

#ifndef RCUT2 // radio de corte
#define RCUT2 (RCUT*RCUT)
#endif

#ifndef ECUT
#define ECUT (4.0 * (pow(RCUT, -12) - pow(RCUT, -6)))
#endif // !ECUT

#ifndef DT // paso temporal ~ 1.6 fs para el Ar
#define DT 0.005
#endif

#ifndef TEQ // pasos de equilibracion
#define TEQ 500
#endif

#ifndef TRUN // TRUN - TEQ: pasos de medicion
#define TRUN 2000
#endif

#ifndef TMES // cada cuantos pasos se mide
#define TMES 10
#endif

#endif

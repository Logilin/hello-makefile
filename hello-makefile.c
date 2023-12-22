// https://www.logilin.fr/files/yocto-lab/my-hello.c
//
// Fichier source d'exemple du cours en ligne "Linux embarqué avec Yocto" (https://www.logilin.fr/linux-embarque-avec-yocto/)
//
// Christophe BLAESS 2018.
//
// Licence GPL.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/param.h>

#ifndef MAXHOSTNAMELEN
#define MAXHOSTNAMELEN  64
#endif

int main(void)
{
	char hostname[MAXHOSTNAMELEN];

	gethostname(hostname, MAXHOSTNAMELEN);
	hostname[MAXHOSTNAMELEN - 1] = '\0';

	fprintf(stdout, "Hello from %s (build with standard Makefile)\n", hostname);

	return EXIT_SUCCESS;
}



#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define AMPLITUDE 31
#define PI 3.1415


double *generateTable (int points)
{
	double w = 2 * PI / points;

	double *tab = malloc(sizeof(double) * points);

	int i = 0;

	for (i = 0; i < points; i++) {
		tab[i] = AMPLITUDE * sin(w * i);
	}

	return tab;
} 

void printToFile (char *filename, int points)
{
	FILE *file = fopen(filename, "w");

	double *tab = generateTable(points);
	int i;

	for (i = 0; i < points - 1; i++) {
		fprintf(file, "%.0f, ", tab[i]);
	}

	fprintf(file, "%.0f\n", tab[points - 1]);

	free(tab);
	fclose(file);
}


int main (int argc, char const *argv[])
{
	printToFile("tabs.txt", 64);

	return 0;
}
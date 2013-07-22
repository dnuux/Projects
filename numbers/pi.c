#include <stdio.h>
#include <stdlib.h>

int
main(int argc, char **argv)
{
    if (argc != 2)
    {
        fprintf(stderr, "Usage: %s n\n", argv[0]);
        return EXIT_FAILURE;
    }

    int q, i, j, k, n, x, L, *A, predigit = 0, nines = 0;
    sscanf(argv[1], "%d", &n);

    L = 10 * n / 3 + 1;
    A = malloc(L * sizeof(int));
    if (A == NULL)
    {
        fprintf(stderr, "Dynamic memory allocation failed.\n");
        return EXIT_FAILURE;
    }

    for (i = 0; i < L; ++i)
        A[i] = 2;

    for (i = 0; i < n; ++i)
    {
        q = 0;

        for (k = L; k > 0; --k)
        {
            x = 10 * A[k - 1] + q * k;
            A[k - 1] = x % (2 * k - 1);
            q = x / (2 * k - 1);
        }

        A[0] = q % 10;
        q /= 10;

        if (q == 9)
        {
            ++nines;
        }
        else if (q == 10)
        {
            printf("%d", predigit + 1);
            for (j = 0; j < nines; ++j)
                printf("0");
            nines = 0;
        }
        else
        {
            printf("%d", predigit);
            for (j = 0; j < nines; ++j)
                printf("9");
            predigit = q;
            nines = 0;
        }
    }

    free(A);
    printf("%d\n", predigit);

    return EXIT_SUCCESS;
}

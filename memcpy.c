/*
 * Собственная реализация функции memcpy
 * и представление этой функции в ассемблере.
*/

void my_memcpy(void* src, void* dst, unsigned len)
{
    char* csrc = (char*) src;
    char* cdst = (char*) dst;
    for (unsigned i = 0; i < len; i++)
        cdst[i] = csrc[i];
}
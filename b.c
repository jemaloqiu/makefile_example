#include "b.h"
#include "defs.h"

int main(int argc, char** argv)
{
  char* str = "This is b-program";
  QUOTE(str);
  
  int a = 12;
  ptr_int p1 = &a;
  float b = 0.21;
  ptr_float p2 = &b;

  printf("%p\n", p1);
  printf("%p\n", p2);
  return 0;
}

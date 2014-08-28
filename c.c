#include "c.h"
#include "defs.h"

int main(int argc, char** argv)
{
  char* str = "This is c-program";
  QUOTE(str);
  
  Mat2x2 m1 = {0.0,1.0,0.0,1.0};
  Mat3x3 m2 = {0.0,1.0,0.0,1.0, 0.0,1.0,0.0,1.0, 0.9};

	int i, j;
  for(i = 0; i < 2; i++) {
      for(j = 0; j < 2; j++) {
          printf("%f ", m1[i][j]);
      }
      printf("\n");
  }
  for(i = 0; i < 3; i++) {
      for(j = 0; j < 3; j++) {
          printf("%f ", m2[i][j]);
      }
      printf("\n");
  } 
  return 0;
}

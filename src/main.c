#include "prompt/prompt.h"
#include <stdbool.h>
#include <stdio.h>

int main(void) {
  char buff[BUFSIZ];
  while (true) {
    fputs(get_prompt(), stdout);
    fgets(buff, BUFSIZ, stdin);
  }
}

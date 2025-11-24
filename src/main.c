#include "prompt/prompt.h"
#include <stdbool.h>
#include <stdio.h>

int main(void) {
  char buff[BUFSIZ];
  char *prompt = get_prompt();
  while (true) {
    fputs(prompt, stdout);
    fgets(buff, BUFSIZ, stdin);
  }
}

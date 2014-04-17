#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
void greet(char *temp1,char *temp2)
{
char name[400];
strcpy(name,temp2);
printf("Hello %s %s\nWelcome to somewebsite.com\n|\t\t\t|\n|\t\t\t|\n|\t\t\t|\n|\t\t\t|\n|\t\t\t|\n|\t\t\t|\n|\t\t\t|\n|\t\t\t|\n|\t\t\t|\n",temp1,name);
}

main(int argc,char** argv)
{
assert(argc==3);
greet(argv[1],argv[2]);
printf("Hope to see you soon %s %s!!!\n",argv[1],argv[2]);
}

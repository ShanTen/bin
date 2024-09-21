#include <stdio.h>
#include <string.h>

/*
    red
    green
    yellow 
    blue
    purple
    light blue
    white-grey
    grey
    lightred
    grass green
    light yellow
    light blue
    light purple
    light light blue
    white
    black
    dark blue
*/

#define RED_NUMBER 1
#define GREEN_NUMBER 2
#define YELLOW_NUMBER 3
#define BLUE_NUMBER 4
#define PURPLE_NUMBER 5
#define LIGHT_BLUE_NUMBER 6
#define WHITE_GREY_NUMBER 7
#define GREY_NUMBER 8
#define LIGHT_RED_NUMBER 9
#define GRASS_GREEN_NUMBER 10
#define LIGHT_YELLOW_NUMBER 11
#define LIGHT_BLUE_LIGHT_NUMBER 12
#define LIGHT_PURPLE_NUMBER 13
#define LIGHT_LIGHT_BLUE_NUMBER 14
#define WHITE_NUMBER 15
#define BLACK_NUMBER 16
#define DARK_BLUE_NUMBER 17

int main(int argc, char* argv[])
{
    int colors[] = {RED_NUMBER, GREEN_NUMBER, YELLOW_NUMBER, BLUE_NUMBER, PURPLE_NUMBER, LIGHT_BLUE_NUMBER, WHITE_GREY_NUMBER, GREY_NUMBER, LIGHT_RED_NUMBER, GRASS_GREEN_NUMBER, LIGHT_YELLOW_NUMBER, LIGHT_BLUE_NUMBER, LIGHT_PURPLE_NUMBER, LIGHT_LIGHT_BLUE_NUMBER, WHITE_NUMBER, BLACK_NUMBER, DARK_BLUE_NUMBER};


    if(argc != 2)
    {
        printf("Usage: TabColor <color>\n");
        printf("Supply only the name of the required color\n");
        return 1;
    }

    char * baseStr = "\x1b[2;15;%d,|";
    
    if(strcmp(argv[1], "red") == 0)
    {
        printf(baseStr, RED_NUMBER);
    }
    else if(strcmp(argv[1], "green") == 0)
    {
        printf(baseStr, GREEN_NUMBER);
    }
    else if(strcmp(argv[1], "yellow") == 0)
    {
        printf(baseStr, YELLOW_NUMBER);
    }
    else if(strcmp(argv[1], "blue") == 0)
    {
        printf(baseStr, BLUE_NUMBER);
    }
    else if(strcmp(argv[1], "purple") == 0)
    {
        printf(baseStr, PURPLE_NUMBER);
    }
    else if(strcmp(argv[1], "light-blue") == 0)
    {
        printf(baseStr, LIGHT_BLUE_NUMBER);
    }
    else if(strcmp(argv[1], "white-grey") == 0)
    {
        printf(baseStr, WHITE_GREY_NUMBER);
    }
    else if(strcmp(argv[1], "grey") == 0)
    {
        printf(baseStr, GREY_NUMBER);
    }
    else if(strcmp(argv[1], "light-red") == 0)
    {
        printf(baseStr, LIGHT_RED_NUMBER);
    }
    else if(strcmp(argv[1], "grass") == 0)
    {
        printf(baseStr, GRASS_GREEN_NUMBER);
    }
    else if(strcmp(argv[1], "light-yellow") == 0)
    {
        printf(baseStr, LIGHT_YELLOW_NUMBER);
    }
    else if(strcmp(argv[1], "light-blue") == 0)
    {
        printf(baseStr, LIGHT_BLUE_NUMBER);
    }
    else if(strcmp(argv[1], "light-purple") == 0)
    {
        printf(baseStr, LIGHT_PURPLE_NUMBER);
    }
    else if(strcmp(argv[1], "light-light-blue") == 0)
    {
        printf(baseStr, LIGHT_LIGHT_BLUE_NUMBER);
    }
    else if(strcmp(argv[1], "white") == 0)
    {
        printf(baseStr, WHITE_NUMBER);
    }
    else if(strcmp(argv[1], "black") == 0)
    {
        printf(baseStr, BLACK_NUMBER);
    }
    else if(strcmp(argv[1], "dark-blue") == 0)
    {
        printf(baseStr, DARK_BLUE_NUMBER);
    }
    else
    {
        printf("Invalid color\n");
        return 1;
    }

    return 0;
}
# Task A

## Description

This application is a shell script (to run on the Bourne shell) that can be used to remove some old C programs you no longer wish to keep.

## Running

This is implemented by Bash (Unix Shell), please download the code, transfer it to a Linux or Unix system, or transfer the code to a virtual machine which is installed a Linux or Unix system.

Then input the command in Linux/Unix command.

### 1. Add execute permission to delC.sh

`chmod +x delC.sh`

### 2. Execute the delC.sh

`./delC.sh`

## Test

To illustrate the behaviour of the script, the following are sample outputs. The $ is the shell prompt. The texts in & are not part of the sample output. They are hints indicating how your script should behave

a)

    $ ./delC.sh
    This script removes C files which you no longer want to keep.
    Here are the C file(s) under the current directory:
    No C files found.
b)
 
    $ ./delC.sh
    This script removes C files which you no longer want to keep.
    Here are the C file(s) under the current directory:
    f1.c f2.c

    Displaying first 10 lines of f1.c:

    /* A C program for handling arrays
     Written by John Jones, July 2009
     Updated April 2010
    */

    #include <stdio.h>

    int main()
    {
     int x;

    Delete file f1.c? (y/n):n &(user input)&
    File f1.c NOT deleted.

    Displaying first 10 lines of f2.c:

    /* Another C program for handling arrays
     Written by John Jones, August 2009
     Updated May 2010
    */

    #include <stdio.h>

    int main()
    {
     int x, y, z;

    Delete file f2.c? (y/n): y &(user input)&
    File f2.c deleted.
c)

    $ ./delC.sh f1.c
    This script removes C files which you no longer want to keep.
    The file(s) you want to delete is/are:
    f1.c

    Displaying first 10 lines of f1.c:

    /* A C program for handling arrays
     Written by John Jones, July 2009
     Updated April 2010
    */

    #include <stdio.h>

    int main()
    {
     int x;

    Delete file f1.c? (y/n):y &(user input)&
    File f1.c deleted.
d)

    $ ./delC.sh f2.c f3.c
    This script removes C files which you no longer want to keep.
    The file(s) you want to delete is/are: 
    f2.c f3.c

    Displaying first 10 lines of f2.c:

    /* Another C program for handling arrays
     Written by John Jones, August 2009
     Updated May 2010
    */

    #include <stdio.h>

    int main()
    {
     int x, y, z;

    Delete file f2.c? (y/n): y &(user input)&
    File f2.c deleted.

    Displaying first 10 lines of f3.c:

    File f3.c does not exist.
e)

    $ ./delC.sh f3.c f4.c
    This script removes C files which you no longer want to keep.
    The file(s) you want to delete is/are: 
    f3.c f4.c

    Displaying first 10 lines of f3.c:

    File f3.c does not exist.

    Displaying first 10 lines of f4.c:

    File f4.c does not exist.

# Task B 

## Description

This shell script continuously monitors the creation and removal of PDF files with `.pdf` or `.PDF` extensions in the current directory. It displays a list of files that have been created or removed in the last 3 seconds.

## Running

This is implemented by Bash (Unix Shell), please download the code, transfer it to a Linux or Unix system, or transfer the code to a virtual machine which is installed a Linux or Unix system.

### 1. Add execute permission to pdf.sh

`chmod +x pdf.sh`

### 2. Execute the pdf.sh

`./pdf.sh`

## Test

Here is a sample output of your script. The $ is the shell prompt. The texts in & are not part of the sample output. They are hints indicating how your script should behave

```
$ ./pdf.sh

No pdf files have been created or removed in the last 3 seconds.

No pdf files have been created or removed in the last 3 seconds.

The following pdf file(s) have been created in the last 3 seconds:
a3.pdf
a4.pdf
a5.pdf

The following pdf file(s) have been removed in the last 3 seconds:
a4.pdf
a5.pdf

No pdf files have been created or removed in the last 3 seconds.

No pdf files have been created or removed in the last 3 seconds.
… … … … …

```
# Auto restart any command upon file changes in working directory

## How to use

1. Run your command with `hotter` at the start

2. For example `hotter python hello_world.py`.

3. `hotter` will restart program if there are any changes in the files in the directory where `hotter` was executed.

4. See `.hotterignore` to use patterns or file names to ignore paths for change checking.

## Install

1. `git clone https://github.com/mograking/hotter.git`

2. `cd hotter`

3. `mv hotter.sh hotter`

4. `chmod +x hotter`

5. `export PATH=$PATH:$(pwd)`

## Here's me using `hotter` to run my discord bot

![image](https://github.com/mograking/hotter/assets/116985244/a32af7df-b9fb-4d56-9419-5a192a17162b)


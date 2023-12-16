# Hot reload anything!

## Hotter is a command line tool that lets you hot reload any command

## How to use:

1. Run your command with `hotter` at the start.

2. For example `hotter python hello_world.py`.

3. Hotter will restart your command if any file in the present working directory (the directory where `hotter` was executed) changes.

4. You can add file sor patterns to ignore for change checking in a file called `.hotterignore` in the same directory where you executed `hotter`.

5. See `.hotterignore` file in repo for examples

## To install:

- `git clone `
- `cd `
- `mv hotter.sh hotter`
- `chmod +x hotter`
- `export PATH=$PATH:$(pwd)`

![image](https://github.com/mograking/hot-reload-anything/assets/116985244/21085d4c-ce7a-49a8-9d79-b1cb5b1e32a1)

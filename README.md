# Auto-restart on file changes 

## Hotter is a command line tool that lets you auto-restart any command if files in the directory change

## How to use:

1. Run your command with `hotter` at the start.

2. For example `hotter python hello_world.py`.

3. Hotter will restart your process if any file in the CWD changes.

4. You can add files/patterns to ignore for change checking in a file called `.hotterignore` in the same directory where you executed `hotter`.

5. See `.hotterignore` file in repo for examples

## To install:

- `git clone `
- `cd `
- `mv hotter.sh hotter`
- `chmod +x hotter`
- `export PATH=$PATH:$(pwd)`
 



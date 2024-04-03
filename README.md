# Auto restart any command upon file changes in working directory (with ignoring of files that match glob patterns)
**Hotter: Automatic Command Relauncher**

![Hotter Logo](hotter_logo.png)

**Introduction:**

Hotter is a lightweight shell program designed to simplify the development process for projects involving multiple processes or frameworks. It enables automatic relaunching of commands based on changes detected in the files within the directory it was run in. This tool is particularly useful for small yet intricate projects where testing functions require launching multiple processes simultaneously.

**Features:**

- **Automatic Relaunching:** Hotter continuously monitors the files within the directory it was executed in and relaunches specified commands whenever changes are detected.

- **Dot-Ignore Support:** Users can specify files to be ignored for tracking changes by creating a `.hotterignore` file and listing glob patterns for the files to be excluded.

- **Simplicity:** Hotter is a single-file shell program, making it easy to integrate into existing projects and workflows.

**Usage:**

1. Download the `hotter` script and place it in the root directory of your project.

2. Create a `.hotterignore` file in the same directory if you wish to ignore specific files from being tracked for changes. List glob patterns for files to be excluded, one pattern per line.

3. Run the following command to launch Hotter:

   ```
   ./hotter <command_to_relaunch>
   ```

   Replace `<command_to_relaunch>` with the command you want Hotter to monitor and relaunch upon changes.

**Example:**

Suppose you are working on a web development project that involves both frontend and backend processes. You want Hotter to relaunch the server whenever changes are made to the source files. Here's how you would use Hotter:

1. Place the `hotter` script in the root directory of your project.

2. Create a `.hotterignore` file if there are specific files you want to exclude from tracking.

3. Launch Hotter with the command to start your server:

   ```
   ./hotter
   ```

**Contributing:**

Hotter is a personal project developed by a single individual. Contributions, suggestions, and feedback are welcome via GitHub issues and pull requests.

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

**License:**

Hotter is licensed under the MIT license. See the LICENSE file for details.

**Contact:**

For any inquiries or assistance regarding Hotter, feel free to contact the project maintainer.

**Acknowledgments:**

This project was inspired by the need for a simple and efficient tool for automatically relaunching commands based on file changes in a project directory. Special thanks to the open-source community for providing valuable resources and inspiration.

Thank you for considering Hotter for your project automation needs. Happy coding!

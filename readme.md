# DFEC Python Configuration for Windows

This configuration guide assumes you have Windows 10 installed on your machine and that you have administrator privileges for your machine. The intent of this guide is to show how to mirror Caleb Ziegler's Python configuration on Windows.

## Requirements

 * Windows 10
 * Administrator Privileges

## Installation

 1. Install Git Bash for easy access to Vim and Linux-like commands on Windows. 
    * Download here: https://gitforwindows.org/
    * After downloading, open Git Bash and right click on the top banner, then select options. A few options that I prefer:
        * In "Looks" tab, make sure "Theme" is "xterm"
        * In "Looks" tab, make sure "Transparency" is "Off" or "Low" and "Cursor" is "Block" and "Blinking" is checked
        * In "Text" tab, make sure the text font is large enough so you can see easily. 10pt works fine for me, but different machines tend to have different zoom
        * In "Keys" tab, I keep default shortcuts, but being familiar with keys is helpful for things like copy and paste (Ctrl + C and Ctrl + V do not work for copy/paste in Git Bash)
        * In "Terminal" tab, change "Type" to "xterm-256color" to allow correct syntax highlighting when using Vim in Git Bash
    * Copy the files named ".bashrc", ".bash_aliases" to the Home location for Git Bash (this is denoted by "~"). On Windows, this is "C:\Users\\<USERNAME>"
    * The last line of ".bashrc" will have to be changed once Anaconda is installed, but leave it as is for now. 
    * I have some specific configurations I use for Git as well, but I won't include that yet. Let me know if you want to see it, and I can include it in here

 2. I have a very specific configuration for Vim that I prefer. You don't have to go with it, but I leave it here for you to use if you're curious. To mirror my Vim config, follow the steps below: 
    1. Copy the file ".vimrc" and folder ".vim" to your Home location for Git Bash 
        * The file ".vimrc" gives different keybindings for Vim and some new functions
        * The folder ".vim" includes packages that add additional features to Vim (such as auto-closing quotes, parenthesis, etc. and better syntax highlighting)
    2. Open a file in Vim, and if pressing "i" brings you to insert mode and pressing "jk" in quick succession puts you back into command mode, the key bindings work. Open the ".vimrc" file to see the new keybindings. 
    3. To verify that the syntax highlighting works, google "Badwolf color scheme Vim" and verify that you colors match the ones you see on google. If so, you're good to go with my Vim config. 
    4. A good website to use to get comfortable with Vim is https://vim-adventures.com/ (some of my key bindings will differ with what is shown here, but this website will get you comfortable with the vim construct)

 3. Install the Anaconda Python package 
    * Anaconda packages up python and many of the commonly used python packages (such as Numpy, Scipy, Pandas, and Matplotlib) into one distribution. Anaconda also comes with its own package manager, called "conda", which acts as a replacement to the Python package manager "pip" (when installing packages, use "conda" as much as possible, but if it doesn't work, then revert to "pip"). Installing Anaconda gives you a MATLAB-esque IDE and a Python terminal (called Spyder) and a Python terminal.
    1.  Download here: https://www.anaconda.com/products/individual
    2.  Follow prompts. I installed Anaconda in my AppData folder (because I didn't have admin privileges at this point), but installing in Program Files works fine too
    3.  Once installed, you should see "Spyder" and "Anaconda Prompt" on your Desktop. 
    4.  Navigate to your Anaconda Install (either "C:\Users\\<USERNAME>\Anaconda3" or "C:\Program Files\Anaconda3") and find the file "\<ANACONDA INSTALL\>\Scripts\activate"
    5.  Open up ".bashrc" from you Git Bash Home location and edit the last line to refer to the "activate" file in the previous step. This ensures that Git Bash activates Anaconda in each terminal session so that all Anaconda commands are available. 
    6.  Find the file "<ANACONDA INSTALL>\Scripts\jupter-notebook.exe" and create a shortcut to this on your desktop. I'm a huge fan of jupyter-notebooks as a way of collaborating on projects. Running the ".exe" spins up a local server on your machine that allows you to write Python code and see the output of said code in browser. 

## Usage
 
 1. If you are unfamiliar with Git Bash, the gist is that it gives Linux-like functionality within Windows. Its main intent is to give access to git commands within Windows. If you are unfamiliar with git, git is a very popular version control system. It is great for version-controlling text documents/code and documenting said documents/code. 
    * A git cheat sheet is included in this repository
 2. Vim is a popular text editor, but it comes with many complexities. Run the command `vim <FILENAME>` to open vim. Vim is a 'mode' based editor, and its four main modes are 'normal', 'insert', 'command', and 'visual'. Normal mode is intended for navigating the text and replacing/removing text or running functions/macros. Insert mode is used for writing and editing large blocks of text. Command mode is used for running commands (for me this is typically saving the file, running a regex search, or closing the file). Visual mode is used for applying functions to many lines of text at once. In my configuration, insert mode is reached by pressing "i" from normal mode. Normal mode is the default when entering Vim, and it is reached by pressing "jk" in quick succession from insert mode. Pressing ":" from normal mode enters command mode. Visual mode is reached by pressing "v", "Shift-v", or "Ctrl-v" when in in normal mode. 
    * A vim cheat sheet is included in this repository (not all of the commands will align with mine, for example, default Vim binding for going from insert mode to command mode is Esc)
 3. The conda package manager is an important aspect of Anaconda. A few common commands are:
    * `conda install PACKAGENAME` for installing new packages
    * `conda activate ENVIRONMENT` for switching environments
    * `conda deactivate ENVIRONMENT` for leaving an environment
    * `conda list` for listing all packages in the current environment
    * A conda cheat sheet is included in this repository. Conda environments are a great way to manage packages across projects. If two projects require different packages or different versions of the same packages, conda environments are a great way to make sure those packages do not conflict. The cheat sheet shows how to create new environments. 

## Further Development
 1. Please let me know if anything is not clear by sending me an email or raising an issue on this repository. I would like to make this as concise as possible while still being complete. 


# Getting Started in Julia

## Installing Julia:
* **Windows:** 
    
    Go to https://julialang.org/downloads/ and download the right version for yor architecture.

    Install it like another ordinary program.

    We will use the Long-term support release (V1.6.4 Nov 19, 2021)

* **Linux:**
    
    We won't use some package manager for make sure of use the same version:

    * Download the compressed binaries from https://julialang.org/downloads/ or use `wget`.

    * Extract the file .`tar.gz` with `tar -xvzf [JULIA_COMPRESSED_FILE.tar.gz]`

    * Copy the extracted folder to `/opt/`:

        `sudo cp -r [JULIA_FORDER] /opt/`

    * Create a symbolic link to `julia``inside the `/usr/local/bin/` folder:

        `sudo ln -s /opt/[JULIA_FOLDER]/bin/julia /usr/local/bin/julia`

    
    * Type julia in your terminal and if the interactive prompt appears, everything is fine :D

## Installing an IDE for Julia

We will use Visual Studio Code with an extension of Julia (https://www.julia-vscode.org/) for programming in Julia.

* **Installation of VS Code in Windows:**

    Go to  https://code.visualstudio.com/download and download the System Installer for your architecture.

* **Installation of VS Code in Linux:**
    
    * **Arch linux based distributions:**

        Use `yay -S visual-studio-code-bin` for install VS Code.
    
    * **Ubuntu based distributions:**
        
        * Update the packages index and install the dependencies by running the following command as a user with sudo privileges :

            ``sudo apt update``

            ``sudo apt install software-properties-common apt-transport-https wget``
        
        * Import the Microsoft GPG key using the following wget command :

            ``wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -``
        
            And enable the Visual Studio Code repository by typing:

            ``sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"``

            make sure to configure with your architecture.
        
        * Once the apt repository is enabled , install the Visual Studio Code package: 

            `sudo apt install code`
        
    This section was taken from https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-20-04/



* **Julia extension for VS Code**
         
    Go to **Extensions** section or use `Ctrl + Shift + D`, search "Julia" and install it.

    **Information of Julia Extension:**

    >Name: Julia
    >
    >Id: julialang.language-julia
    >
    >Description: Julia Language Support
    >
    >Version: 1.5.6
    >
    >Publisher: julialang
    >
    >VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=julialang.language-julia






# CPP notes
https://apple.stackexchange.com/questions/245891/installed-gcc-with-homebrew-now-how-to-use-that-gcc-instead-of-clang

https://medium.com/gdplabs/build-and-debug-c-on-visual-studio-code-for-mac-77e05537105e
https://medium.com/@divyendu.narayan/

https://medium.com/@divyendu.narayan/visual-studio-code-setup-in-mac-os-to-build-and-debug-c-cmake-projects-45a78b29e49

https://dev.to/rizz0s/my-vscode-c-opencv-macos-config-80k

https://thecodinginterface.com/blog/opencv-cpp-vscode/

https://stackoverflow.com/questions/34340578/installing-c-libraries-on-os-x/34341219



# brew install GNU C++  CMAKE and compiler/linker packager
    brew install
        gcc         <== GCC 10.x
        g++         <== GCC 10.x
        cmake       <== v 3.19.5
        pkg-config  <== package compiler/linker settings


# set path loading order (precedence) in  /etc/paths
    /usr/local/bin      (brew)
    /usr/bin            (apple)


# symlink gcc-10 (brew name) to gcc (system name)
    ln -sf /usr/local/bin/gcc-10  /usr/local/bin/gcc
    ln -sf /usr/local/bin/g++-10 /usr/local/bin/g++


# VSCode: install plugins
    ms-vscode.cpptools-extension-pack

    which includes:
    C/C++
    C/C++ Themes
    CMake
    CMake Tools
    Remote Development Extension Pack
    GitHub Pull Requests and Issues
    Visual Studio Codespaces
    LiveShare Extension Pack
    Doxygen Documentation Generator
    Better C++ Syntax
    
    => FAIL:  VSCode to difficult to configure cmake/build; no good instructions online
    => USE CODEBLOCKS INSTEAD OF VSCODE;


# install Code:Blocks
https://www.codeblocks.org/downloads/binaries/
https://sourceforge.net/projects/codeblocks/files/Binaries/13.12/MacOS/CodeBlocks-13.12-mac.zip/download

    => THIS WORKS OUT OF THE BOX


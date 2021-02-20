alias brew-all='clear;echo "brew updating...";brew update; echo "brew upgrade...";brew upgrade;echo "brew cleanup and prune all..."; brew cleanup --prune all;echo "brew doctor...";brew doctor; echo "brew list...";brew list'
alias brew-reset='cd /usr/local; git fetch origin; git reset --hard origin/master'
alias brew-rm-all='brew remove --force $(brew list --formula)'
alias brew-info='brew info; echo "-----"; brew list;  echo "-----"; echo "brew  -all reset rm --help"; echo "-------" '




# SERVICES
# https://github.com/Homebrew/homebrew-services
# brew services run|start|stop|restart |list | cleanup --all


# ESSENTIALS
# wget              b4p requires
# bash              https://itnext.io/upgrading-bash-on-macos-7138bd1066ba
# bash-completion   https://sourabhbajaj.com/mac-setup/BashCompletion/
# ack               grep replacement
# lsd               ls replacement  (not: exa)
# fzf               fuzzy search
# htop              top replacement
# tree
# vim


# APPS
# mmv, rename       multi-file renaming
# task              CLI todo manager
# mas               Mac App Store manager
# cmus              music player
# mc                midnight commander; file browser
# peco              interactive file filter
# googler           google search
# cmatrix

#dash
#figlet
#findutils
#lynx
#googler           google search



# SHELL-BASH: must install via brew to get 2021 version; mac has only 2007 version 
# bash                       
# oh-my-bash        https://github.com/ohmybash/oh-my-bash


# SHELLS - OTHER: not compatible with POSIX or bash
# https://en.wikipedia.org/wiki/Comparison_of_command_shells
# zsh               https://en.wikipedia.org/wiki/Z_shell
# fish              https://en.wikipedia.org/wiki/Fish_(Unix_shell)
# pwsh              https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-macos?view=powershell-7.1




# zsh: z shell    https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7
# ncurses, pcre

# task: task manager   https://taskwarrior.org/
# gmp, bdw-gc, libffi, libtool, pkg-config, readline, guile, libtasn1, nettle, p11-kit, libevent, c-ares, jemalloc, libev, nghttp2, unbound and gnutls

# mc: midnight-commander
# pcre, gdbm, sqlite, xz, python@3.9, glib, libssh2, libpng and s-lang

# dosbox: DOS emulator
# sdl, sdl_net, libogg, libvorbis and sdl_sound

# cmus: music player
# faad2, aom, dav1d, freetype, fontconfig, frei0r, lame, fribidi, lzo, pixman, cairo, gobject-introspection, graphite2, icu4c, harfbuzz, libass, libbluray, libsoxr, libvidstab, libvpx, opencore-amr, jpeg, libtiff, little-cms2, openjpeg, opus, rav1e, rtmpdump, flac, libsndfile, libsamplerate, rubberband, sdl2, snappy, speex, srt, giflib, webp, leptonica, tesseract, theora, x264, x265, xvid, libsodium, zeromq, zimg, ffmpeg, libcue, mad, mp4v2 and opusfile



# XDG Base Directory Specification
# ---------------------------------------------------------
# https://wiki.debian.org/XDGBaseDirectorySpecification
# https://github.com/adrg/xdg


#### XDG Base Directory

|                 | Unix                                | macOS                           | Windows                                 |
| :-------------- | :---------------------------------- | :------------------------------ | :-------------------------------------- |
| XDG_DATA_HOME   | `~/.local/share`                    | `~/Library/Application Support` | `%LOCALAPPDATA%`                        |
| XDG_DATA_DIRS   | `/usr/local/share`<br/>`/usr/share` | `/Library/Application Support`  | `%APPDATA%\Roaming`<br/>`%PROGRAMDATA%` |
| XDG_CONFIG_HOME | `~/.config`                         | `~/Library/Preferences`         | `%LOCALAPPDATA%`                        |
| XDG_CONFIG_DIRS | `/etc/xdg`                          | `/Library/Preferences`          | `%PROGRAMDATA%`                         |
| XDG_CACHE_HOME  | `~/.cache`                          | `~/Library/Caches`              | `%LOCALAPPDATA%\cache`                  |
| XDG_RUNTIME_DIR | `/run/user/UID`                     | `~/Library/Application Support` | `%LOCALAPPDATA%`                        |

#### XDG user directories

|                     | Unix          | macOS         | Windows                   |
| :------------------ | :------------ | :------------ | :------------------------ |
| XDG_DESKTOP_DIR     | `~/Desktop`   | `~/Desktop`   | `%USERPROFILE%/Desktop`   |
| XDG_DOWNLOAD_DIR    | `~/Downloads` | `~/Documents` | `%USERPROFILE%/Documents` |
| XDG_MUSIC_DIR       | `~/Music`     | `~/Music`     | `%USERPROFILE%/Music`     |
| XDG_PICTURES_DIR    | `~/Pictures`  | `~/Pictures`  | `%USERPROFILE%/Pictures`  |
| XDG_VIDEOS_DIR      | `~/Videos`    | `~/Movies`    | `%USERPROFILE%/Videos`    |
| XDG_TEMPLATES_DIR   | `~/Templates` | `~/Templates` | `%USERPROFILE%/Templates` |
| XDG_PUBLICSHARE_DIR | `~/Public`    | `~/Public`    | `%PUBLIC%`                |



# UNIX
XDG_DATA_HOME       `~/.local/share`         
XDG_DATA_DIRS       `/usr/local/share`<br/>`/usr/share`
XDG_CONFIG_HOME     `~/.config`   
XDG_CONFIG_DIRS     `/etc/xdg`  
XDG_CACHE_HOME      `~/.cache` 
XDG_RUNTIME_DIR     `/run/user/UID`

XDG_DESKTOP_DIR      `~/Desktop`   
XDG_DOWNLOAD_DIR     `~/Downloads` 
XDG_MUSIC_DIR        `~/Music`     
XDG_PICTURES_DIR     `~/Pictures`  
XDG_VIDEOS_DIR       `~/Videos`    
XDG_TEMPLATES_DIR    `~/Templates` 
XDG_PUBLICSHARE_DIR  `~/Public`    


# macOS
XDG_DATA_HOME     `~/Library/Application Support` 
XDG_DATA_DIRS     `/Library/Application Support`  
XDG_CONFIG_HOME   `~/Library/Preferences`         
XDG_CONFIG_DIRS   `/Library/Preferences`          
XDG_CACHE_HOME    `~/Library/Caches`             
XDG_RUNTIME_DIR   `~/Library/Application Support`

XDG_DESKTOP_DIR     `~/Desktop`  
XDG_DOWNLOAD_DIR    `~/Documents` 
XDG_MUSIC_DIR       `~/Music`     
XDG_PICTURES_DIR     `~/Pictures` 
XDG_VIDEOS_DIR       `~/Movies`   
XDG_TEMPLATES_DIR    `~/Templates`
XDG_PUBLICSHARE_DIR  `~/Public`   


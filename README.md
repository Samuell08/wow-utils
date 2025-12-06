# wow-utils
Collection of useful World of Warcraft utilities written in bash.

### WoWAddOnsFetchPull.sh
Navigates all sub-directories of `${WOW_UTILS_PREFIX}/Interface/AddOns`, if there is a Git repository, it will fetch and forcibly update to latest commit of existing branch.

### WoWScrnShotCompress.sh
Navigates screenshot directory `${WOW_UTILS_PREFIX}/Screenshots` and converts all `.tga` screenshots to `.jpg` which yields much lower file size while keeping the quality as high as possible (`-q:v 1 -qmin 1`).
- Dependencies:
  - ffmpeg

### Setup

All utilities use environment variable `WOW_UTILS_PREFIX` that must point to WoW directory. You can set this environment variable in your shell configuration file (e.g. `~/.bashrc`) as:
```bash
export WOW_UTILS_PREFIX="/path/to/wow"
```
Don't forget to load it, e.g.:
```bash
source ~/.bashrc
```
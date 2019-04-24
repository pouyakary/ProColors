
#
# ─── PATHS ──────────────────────────────────────────────────────────────────────
#

    BUILD_PATH="./pro-colors.themeX/builds/sublime"
    VSCODE_PATH="~/.vscode/extensions/pro-colors/tmThemes"
    SUBLIME_PATH='~/Library/"Application Support"/"Sublime Text 3"/Packages/User'

#
# ─── BUILDING ───────────────────────────────────────────────────────────────────
#

    themex pro-colors.themeX

#
# ─── COPY TO DESTINATIONS ───────────────────────────────────────────────────────
#

    function copy_to_destination ( ) {
        cp $BUILD_PATH/karyprocolors-dark.tmTheme $1/karyprocolors-dark.tmTheme
        cp $BUILD_PATH/karyprocolors-light.tmTheme $1/karyprocolors-light.tmTheme
        cp $BUILD_PATH/karyprocolors-minimaldark.tmTheme $1/karyprocolors-minimaldark.tmTheme
    }

#
# ─── INSTALLING ON VISUAL STUDIO CODE ───────────────────────────────────────────
#

    ## vscode
    copy_to_destination $VSCODE_PATH

    ## sublime text
    copy_to_destination $SUBLIME_PATH

# ────────────────────────────────────────────────────────────────────────────────

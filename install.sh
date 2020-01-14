#!/bin/bash -
#===============================================================================
#
#          FILE: install.sh
#
#         USAGE: ./install.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Nima Saed (), nima.saed@me.com
#  ORGANIZATION:
#       CREATED: 06/10/2019 09:34:22 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

ln -sfn ${PWD}/.scripts/ ${HOME}
ln -sfn ${PWD}/.wallpaper ${HOME}
ln -sfn ${PWD}/.Xresources ${HOME}
ln -sfn ${PWD}/.zshrc ${HOME}
ln -sfn ${PWD}/.tmux.conf  ${HOME}
ln -sfn ${PWD}/.spacemacs ${HOME}
ln -sfn ${PWD}/i3/ ${HOME}/.config/
ln -sfn ${PWD}/polybar/ ${HOME}/.config/
ln -sfn ${PWD}/zathura/ ${HOME}/.config/
ln -sfn ${PWD}/termite/ ${HOME}/.config/
ln -sfn ${PWD}/rofi/ ${HOME}/.config/
ln -sfn ${PWD}/nvim/ ${HOME}/.config/
ln -sfn ${PWD}/.emacs.d/ ${HOME}/
ln -sfn ${PWD}/.colors/ ${HOME}
ln -sfn ${PWD}/.dircolors/ ${HOME}


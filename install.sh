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
#        AUTHOR: Maurits van Altvorst, nima.saed@me.com
#  ORGANIZATION:
#       CREATED: 06/10/2019 09:34:22 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

ln -sfn ${PWD}/.zshrc ${HOME}
ln -sfn ${PWD}/.tmux.conf  ${HOME}
ln -sfn ${PWD}/nvim/ ${HOME}/.config/
ln -sfn ${PWD}/alacritty/ ${HOME}/.config/
ln -sfn ${PWD}/.doom.d/ ${HOME}/


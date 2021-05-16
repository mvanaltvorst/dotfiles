#!/bin/bash -
set -o nounset                                  # Treat unset variables as an error

ln -sfn ${PWD}/emacs ${HOME}/.config/
ln -sfn ${PWD}/doom ${HOME}/.doom.d

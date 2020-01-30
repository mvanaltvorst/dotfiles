#!/bin/bash

ORG_DIR=/home/maurits/org-encrypted
REMOTE=dropbox

find $ORG_DIR | entr -r rclone sync -v $ORG_DIR $REMOTE:org


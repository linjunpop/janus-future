#!/bin/bash

function link_files {
  local PWD=`pwd`
  ln -s $PWD/dot-janus $HOME/.janus
  ln -s $PWD/vimrc.before $HOME/.vimrc.before
  ln -s $PWD/vimrc.after $HOME/.vimrc.after
  ln -s $PWD/gvimrc.after $HOME/.gvimrc.after
}

link_files
`git submodule init`
`git submodule update`

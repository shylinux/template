#!/bin/bash

[ -f ~/.ish/plug.sh ] || [ -f ./.ish/plug.sh ] || git clone ${ISH_CONF_HUB_PROXY:="https://"}github.com/shylinux/intshell ./.ish
[ "$ISH_CONF_PRE" != "" ] || source ./.ish/plug.sh || source ~/.ish/plug.sh
require miss.sh

ish_miss_prepare_compile
ish_miss_prepare_install

ish_miss_prepare_volcanos
ish_miss_prepare_learning
# ish_miss_prepare_icebergs
# ish_miss_prepare_toolkits
ish_miss_prepare_intshell
# ish_miss_prepare_contexts

# ish_miss_prepare wubi-dict
# ish_miss_prepare word-dict

# ish_miss_prepare linux-story
# ish_miss_prepare nginx-story
# ish_miss_prepare golang-story
# ish_miss_prepare redis-story
# ish_miss_prepare mysql-story

require base/cli/cli.sh
ish_ctx_cli_prepare

require misc/tmux/tmux.sh
ish_ctx_dev_tmux_prepare

require misc/git/git.sh
ish_ctx_dev_git_prepare

require misc/vim/vim.sh
ish_ctx_dev_vim_prepare

ish_miss_prepare_develop
make

ish_miss_prepare_session miss

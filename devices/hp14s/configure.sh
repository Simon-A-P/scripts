#!/bin/bash
set -ex

$HOME/dotfiles/config-groups/foundation/configure.sh

$HOME/dotfiles/config-groups/amd-processor/configure.sh
$HOME/dotfiles/config-groups/rtl8821ce/configure.sh
$HOME/dotfiles/config-groups/private/configure.sh
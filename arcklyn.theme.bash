#!/usr/bin/env bash

###
# Arcklyn Theme <https://github.com/tunnckoCore/bash-it-arcklyn>
#
# Copyright (c) 2016 Charlike Mike Reagent <@tunnckoCore> (http://www.tunnckocore.tk)
# Released under the MIT license.
###

SCM_THEME_PROMPT_DIRTY=" ${bold_red}✗${reset_color}"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓${reset_color}"
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

GIT_THEME_PROMPT_DIRTY=" ${bold_red}✗${reset_color}"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓${reset_color}"
GIT_THEME_PROMPT_PREFIX=""
GIT_THEME_PROMPT_SUFFIX=""

RVM_THEME_PROMPT_PREFIX=""
RVM_THEME_PROMPT_SUFFIX=""

VIRTUALENV_THEME_PROMPT_PREFIX=""
VIRTUALENV_THEME_PROMPT_SUFFIX=""

RBENV_THEME_PROMPT_PREFIX=""
RBENV_THEME_PROMPT_SUFFIX=""

RBFU_THEME_PROMPT_PREFIX=""
RBFU_THEME_PROMPT_SUFFIX=""

TITLEBAR="\033]0;\w\007"

function prompt_command() {
  PS1="${TITLEBAR}\n${bold_green}\u${reset_color} ${bold_blue}\w${reset_color} ${bold_white}$(scm_prompt_info)${reset_color}\n${bold_white}\t${reset_color} ${bold_blue}→${reset_color}${normal} "
}

PROMPT_COMMAND=prompt_command;

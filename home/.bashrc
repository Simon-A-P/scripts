PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1='==== \w | (${PS1_CMD1}) ====\n\$ '

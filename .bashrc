eval "$(fasd --init auto)"


alias mdaly="ssh -x mdaly04@homework.cs.tufts.edu"



# Aliases
alias ll="ls -lha"
alias l.="ls -d .*"
alias ls="ls -GCF"
alias ..="cd .."
alias ...="cd ../.."


RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
SMILEY="${WHITE}:)${NORMAL}"
FROWNY="${RED}:(${NORMAL}"
SELECT="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"

# Throw it all together
PS1="${RESET}${YELLOW}\h${NORMAL} \`${SELECT}\` ${YELLOW}>${NORMAL} "



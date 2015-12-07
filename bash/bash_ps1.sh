# Fill with minuses
# (this is recalculated every time the prompt is shown in function prompt_command):
fill="--- "

reset_style='\[\033[00m\]'
if [ -z "$VIM" ];
then status_style=$reset_style'\[\033[0;90m\]' # gray color; use 0;37m for lighter color
else status_style=$reset_style'\[\033[0;90;107m\]'
fi
prompt_style=$reset_style
command_style=$reset_style'\[\033[1;29m\]' # bold black

# Reset color for command output
# (this one is invoked every time before a command is executed):
trap 'builtin echo -ne "\033[0m"' DEBUG

function leading_line_prompt_command {
   # create a $fill of all screen width minus the time string and a space:
    let fillsize=${COLUMNS}-11
    fill=""
    while [ "$fillsize" -gt "0" ]
    do
        fill="-${fill}"
        let fillsize=${fillsize}-1
    done
    echo "${status_style}${fill} \t\n${prompt_style}"
}

function other_prompt_command {
    echo -n "$(leading_line_prompt_command)"

    bname=`basename "${PWD/$HOME/~}"`
    bname='\w'

    case "$TERM" in
    xterm*|rxvt*)
        echo "${USER}@${HOSTNAME} ${command_style}${bname} • $prompt_style"
        ;;
    *)
        ;;
    esac
}
PROMPT_COMMAND=other_prompt_command

if [ -f ~/.oh-my-git/prompt.sh ]; then
  source ~/.oh-my-git/prompt.sh
  omg_ungit_prompt=''
  omg_second_line=''
  kill -s WINCH $$ # ensure we have COLUMNS/ROWS working - fakes a resize event
  function omg_prompt_callback() {
    echo "$(other_prompt_command)"
  }
fi


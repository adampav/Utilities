reminder_cd () {
    builtin cd "$@" && { [ ! -f .cd-execute ] || sh .cd-execute >> .cd-execute.log; }
}
alias cd=reminder_cd

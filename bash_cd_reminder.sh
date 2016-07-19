reminder_cd () {
    builtin cd "$@" && { [ ! -f .cd-execute ] || ./.cd-execute | tee -a .cd-execute.log; }
}
alias cd=reminder_cd

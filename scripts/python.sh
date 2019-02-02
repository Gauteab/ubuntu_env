
alias python3='python3.7'
alias python='python3'
alias py='python'
alias p3='py'
alias pip='pip3'

# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/gaute/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/gaute/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/gaute/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/gaute/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

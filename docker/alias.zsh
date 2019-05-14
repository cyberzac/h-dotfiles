alias boot2docker-ntp='/usr/local/bin/boot2docker ssh sudo ntpclient -s -h pool.ntp.org'
alias dockerkillall='docker ps -q | xargs docker rm -f'
alias dka='dockerkillall'
 
export PATH=~/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export NVM_DIR="/Users/sd/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -f .nvmrc ]; then nvm use; fi 



shopt -s expand_aliases
# Aliases

# Shutter alias for screenshots
alias screenshot='shutter'

alias dbeaver='/usr/share/dbeaver/dbeaver'
alias synonym='dict -d moby-thesaurus'

# Shearwater specific aliases
shearwater() {
  if [[ $@ == 'rails' ]]; then
    cd '/home/nkangoh/shearwater/shearwater/rails/'
  else
    if [[ $@ == 'ember' ]]; then
      cd '/home/nkangoh/shearwater/shearwater/two/'
    else
      cd '/home/nkangoh/shearwater/shearwater/'
    fi
  fi
}

alias restore-database='rake restore_from_most_recent_saved_production_backup'

alias onedrive='sudo mount -t vboxsf OneDrive onedrive'
alias git-un='echo -e "a\n*\nq\n"|git add -i'
alias work='wunderline add --today --list shearwater'
alias work?='wunderline list shearwater'

# Ember aliases
alias et='ember test'

# Rails aliases
alias disconnect-database="sudo service postgresql restart"
alias start-worker="TERM_CHILD=1 QUEUE=* bundle exec rake environment resque:setup resque:work VVERBOSE=1"
alias rake-test='RAILS_ENV=test rake test'

# Tizen
alias tizen-web-simulator='/home/nkangoh/tizen-sdk/tools/websimulator/simulator.sh'

# Other
alias generate-tests='~/onedrive/Software\ Tools/TSLgenerator.linux'
alias brownnoise='play -n synth 60:00 brownnoise gain -1'

# Delete currently playing music
alias delete-playing="rm cmus-remote -Q | grep file | sed 's/^.....//'"

alias junit='java -cp .:/usr/share/java/junit.jar org.junit.runner.JUnitCore'
alias ll='ls -alF'
alias gtech-sdp='cd onedrive/School/Georgia\ Tech/Software\ Development\ Process/'
alias w='wunderline'

onego() {
    if [ $1 == 'school' ]; then
	cd /home/nkangoh/onedrive/School/Georgia\ Tech/;
    fi

    if [ $1 == 'books' ]; then
	cd /home/nkangoh/onedrive/Books/;
    fi
}

alias software='vim /home/nkangoh/onedrive/linux/SOFTWARE.txt'

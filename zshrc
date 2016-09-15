# Path to your oh-my-zsh installation.
export ZSH=/home/chlwang/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##########################################
#####set my own environment variables#####
##########################################
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias ll='ls -lrth --color=auto'
fi

##configure basic software and lib environment
export CWPROOT=/home/chlwang/software/cwp
export RSFROOT=/home/chlwang/software/RSF
export PATH=$PATH:./:$CWPROOT/bin:$RSFROOT/bin:/home/chlwang/software/mpi/bin:/home/chlwang/software/fftw/bin
source $RSFROOT/share/madagascar/etc/env.sh

if [ -z "LD_LIBRARY_PATH" ]; then
	LD_LIBRARY_PATH=$HOME/local/lib
else
	LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib:/home/chlwang/software/fftw/lib:/home/chlwang/software/mpi/lib:/home/chlwang/software/RSFSRC-1.7/user/espenbir/liblbfgs/lib
fi
export LD_LIBRARY_PATH


######################################
#              Alias                 #
######################################

alias rsf="cd /home/chlwang/software/RSFSRC-1.7/user/chlwang"
alias rsfsrc="cd /home/chlwang/software/RSFSRC-1.7"
alias mada="cd /home/chlwang/work/Madagascar"
alias work="cd /home/chlwang/work"
alias data="cd /media/chlwang/chlwData"
alias bp="cd /home/chlwang/norwaybackup"
alias kongull="ssh -X chenlonw@kongull.hpc.ntnu.no"
alias seis="ssh -X chenlonw@seis.ivt.ntnu.no"
alias pets="ssh -X chenlonw@pets.ivt.ntnu.no"
alias datafile="ssh -X msim@syn2211.ipt.ntnu.no" 
alias 221="ssh -Y chlwang@99.0.0.221" 
alias 219="ssh -Y chlwang@99.0.0.219" 
alias cjb="ssh -Y cjb@99.0.0.225" 

alias s="scons -Q"
alias sp="pscons"
alias sc="scons -c"
alias sl="scons lock"
alias st="scons -Q TIMER=y"
alias sv="scons view"
alias vpd="vpconvert *.vpl format=pdf"
#modified the pwd command in shell, it will automatically copy the route into clipboard
#sudo apt-get install xclip
#alias pwd="pwd|tr -d '\n'|xclip|xclip -o"
alias pwd="pwd|tr -d '\n'|xclip|pwd"
alias .="pwd"
alias gv="evince"
alias vi="rvim"
alias vim="gvim" 
#alias vim="gvim --nofork" 

#Modify the ip address for vpn
alias vpn="sudo vim /run/resolvconf/resolv.conf"

#Commands with Geeknote
alias chlGnsyncLocal="/home/chlwang/.zsh/chlGnsyncLocal"
alias chlGnsyncGlobal="/home/chlwang/.zsh/chlGnsyncGlobal"
alias chlPdfcompress="/home/chlwang/.zsh/pdfcompress"
alias chlClean="/home/chlwang/.zsh/clean"
alias chlBigClean="/home/chlwang/.zsh/cleanbig"
alias chlsougou="/home/chlwang/.zsh/chlrestartsougou"
alias chlTimer="python /home/chlwang/.zsh/timer/rest.py"
alias chlpdf2jpg="/home/chlwang/.zsh/pdf2jpg"

alias zotero="/home/chlwang/software/zotero/Zotero_linux-x86_64/zotero"
alias xterm="xterm -fa monaco -fs 13 -bg black -fg white"
alias srccjb="source /home/chlwang/Public/RSFGIT/share/madagascar/etc/env.sh"
alias srcwiktor="source /home/chlwang/Public/WiktorBitbucket/WiktorBitbucketBin/share/madagascar/etc/env.sh"
alias srclocal="source $RSFROOT/share/madagascar/etc/localenv.sh"
alias srcchlw="source /home/chlwang/Backup/RSF/share/madagascar/etc/env.sh"

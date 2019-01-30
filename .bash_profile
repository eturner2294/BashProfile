echo "Path is " $USER_HOME

#clone a repository. To use "clone repoURL"
alias clone="funcClone"

function funcClone(){
	git clone "$1"
}

#pull branch from repo. 
alias pull="git pull"

#git fetch from repo
alias fetch="git fetch"

#Push staged commits
alias push="git push"

#Set the upStream for the branch. Usage -> "upstream remoteName trackingURL"
alias upstream="funcUpStream"

function funcUpStream(){
	git push --set-upstream "$1" "$2"
}

#Show current status. 
alias status="git status"

#Show the log. 
alias logAll="git log"

#Checkout to another branch. Usage "goto branchName"
alias goto="funcGoto"

function funcGoto(){
	git checkout "$1"
}

#Stop a merge in progress. 
alias stopMerge="git merge --abort"

#Remove all changes at current, reset back to the current head. 
alias back="git reset --hard"

#Remove all changes at current, reset back to the current head, remove untracked files. 
alias wipe="back && git clean -df"

#list all current branches
alias listBranch="git branch"

#delete a branch. Usage -> "deleteBranch branchName"
alias deleteBranch="funcDelBranch"

function funcDelBranch(){
	git branch -d "$1"
}

#Forcefully delete a branch. Use if deleteBranch fails and YOU ARE SURE you wish to delete. 
#Usage -> "forceDelete branchName"
alias forceDelete="funcForceDelete"

function funcForceDelete(){
	git branch -D "$1"
}

#display the date of the most recent commit, the author, and the commit message. 
alias log="git log --pretty=\"format:%cd %cn %s\" -1"

#Open AgentRansack, useful tool for search. 
alias ransack="\"/d/Program Files/AgentRansack/AgentRansack.exe\""

#Open Inkscape, tool for creating vector images. 
alias inkscape="\"/d/Program Files/Inkscape/inkscape.exe\""

#Open DB Browser for SQLite, the view the contents of a SQLite database. This is useful when developing android applications, which use SQLite databases to store data. 
alias viewDb="\"/d/Dev/DB Browser for SQLite.exe\""

#Set up the config for usage with github.
alias gitHubSetup="funcGitHubSetup"

function funcGitHubSetup(){
	git config --global user.name "eturner"
	git config --global user.email "eturner2294@gmail.com"
}

#view current git config
alias config="git config --list"

#Start Intellij
alias ij="\"/d/Program Files/IntelliJ/IntelliJ IDEA 2018.2.3/bin/idea64.exe\""

#Start Android Studio
alias android="\"/d/Program Files/AndroidStudio/bin/studio64.exe\""

#Start basic notepad
alias note="\"%windir%\system32\notepad.exe\""

#start notepad++
alias notepad="\"/d/Program Files/Notepad++/notepad++.exe\""

#start atom
alias atom="\"/c/Users/eturn/AppData/Local/atom/atom.exe\""

#start PHPStorm
alias storm="\"/d/Program Files/PHPStorm/PhpStorm 2018.3.3/bin/phpstorm64.exe\""
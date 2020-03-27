
export CLICOLOR=1
export PS1="\[\033[39m\]Cows\[\033[96m\]Taste\[\033[95m\] Really Bad\[\033[96;1m\]\w\[\033[m\]\$ "
export LSCOLORS=hxfxcxdxbxegedabagacad
#exfxcxdxbxegedabagacad
alias folders='ls -d */'
alias compile='g++ -o'
alias list='find . -type f -name'
delete(){
mv "$1" "$HOME/.Trash";
}
alias jtoggle1='unset CLASSPATH'
alias jtoggle='export CLASSPATH="../lib/*"'
jfile()
{
        javac *.java
        jar cf "../lib/lib.jar" *.class
        rm *.class
}

vinstall()
{
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \;
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        #:PluginInstall
        #:PlugInstall
}

mvcd(){
declare -a LocalArray
num=0
for arg; do
        LocalArray[$num]=$arg
        ((num++))
done
num=$((num - 1))
if  [ "$num" -gt "0" ] && test -e "${LocalArray[$num]}"; then
        for ((i = 0; i < $num; i++));
        do
                if  test -f ${LocalArray[$num]}; then
                        echo "${LocalArray[$num]} is a file"
                        break
                fi
                mv ${LocalArray[i]} ${LocalArray[$num]}
        done
        cd ${LocalArray[$num]}
else
        echo "Directory does not exist"
fi
}


# os detection
os=uname -a | grep -E "(Darwin)|([uU]buntu)|([dD]ebian)" -o | head -1

if $os == "Darwin"; then
	brew tap cjbassi/gotop
	brew install bat fd the_silver_searcher gotop neovim mawk exa nmap tldr hub fzy grv
elif $os == "*buntu" || $os == "*ebian"; then
	echo "coming soon"
fi

#if go is installed
if hash go; then
		go get github.com/cespare/reflex
		go get -u /github.com/evilsocket/shellz/cmd/shellz
	else echo "please install go first to install reflex and shellz"
fi


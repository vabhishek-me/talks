# Getting started with tmux and vim

```
 ___ _    _   _  ____ ____  
|_ _| |  | | | |/ ___|  _ \ 
 | || |  | | | | |  _| | | |
 | || |__| |_| | |_| | |_| |
|___|_____\___/ \____|____/ 
                            
```

## VIM

### Installation

Link : https://vi.stackexchange.com/questions/10817/how-can-i-get-a-newer-version-of-vim-on-ubuntu

**Ubuntu:**

```bash
sudo add-apt-repository ppa:jonathonf/vim;
sudo apt update;
sudo apt install vim;
```

**Mac: (using homebrew)**
```bash
brew install vim —with-override-system-vi
```

### Pathogen Package Manager
Install to ~/.vim/autoload/pathogen.vim. Or copy and paste the following into your terminal/shell:

```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Now any plugins you wish to install can be extracted to a subdirectory under ~/.vim/bundle, and they will be added to the 'runtimepath'. Observe:

```bash
cd ~/.vim/bundle && \
git clone https://github.com/tpope/vim-sensible.git
```

### Resources

 - `$ vimtutor`
 - [Vim Meetups by thoughbot - youtube](https://www.youtube.com/playlist?list=PL8tzorAO7s0jy7DQ3Q0FwF3BnXGQnDirs)
 - [Practical Vim - Drew Neil](https://pragprog.com/book/dnvim2/practical-vim-second-edition)

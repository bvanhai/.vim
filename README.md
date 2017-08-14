# My .vim directory

## Usage

- Compile `vimproc` after cloning this repository:

```bash
$ cd $HOME/.vim/bundle/vimproc.vim
$ make
```

- Update Plugins:

```bash
# Change directory to where you cloned the '.vim':
$ cd ~/.vim

# Update pathogen (manager plugins):
$ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


# Update Plugins:
$ ruby ./update.rb
```

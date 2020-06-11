# I do dotfiles!

Config files for zsh, bash, git, completions etc. to set up a system the way I like it. ~/.jogendra

<img width="937" alt="Jogendra's Iterm2" src="https://user-images.githubusercontent.com/20956124/83674658-ab6f7380-a5f5-11ea-92f6-5ae39d78836b.png">

**NOTE**: The dotfiles is configured for MacOS machine. Most of the things expected to work on all machines running unix based operating systems.

<img width="28%" align="right" alt="" src="https://user-images.githubusercontent.com/20956124/84314457-b55d1d80-ab85-11ea-9bed-6009dcb8be18.png">

## Components

I went through many dotfiles before deciding structure of this dotfiles, I found [holman](https://twitter.com/holman) way the best, Thanks to [holman dotfiles](https://github.com/holman/dotfiles). What he used is called _Topical organization_ which is organizing the different parts of dotfiles in directories, each entitled to a specific subject. By topical organization, all AppleScripts go inside the `AppleScript/` directory, git settings are in a `git/` directory, and so on. Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "vscode" — you can simply add a vscode directory and put files in there.

There's a few special files in the hierarchy:

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `installers/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `installers/bootstrap`.

## Install

Run:

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`, which sets up a few paths that'll be different on your particular machine.

## Pimp my Terminnal

I will soon be writing detailed blog post on how my iTerm is customized.

<img width="1044" alt="gitlazy" src="https://user-images.githubusercontent.com/20956124/83674781-b5917200-a5f5-11ea-84e7-02acf5552c70.png">

<img width="937" alt="gotop" src="https://user-images.githubusercontent.com/20956124/83691158-6a845880-a60f-11ea-90c5-38362de92b3f.png">

## License
This repository is under MIT License. Check [LICENSE](LICENSE) file for more information.

dotfiles
========
![ss01](/images/ss_01.png)

This repository is my dotfiles.

### NeoVim
- iceberg: favorite color scheme
- Telescope.nvim: fzzey finder
- defx.nvim: Filer
- indent.nvim
- lualine.lua
     
### fish
- starship: for prompt on terminal.
- Fonts
    - hack nerd font
    - ricty for powerline

### Others
- iTerm2: famous terminal emurator with iceberg color scheme
- tmux: Let color of inactive panes be shade
- lsd: Luxury ls command

Files:
-------------
    .
    ├── .Rprofile
    ├── .config
    │   ├── fish
    │   ├── nvim
    │   └── starship.toml
    ├── .gitignore
    ├── .latexmkrc
    ├── .tmux.conf
    ├── .zshrc
    ├── README.md
    ├── brew
    │   └── brewlist.txt
    └── shellscript
        ├── cafd.sh
        ├── ide
        └── install_dotfiles.sh

Usage:
-------------
Link symbolics each files and folders by the floowing command:
```bash
git clone git@github.com:tayatoshi/dotfiles.git
cd shellscript
chmod 777 install_dotfiles.sh
./install_dotfiles.sh
```

Note:
-------------
I have not yet set up automatic installation of packages in Homebew .


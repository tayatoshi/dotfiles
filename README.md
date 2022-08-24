dotfiles
========
![ss01](/images/ss_01.png)

This repository is my dotfiles.

### NeoVim
The package manager I use is Packer.
- tokyonight(storm): favorite color scheme
- Telescope.nvim: fzzey finder
- fern: Filer
- lualine.lua: cool status line
- barbar.nvim: cool tab line
- indent.nvim
     
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
cd dotfiles/shellscript
chmod 777 install_dotfiles.sh
./install_dotfiles.sh
```

Note:
-------------
I have not yet set up automatic installation of packages in Homebew .


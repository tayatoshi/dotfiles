dotfiles
========
![ss01](/images/ss_01.png)

This repositry is my dotfiles.
- NeoVim
    - iceberg: favorite color scheme
    - plugins
        - Telescope.nvim,
        - defx.nvim
        - 
- iTerm2: famous terminal emurator
- fonts
    - hack nerd font
    - ricty for pwerline
- Homebrew: famous package manager
- htop: Luxury top command
- lsd: Luxury ls command
- lazygit:
- lazydocker:
- Git: You don't have to say it
- fish: smart shell
- starship: for prompt on terminal.
- tmux

Files:
-------------
<pre>
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
</pre>

Usage:
-------------
Link symbolics each file and folders by the floowing command:
```bash
git clone git@github.com:tayatoshi/dotfiles.git
cd shellscript
chmod 777 install_dotfiles.sh
./install_dotfiles.sh
```

Note:
-------------
I have not yet set up automatic installation of packages in Homebew .


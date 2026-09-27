```sh
brew install stow neovim fzf zoxide zsh-autosuggestions zsh-syntax-highlighting zsh-completions fd ripgrep bat
brew install --cask font-jetbrains-mono-nerd-font
cp -n template.zshrc zsh/.zshrc
cp -n template.zshenv zsh/.zshenv
stow -t "$HOME" kitty zsh nvim
mkdir -p "$HOME/.config/herdr"
cp herdr/.config/herdr/config.toml "$HOME/.config/herdr/config.toml"
```

## Kitty

Настройки находятся в [`kitty/.config/kitty/kitty.conf`](kitty/.config/kitty/kitty.conf). Stow размещает их по пути `~/.config/kitty/kitty.conf`.

- Шрифт: JetBrains Mono Nerd Font Mono, 14 pt.
- Панель вкладок расположена снизу.
- Между содержимым терминала и панелью вкладок оставлен отступ 6 pt.
- Вкладки прямоугольные, без разделителей Powerline и эффекта затухания по краям.
- Все вкладки имеют одинаковую ширину: заголовки дополнены пробелами до 24 знакомест и обрезаются при превышении этой длины. При одной вкладке панель скрывается автоматически.
- Вкладки разделены жирной прерывистой вертикальной чертой `┋`.

### Тема

Установлена тема Catppuccin Mocha (`kitty/.config/kitty/current-theme.conf`). Цвета вкладок берутся из темы.

### Пользовательские сочетания клавиш

Пользовательские сочетания клавиш не заданы.

### Другие настройки

Других пользовательских настроек пока нет.

## Zsh

Требуется [Oh My Zsh](https://ohmyz.sh/).

[`template.zshrc`](template.zshrc) и [`template.zshenv`](template.zshenv) — основа локальных файлов `zsh/.zshrc` и `zsh/.zshenv`; оба исключены из Git.

- Oh My Zsh загружает плагины `git`, `sudo`, `history-substring-search`, `zoxide`, `fzf`, `zsh-autosuggestions` и `zsh-syntax-highlighting`.
- Тема `dotfiles` показывает каталог, ветку и состояние Git, а также цветной символ приглашения.
- `z` переходит в часто посещаемый каталог через Zoxide, `zi` открывает интерактивный выбор каталога.
- `n` запускает `nvim`.
- FZF добавляет поиск по истории (`Ctrl+R`), выбор файла (`Ctrl+T`) и каталога (`Alt+C`). Стрелки вверх и вниз ищут в истории команды с уже введённым текстом.
- Дополнительные автодополнения берутся из `zsh-completions`; остальные внешние плагины подключаются через файлы в `zsh/.config/oh-my-zsh/plugins/`.
- Шаблон добавляет каталог Go в `PATH`. Остальные личные пути и интеграции остаются в локальном `.zshrc`.

## Neovim

Настройки находятся в `nvim/.config/nvim` и устанавливаются по пути `~/.config/nvim`.

- Основаны на LazyVim.
- Тема: Catppuccin Mocha; строка состояния использует палитру Catppuccin.
- `lazy-lock.json` фиксирует версии плагинов.
- Иконки требуют Nerd Font из команды установки выше.
- Приветственная надпись задаётся в `lua/plugins/dashboard.lua`.

Для Verilog и SystemVerilog после установки плагинов выполните в Neovim:

```vim
:MasonInstall verible
:TSInstall systemverilog
```

## Herdr

Настройки находятся в `herdr/.config/herdr/config.toml` и копируются по пути `~/.config/herdr/config.toml`.

- Тема: terminal, использует цвета терминала.

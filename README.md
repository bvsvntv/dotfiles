<h3 align="center">~/dotfiles</h3>

### Setup

Ensure that you have installed following prerequisites on your system:

```bash
sudo apt-get install xorg git stow i3 i3status i3lock dmenu feh flameshot lxappearance gcc xclip vim pulseaudio
```

- Clone the dotfiles repository into your `$HOME`directory.

  ```bash
  git clone https://github.com/iambasantarai/dotfiles.git
  ```

- Navigate to the `dotfiles` directory

  ```bash
  cd dotfiles
  ```

- Use GNU stow to create the symlinks
  ```bash
  stow .
  ```

### Others
- [CopyQ](https://hluk.github.io/CopyQ/)

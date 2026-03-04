# My nvim config
Modularized fork of kickstart nvim, with a few custom keybinds. 

## FOR ARCH:
in future, make sure to install stuff that Mason needs to install all the packages.
```bash
# eg:
sudo pacman -S --needed unzip nodejs npm curl git tar gzip
```
also for whatever reason the name of a config file required by treesitter is `.config` on arch rather than `.configs` on macos.


## Custom keybinds

| Name                 | Keybind            | 
| -------------------- | -------------------|
| Accept autocomplete  |  `<C-CR>`/`<S-CR>` |
| Goto manual <br><br> |  `gm`              |
| Change theme<br>     |  `ct`              |
| Toggle zen mode      |  `<leader>zm`      |
| Toggle reading mode  |  `<leader>rm`      |

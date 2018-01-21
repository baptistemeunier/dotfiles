
# Pense bête pour mes instalations arch linux (lightdm, i3)
## Lightdm install theme

	yaourt -S lightdm-webkit2-greeter lightdm-webkit-theme-litarvan
Editer `/etc/lightdm/lightdm-webkit.conf` et changer `webkit-theme` en `litarvan`

	sudo systemctl start lightdm
	sudo systemctl enable lightdm (Si tout est ok)
Source : https://github.com/Litarvan/lightdm-webkit-theme-litarvan

## Installation i3
	yaourt -S i3-gaps i3blocks i3status i3lock-color-git i3lock-fancy-git polybar
	
## Barre polybar
![Preview of state bar](https://image.ibb.co/dt7Ogw/statebar.png)

## Packet indispensable 
	yaourt -S openssh thunar urxvt-unicode redshift deepin-screenshot feh playerctl redshift
AUR :

	yaourt -S vivaldi-snapshot spotify


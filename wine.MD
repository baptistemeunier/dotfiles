## Détail pour les logiciels windows sous wine

### Basic install

Installation des paquets de base

	sudo yaourt -S wine winetricks wine-mono wine_gecko lib32-alsa-lib lib32-alsa-plugins lib32-libxml2 lib32-mpg123 lib32-giflib lib32-libpng lib32-gnutls lib32-pulse
	# Paquet nvidia
	sudo yaourt -S lib32-mesa-libgl

Nouveau prefix wine

	WINEPREFIX=~/.dir WINEARCH=win32 wineboot

### Osu

	WINEPREFIX=~/.osu WINEARCH=win32 wineboot
	winetricks dotnet40 ie8 gdiplus
	wget 'https://m1.ppy.sh/r/osu!install.exe'
	WINEPREFIX=~/.osu wine osu\!install.exe

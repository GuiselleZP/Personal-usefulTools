1. **Solution to public key error**

	It occurs when trying to update Debian, with the command:
	```
	sudo apt-get update
	```
	Error example:
	```
	W: Error de GPG: http://ppa.launchpad.net precise Release: Las firmas 
	siguientes no se pudieron verificar porque su llave pública no está 
	disponible:	NO_PUBKEY 1F3045A5DF7587C3
	```
	To solve it, enter the following command in the Terminal:
	```
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 
	1F3045A5DF7587C3
	```
1. **Add plugins to Vim**

	1. Acces the folder where the file to be modified is, use this command:
	```
	cd ~/.vim
	```
	1. Modify the file 'plugins.vim'
	```
	vim plugins.vim
	```
	1. Type the word 'Plugin', leave a space and in quotes add the repository
	extension in GitHub or its link. For example:
	```
	Plugin 'cocopon/iceberg.vim'
	```
	1. Execute the command from vim:
	```
	:PluginInstall
	```
	Or exit the editor and execute the command:
	```
	vim + PluginInstall

	```

1. **Start Turtl from the Terminal**

	Use the command:
	```
	/opt/turtl/turtl
	```

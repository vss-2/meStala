#!/bin/bash

function printar {
	tput clear
	tput bold
	printf("$(L)")
}

function WGET {
	<(wget "$2" -O "$3" --header "$4" 2>&1)
}

function DPKG {
	dpkg --vextract "$2" "$3" | pv -elnps $(dpkg -c "$2" | wc -l) 0 0 0
}

function InstalarOpera {
	CCC "Instalando Navegador Opera\n"
	mkdir -p /tmp/code
	WGET "Opera Browser" http://deb.opera.com/opera-stable/ /temporario/opera.deb
	DPKG "Opera Browser" /temporario/opera.deb /temporario/opera
	CP "Opera Browser" /temporario/opera/usr/* $HOME/.local/bin
	printar "Opera instalado com sucesso! "
}

INIT
  printar "Eae man/mana estou torcendo que isso funcione, \n então escolhe uma opção abaixo que eu vou torcer pra rodar\n não tenta trollar senão num funciona :)"


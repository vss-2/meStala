function InstalarOpera{
	CCC "Instalando Navegador Opera\n"
	mkdir -p /tmp/code
	WGET "Opera Browser" http://deb.opera.com/opera-stable/ /temporario/opera.deb
	DPKG "Opera Browser" /temporario/opera.deb /temporario/opera
	CP "Opera Browser" /temporario/opera/usr* $HOME/.local/bin
}

INIT
  CCC "Eae man/mana estou torcendo que isso funcione, \n então escolhe uma opção abaixo que eu vou torcer pra rodar\n não tenta trollar senão num funciona :)"

#! /bin/bash
echo MENU
echo 1 Saber cuantos ficheros de dispositivo tipo caracter hay en dev
echo 2 Ver cuales son y lo que ocupan los perfiles de usuario
echo 3 Crear informe con esa informacion
echo 4 salir
echo "Introduce una opcion"
read opcion
echo "La opcion seleccionada es $opcion"
case $opcion in

1) echo "Vamos a ver los ficheros que hay" 
	ls -lrt /dev/ | cut -c 1 | grep "c" | wc -l
			;;
2) echo "2 vamos a ver cuales son y lo que ocupan los perfiles de usuario"
	cat /etc/passwd |wc -c
	    ;;
3) echo "3 Creamos un informe con la informacion"
		 ls -lrt /dev/ | cut -c 1 | grep "c" | wc -l >> informefichero.txt 
		cat /etc/passwd | wc -c  >> informefichero.txt
		;;
4) echo "4 Salir"
	;;
esac 

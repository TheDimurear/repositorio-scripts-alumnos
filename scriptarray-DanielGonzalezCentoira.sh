#Script que crea dos arrays, uno con el nombre detus 6  mejores amigos y otro con sus telefonos#!bin/bash
#DanielGonzálezCentoira
clear
contador=1
declare -a usuario=( Sergio Jorge Juan Antonio David Alvaro )
declare -a numero=( 669 848 776 565 443 221 )
for valor in ${usuario[*]}
do
	echo "El usuario $contador vale $valor"
	contador=`expr $contador + 1`
done
contador=1
for valor in ${numero[*]}
do
	echo "El numero $contador vale $valor"
	contador=`expr $contador + 1`
done

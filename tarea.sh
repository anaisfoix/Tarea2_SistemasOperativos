#!/bin/bash

#Francisco Munoz Alarcon 20.242.456-2
#Anais Foix Monardes 20.834.761-6

if [[ $# -eq 4 ]];then
	
	archivo=$(find / -user $2 -name $1)
	
	if [[ $archivo = "" ]];then
		echo "Error el archivo ingresado no se encuentra"
	 
	else
		echo "El archivo fue encontrado se procede a realizar el cambio"
		opcion=$3
		echo $opcion
		if [[ $opcion = "-p" ]]; then
			chmod $4 Modificaarchivo.sh
		elif [[ $opcion = "-d" ]]; then
			chown $4 Modificaarchivo.sh
		elif [[ $opcion = "-g" ]]; then
			chgrp $4 Modificaarchivo.sh
		else
			echo "Opcion no valida"
		fi
		
	fi
else
	echo "No hay parametros suficientes"
fi

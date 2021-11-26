#!/bin/bash

#Francisco Munoz Alarcon 20.242.456-2
#Anais Foix Monardes 20.834.761-6

if [[ $# -eq 4 ]];then
	
	archivo=$(find / -user $2 -name $1)
	
	if [[ $archivo= "" ]];then
		echo "Error el archivo ingresado no se encuentra"
	 
	else
		echo "El archivo fue encontrado se procede a realizar el cambio"
		opcion=$(ls -l testing | awk '{print $3}')
		echo "Opcion ingresada: "opcion
		if [[ $opcion = '-p' ]]
			chmod 
		elif [[ $opcion = '-d' ]]
			chown nuevoUsuario /home/Tarea2_SistemasOperativos/tarea.sh
		elif [[ $opcion = '-g' ]]
			chgrp 
		else
			echo "Opcion no valida"
		fi
		
	fi
else
	echo "No hay parametros suficientes"
fi

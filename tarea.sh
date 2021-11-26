#!/bin/bash

#Francisco Munoz Alarcon 20.242.456-2
#Anais Foix Monardes 20.834.761-6

if [[ $# -eq 4 ]];then
	
	archivo=$(find / -user $2 -name $1)
	
	if [[ $archivo="" ]];then
		echo "Error el archivo ingresado no se encuentra"
	 
	else
		echo "El archivo fue encontrado se procede a realizar el cambio"
	fi
else
	echo "No hay parametros suficientes"
fi

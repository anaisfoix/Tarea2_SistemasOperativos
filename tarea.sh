#!/bin/bash

#Francisco Munoz Alarcon 20.242.456-2
#Anais Foix Monardes 20.834.761-6

#Se evalua si los parametros se ingresaron de buena manera
if [[ $# -eq 4 ]];then
	
	#Se busca el archivo por medio de su nombre y su usuario
	archivo=$(find / -user $2 -name $1)
	
	#Si el archivo no se encuentra se retorna por pantalla que no esta disponible
	if [[ $archivo = "" ]];then
		echo "Error el archivo ingresado no se encuentra"

	#Si el archivo se encontro	 
	else
		echo "El archivo fue encontrado se procede a realizar el cambio"
		#Se evalua cual es el parametro dado
		opcion=$3
		echo $opcion
		
		#Cambia los permisos del archivo 
		if [[ $opcion = "-p" ]]; then
			chmod $4 $1
		
		#Cambia el dueño del archivo
		elif [[ $opcion = "-d" ]]; then
			chown $4 $1
		
		#Cambia el grupo del archivo
		elif [[ $opcion = "-g" ]]; then
			chgrp $4 $1
		
		#Si no se cumple ninguno de los parametros
		#La opcion no es valida
		else
			echo "Opcion no valida"
		fi
		
	fi
#Si no se ingresan todos los parametros pedidos
#Se retorna un mensaje de que no posee parametros suficientes para funcionar
else
	echo "No hay parametros suficientes"
fi

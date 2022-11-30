#!/bin/bash

# Limpio el archivo
> Respuesta.txt
# Variables
file='Ciudades.txt'
base='https://wttr.in/'
format='?format=3'
# Bucle para leer el archivo
while read line; do
    # Obtengo la ciudad de la linea (y remplazo espacios por -, para evitar errores)
    city=$(echo $line | tr ' ' '-')
    # Obtengo el clima de la ciudad via cURL
    curl $base$city$format >> Respuesta.txt
done < $file

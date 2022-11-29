#!/bin/bash

file='Ciudades.txt'
while read line; do
    curl --request GET "https://wttr.in/$line?format=3" >> Respuesta.txt
done < $file  

read -p "Presiona cualquier tecla para cerrar la terminal..." -n1 -s
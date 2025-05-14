#!/bin/bash
while true; do
  echo "1) Mostrar fecha y hora"
  echo "2) Comprobar si un archivo existe"
  echo "3) Salir"
  read -p "Elige una opción: " option

  case $option in
    1) date ;;
    2) read -p "Introduce el archivo: " file
       [ -e "$file" ] && echo "Existe" || echo "No existe" ;;
    3) echo "Saliendo..."; break ;;
    *) echo "Opción no válida." ;;
  esac
done

#Per què no utilitzes les estructures que es van treballar a teoria per aquests exercicis en concret?

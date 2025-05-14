#!/bin/bash
echo "Usuarios con mayúsculas:"
grep '^[^:]*[A-Z]' /etc/passwd | cut -d: -f1

while true; do
  read -p "Introduce un usuario válido: " username
  # Què fa l'ordre id?
  if id "$username" >/dev/null 2>&1; then
    id "$username"
    break
  else
    echo "Usuario no válido."
  fi
done

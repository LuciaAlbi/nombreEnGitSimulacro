#!/bin/bash

# Función para calcular el costo de una llamada
calcular_costo() {
  costo=$1
  llamadas=$2
  costo_total=$((costo + llamadas * 2))
  echo $costo_total
}

# Preguntamos al usuario cuántas llamadas hará
echo "¿Cuántas llamadas vas a realizar?"
read llamadas

# Calculamos el costo de cada tarifa
tarifa_1=100
tarifa_2=$((50 + llamadas))
tarifa_3=$(calcular_costo 20 $llamadas)

# Mostramos al usuario cuál es la tarifa más barata
if [ $tarifa_1 -lt $tarifa_2 ] && [ $tarifa_1 -lt $tarifa_3 ]; then
  echo "La tarifa 1 es la más barata con un costo de $tarifa_1€"
elif [ $tarifa_2 -lt $tarifa_1 ] && [ $tarifa_2 -lt $tarifa_3 ]; then
  echo "La tarifa 2 es la más barata con un costo de $tarifa_2€"
else
  echo "La tarifa 3 es la más barata con un costo de $tarifa_3€"
fi

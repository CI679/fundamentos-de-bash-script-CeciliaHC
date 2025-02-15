#!/bin/bash
#Tipos de variables: Universal -> Número, Bool o una cadena de texto
n1=10 #correcto
#n1 = 10 incorrecto
echo "EL valor de n1 es $n1"

#Estructuras de control condicionales
#Operadores condicionales -eq (==), -ne (!=), -gt (>), -lt (<), -ge (>=), -le (<=)
if [[ $n1 -gt $n2 ]]; then
    echo "La sentencia es verdadera $n1 $n2"
else
    echo "La sentencia es falsa $n1 $n2"
fi

ls

#Todo programa regresa un valor, si es exitoso es 0 
res=$?
echo "El resultado de la ejecución es $res"

if [[ $res -eq 0 ]]; then
    echo "La sentencia se ejecutó correctamente"
else
    echo "La sentencia falló"
fi

# Operadores manipular archivos
# -e Si un archivo o carpeta existe
# -d si es una carpeta
# -r -w -x sus permisos leer escribir ejecutar
# -s tiene tamaño mayor a cero (contiene algo)

file="./file-demo"

if [ -s $file ]; then
    echo "El archivo contiene algo"
else
    echo "El archivo esta vacio"
fi

# Operadores logicos AND (&&) OR (||)

if [ -r $file ] && [ -x $file ]; then
    echo "El archivo se puede leer y ejecutar"  
else 
    echo "El archivo no se puede leer ni ejecutar"
fi

# Estructura de control case

# $ = array donde $# ($1, $2, $3, ..., $n) -h hola 
case $1 in 
	hola )
		echo "Bienvenido"
	;;
	adios )
		echo "Adios"
	;;
	*)
		echo "No entiendo lo que dices"
	;;
esac

# Estructuras iterativas

#while
user=""
while [[ $user != "admin" ]]; do
	read -p "cual es tu usuario?" user
done

#for

for i in {1..5}; do
	echo "el numero es $i"
done

for ((i=0; i<5; i++)); do
	echo "* el numero es $i"
done

invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do
	echo "Hola $invitado"
done

# Funciones

suma(){
	echo "Hola desde la función sumar."
}

resta(){
	echo $(( $1 - $2 ))
}

suma
total=$(resta 9 4)
echo "el total es $total"
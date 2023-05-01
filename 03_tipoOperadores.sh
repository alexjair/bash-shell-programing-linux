# ! /bin/bash
# Programa para revisar los tipos de operadores
# Autor: Alexander Jair Rojas - alexjair@gmail.com

numA=10
numB=4

echo "-- Operadores Aritmeticos --"
echo "Numeros: A=$numA y B=$numB"
echo -e
echo "Sumar A + B =" $((numA + numB))
echo "Resta A - B =" $((numA - numB))
echo "Multi A * B =" $((numA * numB))
echo "Divid A / B =" $((numA / numB))
echo "Resid A % B =" $((numA % numB))


echo -e "\n-- Operadores Relaciones --"
echo "Numeros: A=$numA y B=$numB"
echo -e
echo "A .> B =" $((numA > numB))
echo "A .< B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo -e "\n-- Operadores Asignacion: --"
echo "Numeros: A=$numA y B=$numB"
echo -e
echo "Sumar A += B" $((numA += numB))
echo "Resta A -= B" $((numA -= numB))
echo "Multi A *= B" $((numA *= numB))
echo "Divid A /= B" $((numA /= numB))
echo "Resid A %= B" $((numA %= numB))

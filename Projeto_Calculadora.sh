#!/bin/bash
#comandos
chmod +x calculadora.sh
chmode 744 calculadora.sh
./calculadora.sh
#!/bin/bash
 # Solicita o primeiro número

 read -p "Digite o primeiro número: " num1

 # Exibe as opções de operação

 echo "Escolha o número do operador:"
 echo "1 - Somar"
 echo "2 - Subtrair"
 echo "3 - Multiplicar"
 echo "4 - Dividir"
 read -p "Digite a opção desejada (1/2/3/4): " operador

 # Solicita o segundo número 

 read -p "Digite o segundo número: " num2

 # Executa a operação de acordo com a escolha

 if [ $operador -eq 1 ]; then
 resultado=$(echo "scale=2; $num1 + $num2" | bc)
 echo "O resultado de $num1 + $num2 é = $resultado"
 elif [ $operador -eq 2 ]; then
 resultado=$(echo "scale=2; $num1 - $num2" | bc)
 echo "O resultado de $num1 - $num2 é = $resultado"
 elif [ $operador -eq 3 ]; then
 resultado=$(echo "scale=2; $num1 * $num2" | bc)
 echo "O resultado de $num1 * $num2 é = $resultado"
 elif [ $operador -eq 4 ]; then
 if [ $num2 -eq 0 ]; then
 echo "Erro: Divisão por zero não é permitida."
 else
 resultado=$(echo "scale=2; $num1 / $num2" | bc)
echo "Oresultado de $num1 / $num2 é = $resultado"
fi
else
echo "Operação inválida."
fi

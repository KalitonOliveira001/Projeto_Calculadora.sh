# Projeto_Calculadora.sh
# 🧮 Calculadora Simples em Shell Script

Este projeto é uma **calculadora de linha de comando** feita em **Shell Script** (`.sh`). O programa permite que o usuário escolha uma operação matemática básica entre dois números: soma, subtração, multiplicação ou divisão.

## 📋 Funcionalidades

- Recebe dois números do usuário com `read`
- Permite escolher a operação desejada:
  - 1: Soma
  - 2: Subtração
  - 3: Multiplicação
  - 4: Divisão
- Utiliza `bc` para realizar cálculos com casas decimais
- Verifica divisão por zero
- Exibe o resultado com `echo`

## 🖥️ Código principal (`calculadora.sh`)

```bash
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
    echo "O resultado de $num1 / $num2 é = $resultado"
  fi
else
  echo "Operação inválida."

fi

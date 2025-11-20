read -p "Digite a temperatura em Celsius: " tempCelsius
tempFahrenheit=$(echo "($tempCelsius * 9/5) + 32" |bc)
echo "$tempCelsius ºC em Fahrenheit é $tempFahrenheit"
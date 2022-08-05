var celicusTemp: Double = 30.2

func convertCelciusToFarenheight(temp: Double) -> Double {
    return temp * 9 / 5 + 32
}

print("The celcius temperature is \(celicusTemp)° and Farenheight is \(String((convertCelciusToFarenheight(temp: celicusTemp))))°")

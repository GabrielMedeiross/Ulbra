/*valores*/
function cv() {
    const sexo = document.getElementById("sexo")
    var altura = document.getElementById("altura")
    var peso = document.getElementById("peso")
    peso = (peso.value.toString().replace(',', '.'))
    altura = (altura.value.toString().replace(',', '.'))
    var result
    result = parseFloat(peso)/(parseFloat(altura)*parseFloat(altura))
    if (altura < 0 || peso < 0) {
        result = `Dados Inválidos`
    }else if(result < 18.5) {
        result = `IMC ${result.toFixed(2)} - Abaixo do peso ideal`
    } else if (result < 25) {
        result = `IMC ${result.toFixed(2)} - Peso ideal`
    } else if (result < 30) {
        result = `IMC ${result.toFixed(2)} - Acima do peso ideal`
    } else {
        result = `IMC ${result.toFixed(2)} - Obesidade`
    }
    document.getElementById("result").innerHTML = result;
}

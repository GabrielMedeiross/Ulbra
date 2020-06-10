/*valores*/
function cv() {
    var numeros = document.getElementById("numeros")
    numeros = numeros.value.replace(/ /g, '')
    numeros = numeros.split(",")
    const maior = Math.max(...numeros)
    document.getElementById("result").innerHTML = maior;
}

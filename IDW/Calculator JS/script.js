/*valores*/
function cv(v) {
    v=="c"?calc.input.value="":calc.input.value += v;
}

/*faz o calculo do input*/
function resultado(){
    calc.input.value = eval(calc.input.value);
}

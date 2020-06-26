const MINUS = "abcdefghijklmnopqrstuvwxyz";
const MAIUS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const NUM = "0123456789";
const ESPE = "@#$%/";

const rnd =(n) =>Math.floor(Math.random()*n);

function constroiSenha(){
    const quantidade = Number(document.getElementById("quantidadeSenha").value);
    const tamanho = Number(document.getElementById("tamanhoSenha").value);
    const temNumeros = document.getElementById("temNumeros").checked;
    const temEspeciais = document.getElementById("temEspeciais").checked;

    let digitos = MINUS + MAIUS;    
    if(temNumeros)
        digitos += NUM;
    if(temEspeciais)
        digitos += ESPE;

    let senhas = "";    
    for(let x=0;x<quantidade;x++){           
        senhas += geraSenha(tamanho, digitos) + " ";
    } 
    document.getElementById("resultado").innerText = senhas;  
}

function geraSenha(tamanho, dicionario){    
    let str = "";    
    for(let x=0;x<tamanho;x++){               
        str = str + dicionario.charAt(rnd(dicionario.length));
    }    
    return str;    
}
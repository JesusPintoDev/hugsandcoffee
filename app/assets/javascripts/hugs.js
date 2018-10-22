
document.addEventListener('DOMContentLoaded',() => {
    elem = document.getElementById("myBar"); 
    elem2 = document.getElementById("myProgress");
    elem3 = document.getElementById("hugMessage");
    elem4 = document.getElementById("seconds");
    elem5 = document.getElementById("hugMessage2");
    elem6 = document.getElementById("form1");
    elem7 = document.getElementById("form2");
    coffeePrice = document.getElementById("coffee_price");
    questions = document.getElementsByTagName("input");
    quantityCoffee  = document.getElementById("quantityCoffee");
    quantityCoffee2  = document.getElementById("quantityCoffee2");
    coffees = document.getElementById("coffees");
    
    
    limit = elem2.clientWidth;
    padding = limit;
})

let elem;   
let elem2;   
let elem3;
let elem4;
let elem5;
let elem6;
let elem7;

var height = 0;
var id = setInterval(frame, 100);
var padding;
var pressed = false;
var limit;
var number;




let questions;
let coffeePrice;
let quantityCoffee;
let quantityCoffee2;
let coffees;

function multiplicar() {
    var total = 0;
    for(var i=0;i < questions.length; i++) {
        if (questions[i].type == "radio" && questions[i].checked) total += Number(questions[i].value)*Number(coffeePrice.value);
    }
    console.log(total);
    quantityCoffee.innerHTML = 'Total: ' + total.toFixed(2);
    quantityCoffee2.innerHTML = 'Total: ' + total;
    coffees.value = total/Number(coffeePrice.value)
}






function ocultar() {
    console.log(elem4)
    elem6.hidden = true;;
    elem7.hidden = false;
}

function regresar() {
    console.log(elem4)
    elem7.hidden = true;
    elem6.hidden = false;
}

function frame() {
    if ( pressed == true) {
        console.log(limit)
        if ( height <= limit) {    
            elem.style.height = height + 'px'; 
            elem2.style.height = padding + 'px';
        }
        height+=1;
        padding = padding -1;

        number = ((height / limit) * 30).toString().split('.')
        elem3.innerHTML = 'Abrazo de ' + number[0] + '.' + number[1].substring(0,2)  + ' segundos';
        elem4.value = number[0] + '.' + number[1].substring(0,2);
        elem5.innerHTML = 'Enviando un abrazo de ' + number[0] + '.' + number[1].substring(0,2)  + ' segundos';
    }
}

console.log("===");

 
function cargar() {
    pressed = true;
    console.log("+++");
}
 
 
 
function detener() {
    pressed = false;	
    console.log("+++");
}
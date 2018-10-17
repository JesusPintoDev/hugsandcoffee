
document.addEventListener('DOMContentLoaded',() => {
    elem = document.getElementById("myBar"); 
    elem2 = document.getElementById("myProgress");
    elem3 = document.getElementById("hugMessage");
    limit = elem2.clientWidth;
    padding = limit;
})

let elem;   
let elem2;   
let elem3;
var height = 0;
var id = setInterval(frame, 100);
var padding;
var pressed = false;
var limit;
var number;

visibility: hidden;
visibility: visible;


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
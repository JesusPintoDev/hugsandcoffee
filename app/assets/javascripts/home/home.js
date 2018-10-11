document.addEventListener('DOMContentLoaded',() => {
    let x = document.getElementById('error_explanation').firstElementChild.innerHTML
    document.getElementById('error_explanation').firstElementChild.innerHTML = x.substring(0,1).toUpperCase() +  x.substring(1).toLowerCase()
    //console.log(x)

    //string.charAt(0).toUpperCase() + string.slice(1).toLowerCase();

  })

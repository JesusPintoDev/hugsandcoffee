document.addEventListener('DOMContentLoaded',() => {

  document.getElementById('pressed').addEventListener('touchstart', function(ev) {
    cargar();
  })
  document.getElementById('pressed').addEventListener('touchend', function(ev) {
    detener();
  })

})
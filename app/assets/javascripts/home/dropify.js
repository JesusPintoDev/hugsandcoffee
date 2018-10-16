document.addEventListener('DOMContentLoaded',() => {
    $(document).on("turbolinks:load", function()  {
        $('.dropify').dropify();
        console.log($)
    })    
})


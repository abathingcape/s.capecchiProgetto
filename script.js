$(document).ready(function() {
    $('.expan').hide();
    $visual=false;
    $("button").click(function() {
        $id_bottone=$(this).attr('id');
        $colore_bott=$(this).attr('class');
        if ($("."+$id_bottone).css('background-color')=="rgba(0, 0, 0, 0)" || $("."+$id_bottone).css('background-color')=="transparent"){
            $("."+$id_bottone).css('background-color', $colore_bott);
        }else{
            $("."+$id_bottone).css('background-color', "transparent");
        }
    });
    $("area").click(function(){
        $id_area=$(this).attr('id');
        $('html, body').animate({
            scrollTop: $("span#"+$id_area).offset().top - 100
         }, 1000);
         
        $("span#"+$id_area).addClass("active-background");
    
        // Dopo un breve ritardo, rimuovi la classe per far scomparire il colore
        setTimeout(function() {
            $("span#"+$id_area).removeClass("active-background");
        }, 1500); // 1000 millisecondi = 1 secondo

         
    });
    $("button#abbr").click(function() {
        if ($visual==false){
            $('.expan').show();
            $visual=true;
        }else{
            $('.expan').hide();
            $visual=false;
        }
    });
});
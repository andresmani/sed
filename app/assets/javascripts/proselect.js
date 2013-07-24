/* =funcion 
_controla el la lista desplegable dependiente de la tabla de estudiantes_*/
$(document).ready(function() {
 
 $("#gruposDiv").css('display','none');
 $('#programa_id').bind('change',function(e){
   var program = $(this).val();
        
   if (program != ""){
     $("#gruposDiv").css('display','block'); 
     update_grupos_div(program)
   }
   else
     $("#gruposDiv").css('display','none');
   });
 });

 function update_grupos_div(programa_id) {  
 jQuery.ajax({
   url: "/update_grupos",
   type: "GET",
   data: {"programa_id" : programa_id},
   dataType: "html",
   success: function(data) {
     jQuery("#gruposDiv").html(data);
   }
 });

}
$(document).ready(function() {

  $(".add_photos").hide();
  $(document).on('click','#add_photo_trigger', function(event) {
    event.preventDefault();
    console.log('happened');
    $(".add_photos").slideDown("slow");
  });

  $(document).on('click','.done', function(event) {
    event.preventDefault();
    $(".add_photos").slideUp("slow");
  });
});
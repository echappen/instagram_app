$(function() {

  var photo_box = $(".add_photos");
  var link = $("#add_photo_trigger");

  photo_box.hide();

  link.click(function() {
    photo_box.slideDown();
  });


  $(".done").click(function() {
    photo_box.slideUp();
  });

});

$(document).ready(function () {
  $('#content').click(function () {
    reloadAphorism();
  })
});

function reloadAphorism() {
  $.ajax({
    url: "/",
    success: function (data) {
      console.log(data);
      $('#basic_aphorism').html = ''
    }
  });
  console.log("ardjaserh")
}

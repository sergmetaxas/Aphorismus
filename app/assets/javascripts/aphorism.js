
//$(document).ready(function () {
$('#basic_aphorism').click(function () {
  $.ajax({
    url: "/",
    dataType: 'json',
    success: function (income_data) {
      $('#aphorism p').empty().append(income_data.text);
      $('#author a').attr('href', '/author/' + income_data.author.id);
      $('#author a').text(income_data.author.name);
      console.log('uhg8');
    }
  })
});
//});





$('#content').click(function () {
  $.ajax({
    url: "/",
    dataType: 'json',
    success: function (income_data) {
      $('#aphorism p').empty().append(income_data.text);
      $('#author a').attr('href', '/author/' + income_data.author.id);
      $('#author a').text(income_data.author.name);
    }
  })
});

// $('#aphorism_search').submit(function (e) {
//   e.preventDefault();
//   $.ajax({
//     url: '/search',
//     type: 'post',
//     data: $('#aphorism_search').serialize(),
//     success: function (data) {
//       alert(data.result);
//     },
//     error: function (data) {
//       alert("asdjhgvsakghvsakf");
//     }
//   });
// });



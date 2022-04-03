$(function() {
          $('h1').hide();

          $('#list').css('margin', '20px');
          
          $('.list-item').css('color', 'red');

          $('li').click(function() {
                    $(this).css('color', 'red');
          })

})


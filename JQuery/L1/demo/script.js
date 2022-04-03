$(function() {
          $('h1').hide();

          $('#list').css('margin', '20px').css('color', 'red').css('font-size', '42px');
          
          // $('.list-item').css('color', 'red');

          $('li').click(function() {
                    $(this).css('color', 'red');
          })

})


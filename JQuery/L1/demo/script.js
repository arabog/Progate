$(function() {
          $('h1').hide();

          $('#list').css('margin', '20px').css('color', 'red').css('font-size', '42px');
          
          // $('.list-item').css('color', 'red');

          $('li').click(function() {
                    $(this).css('color', 'red');
          });

          $('wrapper').find('a').css('color', 'blue');

          // Add the hover() method for #language-wrapper
          $('.language-text').hide();
          
          $('#language-wrapper').hover(
                    function() {
                              $('.language-text').fadeIn();
                    },
                    
                    function() {
                              $('.language-text').fadeOut();
                    }
          );

})


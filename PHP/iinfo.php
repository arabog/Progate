https://www.allaboutlinux.eu/how-to-run-php-on-ubuntu/

Let’s go and replace the default page of Apache so we can create our own.

Open a terminal and type:

sudo mv /var/www/html/index.html /var/www/html/index.back
If you want to test that PHP is installed successfully into your system you 
can write and run a simple PHP script that will return to you the PHP 
information. So open the terminal and type:

sudo gedit /var/www/html/index.php

An empty document will open in gedit now just type the following and save 
the document.

<?php
          print_r (phpinfo());
?>
 

And point your web browser at: http://localhost/

You should now be able to see your first PHP page running.

You can edit this page at any time by typing:

In order to restart Apache web server just type the following command

sudo gedit /var/www/html/index.php
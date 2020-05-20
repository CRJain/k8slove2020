#!/bin/bash

if [  "$x" == "app1"  ]
then
    cp -r  beginner-html-site-styled/.  /var/www/html/
    httpd  -DFOREGROUND 

elif   [  "$x" == "app2"  ]
then
    cp -r project-html-website/.  /var/www/html/
    httpd  -DFOREGROUND 

else 
    echo  "Page Not Found"  > /var/www/html/index.html
    httpd  -DFOREGROUND 
fi

server {
    include https;
    server_name .ngrok.io;
    root /var/www/html/php-hello-world;
    
    include php;
    include webhook;
}

server {
    listen 80;
    server_name .ngrok.io;
    root /var/www/html/php-hello-world;

    include php;
    include webhook;
}

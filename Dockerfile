FROM ubuntu
RUN apt update -y && apt install apache2 git -y
RUN cd /var/www/html && git clone https://github.com/adiron99/prodApp.git && mv prodApp/* /var/www/html
ENTRYPOINT apache2ctl -DFOREGROUND

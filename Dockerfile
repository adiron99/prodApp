FROM ubuntu
RUN sudo apt install apache2 -y
RUN cd /var/www/html
RUN sudo git clone https://github.com/adiron99/prodApp.git
ENTRYPOINT apachectl DFOREGROUND
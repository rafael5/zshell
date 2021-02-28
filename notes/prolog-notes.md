
# -----------------------------------------------------------------------------
# XSB-Prolog
http://xsb.sourceforge.net/


# download
https://sourceforge.net/projects/xsb/files/latest/download







# -----------------------------------------------------------------------------
# SWI-Prolog

# docker
https://hub.docker.com/_/swipl/

docker pull swipl
docker run -it swipl 

FROM swipl
COPY . /app
CMD ["swipl", "/app/start.pl"]

This will extract and copy your source files to the image and then set the default command to run your application.


# tutorial
https://github.com/Anniepoo/swiplwebtut/blob/master/web.adoc#introduction



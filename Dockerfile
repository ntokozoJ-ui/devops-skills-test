FROM mariadb
WORKDIR /project
ENV BRUCE=WAYNE
RUN echo $BRUCE > ~/BATCAVE
EXPOSE 3306

CMD ["/var/lib/mysql/start.sh, "run"]

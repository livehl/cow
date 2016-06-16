FROM alpine
copy ["cow", "/bin/cow"]
copy ["rc", "/root/.cow/rc.temp"]
run ["chmod", "+x","/bin/cow"]
RUN apk add --no-cache  gettext bash
EXPOSE 7777
CMD ["/bin/bash","-c", "envsubst < /root/.cow/rc.temp > /root/.cow/rc && /bin/cow"]

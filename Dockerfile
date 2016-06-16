FROM alpine
copy ["cow", "/bin/cow"]
copy ["rc", "/root/.cow/rc"]
run ["chmod", "+x","/bin/cow"]
RUN apk add --no-cache  gettext
EXPOSE 7777
CMD [""]
CMD ["/bin/bash","-c", "envsubst < /root/.cow/rc > /root/.cow/rc && /bin/cow"]

FROM alpine
copy ["cow", "/bin/cow"]
copy ["rc", "/root/.cow/rc"]
run ["chmod", "+x","/bin/cow"]
EXPOSE 7777
CMD ["/bin/cow"]

FROM alpine
copy ["cow", "/bin/cow"]
copy ["rc", "/root/.cow/rc"]
EXPOSE 80
CMD ["cow"]

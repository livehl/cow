FROM alpine
copy ["cow", "/bin/cow"]
copy ["rc", "/root/.cow/rc"]
EXPOSE 7777
CMD ["cow"]

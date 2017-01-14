# cow 

    using environment variables

    COWPWD= password

    kcp port 90
    cow port 80
    kcp -crypt none -t "127.0.0.1:80" -l ":90" -mode fast2 -nocomp

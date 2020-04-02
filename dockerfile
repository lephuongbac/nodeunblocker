FROM ubuntu
RUN apt update
RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y git
WORKDIR /home/user/
RUN git clone https://github.com/nfriedly/nodeunblocker.com
WORKDIR /home/user/nodeunblocker.com
RUN npm install
CMD ["npm", "start"]
EXPOSE 8080
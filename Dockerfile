FROM node:latest

WORKDIR /home/abozynski/bozynski_alina_site

ENV PATH /home/abozynski/bozynski_alina_site/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@5.0.1 -g --silent

COPY . ./

EXPOSE 7775

CMD ["npm", "start"]

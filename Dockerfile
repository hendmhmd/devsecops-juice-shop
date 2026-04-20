FROM node:20-alpine

WORKDIR /app

# install required build tools
RUN apk add --no-cache git python3 make g++

# clone project
RUN git clone --depth=1 https://github.com/juice-shop/juice-shop.git .

# install dependencies
RUN npm install --omit=dev

EXPOSE 3000

CMD ["npm", "start"]
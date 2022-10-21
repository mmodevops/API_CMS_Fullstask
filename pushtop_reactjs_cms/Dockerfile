FROM node:14.19.0-alpine as builder

# Create app directory
RUN mkdir -p /usr/src/app
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /usr/src/app

RUN npm install

RUN npm audit fix

COPY . /usr/src/app

RUN npm run build

CMD ["npm", "run", "serve"]

# ------------------------------------------------------
# Production Build
# ------------------------------------------------------
FROM nginx

COPY --from=builder /usr/src/app/build /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
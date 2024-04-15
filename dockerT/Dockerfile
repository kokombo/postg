FROM node:21-alpine3.18

# or COPY ..  copies everything from the project directory

WORKDIR /app

COPY package.json /app/
COPY package-lock.json /app/
COPY src /app/

RUN npm install

CMD ["node", "server.js"]




# -S is to create a system user

# -G is to add user to a group

# 
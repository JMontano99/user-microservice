FROM node:18
WORKDIR /app
 
COPY package*.json ./
RUN npm install
 
COPY ..
 
ENV PORT=
ENV MONGO_URI=
EXPOSE 3002
 
CMD ["npm", "start"]
FROM node:18-alpine
WORKDIR /app
COPY frontend ./frontend
WORKDIR /app/frontend
RUN npm install && npm run build
EXPOSE 5173
CMD ["npm", "run", "dev"]

FROM node
#строю базовый образ


WORKDIR /app
#назначаю директорию


COPY package.json /app


RUN npm install
#устанавливаю npm для запуска


COPY . .
#перемещаю файлы в /app


EXPOSE 8000
#задаю порт


CMD ["node", "app.js"]
#задаю команды для запуска программы



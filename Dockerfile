FROM cypress/base:10
 
WORKDIR /app
COPY . /app 

RUN npm install cypress@4.2.1
RUN $(npm bin)/cypress verify

CMD npm run test:search; \
npm run cucumber:report


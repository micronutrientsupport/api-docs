FROM alpine:3

RUN apk update && apk add --no-cache curl bash

WORKDIR /app

ADD https://github.com/DapperDox/dapperdox/releases/download/v1.2.2/dapperdox-1.2.2.linux-amd64.tgz /app/
RUN tar --strip-components 1 -xzf dapperdox-1.2.2.linux-amd64.tgz dapperdox-1.2.2.linux-amd64/dapperdox && rm dapperdox-1.2.2.linux-amd64.tgz

COPY . .

RUN chmod +x ./run.sh ./wait-for-it.sh

EXPOSE 3213

CMD [ "sh",  "-c", "bash ./wait-for-it.sh --strict ${API_URL} -- sh ./run.sh"]


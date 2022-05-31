ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3
RUN apk add --no-cache py3-pip

RUN pip3 install https://github.com/yozik04/nibe-mqtt/archive/959063cf4838d34d8a65fd0f0a4c37960a01465e.tar.gz

COPY run.sh /home
RUN chmod a+x /home/run.sh

COPY config_example.yaml /home/config_example.yaml

CMD [ "/home/run.sh" ]


ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3
RUN apk add --no-cache py3-pip

RUN pip3 install https://github.com/yozik04/nibe/archive/refs/tags/0.2.0.tar.gz
RUN pip3 install https://github.com/yozik04/nibe-mqtt/archive/refs/tags/0.0.1.tar.gz

WORKDIR /home

COPY run.sh /home
RUN chmod a+x /home/run.sh

COPY config_example.yaml /home/config_example.yaml
RUN ln -sf /config/nibe-mqtt/config.yaml /home/config.yaml

CMD [ "/home/run.sh" ]


FROM mongo-express:0.54.0

MAINTAINER "prasanna cn"

RUN apt-get update

RUN mkdir /usr/UI_TOOL_CODE

COPY ./UI_TOOL_CODE/ /usr/UI_TOOL_CODE

WORKDIR /usr/UI_TOOL_CODE/AngularApp

CMD [ "nohup", "npm", "start" ]

WORKDIR /usr/UI_TOOL_CODE/nodejs

CMD [ "nohup", "npm", "start" ]

FROM node:alpine

LABEL author "Korviakov Andrey"
LABEL maintainer "4lifenet@gmail.com"

COPY bin/ /bin

RUN apk add --no-cache \
	bash \
	coreutils \
	curl \
	firefox-esr \
	fontconfig \
	ttf-freefont \
	xvfb \
	&& npm install slimerjs

WORKDIR /src

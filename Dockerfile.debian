FROM debian:trixie-slim

RUN apt update && \
    apt install -y \
		build-essential \
		dub \
		git \
		libvted-3-dev

RUN git clone https://github.com/gnunn1/tilix.git && \
	cd tilix && \
	dub build

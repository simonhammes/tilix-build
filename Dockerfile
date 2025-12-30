FROM debian:bookworm-slim

RUN apt update && \
    apt install -y \
		build-essential \
		dub \
		git \
		libvted-3-dev

# https://stackoverflow.com/questions/76231744/how-to-properly-build-tilix
RUN sed -i 's/-defaultlib=phobos2-ldc,druntime-ldc/-defaultlib=phobos2-ldc,z,druntime-ldc/' /etc/ldc2.conf

RUN git clone https://github.com/gnunn1/tilix.git && \
	cd tilix && \
	dub build

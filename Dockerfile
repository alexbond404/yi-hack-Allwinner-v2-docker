FROM debian:10-slim

RUN apt-get update
RUN apt-get -y install wget git unzip build-essential libtool bison bisonc++ libbison-dev autoconf autotools-dev automake libssl-dev zlibc zlib1g-dev libzzip-dev flex libfl-dev yui-compressor closure-compiler optipng jpegoptim libtidy5deb1 node-less sassc sass-spec libhtml-tidy-perl libxml2-utils rsync

RUN git clone https://github.com/lindenis-org/lindenis-v536-prebuilt
RUN mkdir -p /opt/yi/toolchain-sunxi-musl
RUN mv lindenis-v536-prebuilt/gcc/linux-x86/arm/toolchain-sunxi-musl/toolchain /opt/yi/toolchain-sunxi-musl/
RUN rm -R lindenis-v536-prebuilt

CMD bash

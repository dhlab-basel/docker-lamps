FROM dhlabbasel/sipi-base:16.04 as sipi-image

# Add everything to image.
RUN git clone --depth 1 https://github.com/dhlab-basel/Sipi.git sipi

ADD kakadu/v7_A_5-01382N.zip /sipi/vendor/

# Install and clean-up SIPI.
RUN cd /sipi/build && \
    cmake .. && \
    make && \
    make install && \
    mkdir -p /sipi/images/knora && \
    mkdir -p /sipi/cache && \
    rm -rf /sipi/vendor && \
    rm -rf /sipi/build && \
    rm -rf /sipi/extsrcs

FROM mattrayner/lamp:latest-1604-php5

# copy sipi
COPY --from=sipi-image /sipi/local/bin/sipi /usr/local/bin/sipi

CMD ["/run.sh"]

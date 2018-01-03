FROM uphy/novnc-alpine
RUN \
    # Install xterm
    apk update upgrade --no-cache && \ apk add midori && \
    # Append xterm entry to supervisord.conf
    cd /etc/supervisor/conf.d && \
    echo '[program:midori]' >> supervisord.conf && \
    echo 'command=midori' >> supervisord.conf && \
    echo 'autorestart=true' >> supervisord.conf

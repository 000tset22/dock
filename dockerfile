FROM uphy/novnc-alpine
RUN \
    # Install xterm
    apk add xterm && \
    # Append xterm entry to supervisord.conf
    cd /etc/supervisor/conf.d && \
    echo '[program:xterm]' >> supervisord.conf && \
    echo 'command=xterm' >> supervisord.conf && \
    echo 'autorestart=true' >> supervisord.conf

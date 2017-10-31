FROM debian:stretch

EXPOSE 143
EXPOSE 993



RUN apt-get update -q -q && \
    apt-get --yes install rsyslog \
                          dovecot-core \
                          dovecot-imapd \
                          dovecot-mysql \
                          dovecot-lmtpd

VOLUME /etc/dovecot/
VOLUME /var/log/dovecot/
VOLUME /var/mail/


CMD ls -al /etc/ && ls -al /etc/dovecot/ &&  dovecot -F
#Run in foreground: https://wiki2.dovecot.org/Tools/Dovecot



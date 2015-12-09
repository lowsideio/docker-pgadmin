FROM maxexcloo/nginx-php:latest
MAINTAINER Max Schaefer <max@excloo.com>

ARG PHPPGADMIN_VERSION=5-1-0

RUN mkdir -p /data/http && \
	cd /data/http && \
	wget -O - "https://github.com/phppgadmin/phppgadmin/archive/REL_${PHPPGADMIN_VERSION}.tar.gz" | tar --strip-components=1 -x -z && \
	rm -rf conf/config.inc.php-dist CREDITS DEVELOPERS FAQ HISTORY INSTALL TODO TRANSLATORS
ADD data /data

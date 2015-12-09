FROM maxexcloo/nginx-php:latest
MAINTAINER Max Schaefer <max@excloo.com>

ENV POSTGRESQL_HOST=postgresql
ENV POSTGRESQL_PORT=5432
ENV POSTGRESQL_DEFAULT_DB=pg

RUN mkdir -p /data/http && \
	cd /data/http && \
	wget -O - "https://github.com/phppgadmin/phppgadmin/archive/REL_5-1-0.tar.gz" | tar --strip-components=1 -x -z && \
	rm -rf conf/config.inc.php-dist CREDITS DEVELOPERS FAQ HISTORY INSTALL TODO TRANSLATORS

ADD data /data

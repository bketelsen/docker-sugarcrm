FROM jarias/apache2

RUN apt-get update && apt-get upgrade -y && \
	apt-get install -y php5-mysql curl unzip && \
	curl -O "http://softlayer-dal.dl.sourceforge.net/project/sugarcrm/1%20-%20SugarCRM%206.5.X/SugarCommunityEdition-6.5.X/SugarCE-6.5.17.zip" && \
	unzip SugarCE-6.5.17.zip && \
	rm -rf /var/www/* && \
	cp -R SugarCE-Full-6.5.17/* /var/www/ && \
	chown -R www-data:www-data /var/www/*

EXPOSE 80
CMD []
ENTRYPOINT ["apachectl", "-DFOREGROUND"]

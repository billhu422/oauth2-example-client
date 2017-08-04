oauth2-example-client
===================

Oauth2 authentication example for FI-WARE GE applications

- Software requirements:

	+ nodejs 
	+ npm

- Install the dependencies: 

	npm install

- Configure OAuth2 credentials in config.js file (you will find theme in your IDM account)

- Start example server

	sudo node server

- Connect to http://localhost to try the example 

* Connect to http://localhost/logout to delete session cookies once you have logout in IDM portal


RUN docker 
docker run -d -p9000:9000 --name wso2OauthSample -v `pwd`/config.js:/opt/oauth2-example-client/config.js vname.com:5000/oauth-example:wso2is 


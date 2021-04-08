FROM python:3.8-slim

LABEL "com.github.actions.name"="WP Engine Deployment"
LABEL "com.github.actions.description"="Deploy code to WP Engine"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.1.0"
LABEL repository="https://github.com/Fuel-Travel/action-wpe-deploy"
LABEL homepage="https://https://www.fueltravel.com/"
LABEL maintainer="Justin Waulters <justin.waulters@fueltravel.com>"

RUN apt-get update && apt-get install -y git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
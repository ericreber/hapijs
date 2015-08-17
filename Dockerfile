FROM node
MAINTAINER Eric Reber <eric.reber@rscfirm.com>
# Map ./ inside docker to /usr/src/app
#ADD . /usr/src/app
# Set this foler as workdir
WORKDIR /usr/src/lib
# Install hapijs
RUN npm install --save hapi

WORKDIR /usr/src/app
# Expose node.js to host.
EXPOSE 3000
# Start the app
CMD [ "node", "app.js" ]
# docker build -t node-hapijs .
# docker run -v /Users/ericreber/mydockerbuild/hapijs:/usr/src/app -d -P node-hapijs
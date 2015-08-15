FROM node
MAINTAINER Eric Reber <eric.reber@rscfirm.com>
# Map ./ inside docker to /usr/src/app
ADD . /usr/src/app
# Set this foler as workdir
WORKDIR /usr/src/app
# Install hapijs
RUN npm install --save hapi
# Expose node.js to host.
EXPOSE 3000
# Start the app
CMD [ "node", "app.js" ]
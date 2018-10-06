# Use node
FROM node
ENV LAST_UPDATED 20160605T165400

# Copy source code
COPY . /app

# Change working directory
WORKDIR /app

RUN npm update -g

RUN npm cache verify

# Install dependencies
RUN npm install

# Expose API port to the outside
EXPOSE 80

# Launch application
CMD ["npm","start"]
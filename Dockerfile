FROM dell/rails-base:1.1
MAINTAINER Dell Cloud Market Place <Cloud_Marketplace@dell.com>

# Set environment variable for package install
ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && apt-get install -yq \
	supervisor \
	wget

# Clean package cache
RUN apt-get -y clean && rm -rf /var/lib/apt/lists/*

# Install Passenger
RUN gem install passenger -v=5.0.6

# Install Passenger module nginx
RUN passenger-install-nginx-module --auto-download --auto --prefix=/opt/nginx

# Copy configuration file
COPY nginx.conf /opt/nginx/conf/nginx.conf

# Generate self-signed certificate to enable HTTPS
RUN mkdir /opt/nginx/ssl_certs && \
  openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /opt/nginx/ssl_certs/nginx.key -out /opt/nginx/ssl_certs/nginx.crt \
    -subj '/O=Dell/OU=MarketPlace/CN=www.dell.com'

# Create directory for Nginx logs
RUN mkdir -p /var/log/nginx/

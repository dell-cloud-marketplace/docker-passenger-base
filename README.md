# docker-passenger-base
This image installs [Phusion Passenger](https://www.phusionpassenger.com/) - an open-source web application server. It is a basic  image for building Ruby on Rails applications such as [dell/spree](https://github.com/dell-cloud-marketplace/docker-spree).

## Components
The software stack comprises the following components:

Name              | Version    | Description
------------------|------------|------------------------------
Ubuntu            | Trusty             | Operating system
Phusion Passenger | 5.06               | Web server
Nginx             | 1.6.2              | HTTP server & Reverse proxy
Ruby         	    | see [docker-rails-base](https://github.com/dell-cloud-marketplace/docker-rails-base) | Programming language
Ruby on Rails     | see [docker-rails-base](https://github.com/dell-cloud-marketplace/docker-rails-base) | Web application framework

## Administration
Although Passenger and Nginx have been added, it is up to derived images to start the Nginx service (```/opt/nginx/sbin/nginx```).

The Passenger environment is set to development mode. This is defined in the **nginx.conf** file which resides at ```/opt/nginx/conf``` within the container and can easily be modified for a production environment.

## Reference

### Image Details

Pre-built Image   | [https://registry.hub.docker.com/u/dell/passenger-base](https://registry.hub.docker.com/u/dell/passenger-base)

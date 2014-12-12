# docker-passenger-base

This image installs [Phusion Passenger](https://www.phusionpassenger.com/) - an open-source web application server. This base image is set up to be used with Nginx and Ruby on Rails.

This is a basic Passenger image for dependant images such as [dell/spree](https://github.com/dell-cloud-marketplace/docker-spree).

## Components
The software stack comprises the following components:

Name              | Version    | Description
------------------|------------|------------------------------
Ubuntu            | Trusty             | Operating system
Phusion Passenger | 4.0.53             | Web server
Nginx             | 1.6.2              | HTTP server & Reverse proxy
Ruby         	    | see [docker-rails](https://github.com/dell-cloud-marketplace/docker-rails/) | Programming language
Ruby on Rails     | see [docker-rails](https://github.com/dell-cloud-marketplace/docker-rails/)     | Web application framework

## Administration

This is a base image, although Passenger and Nginx have been added they are left to the inherited image to start the Nginx service ‘```/opt/nginx/sbin/nginx```’. Passenger environment has been set to development (**rails_env development;**). This has been defined in the **nginx.conf** file which resides at ```/opt/nginx/conf``` within the container and can easily be modified to production environment.


## Reference

### Image Details

Pre-built Image   | [https://registry.hub.docker.com/u/dell/passenger-base](https://registry.hub.docker.com/u/dell/passenger-base)

# This Dockerfile is used for my practice 
# base image - nginx with tag "latest"
FROM nginx:latest
# Adding custom index.html
ADD https://gist.githubusercontent.com/old-campos/3870308/raw/277c2e722fae3d3f11ffcbecef15ab59a9d233fc/index.html  /usr/share/nginx/html/
# Adding read permissions to custom index.html
RUN chmod +r /usr/share/nginx/html/index.html
# 'nginx -g daemon off" will run as default command when any container is run that uses the image that was built using this Dockerfile"
CMD ["nginx", "-g", "daemon off;"]
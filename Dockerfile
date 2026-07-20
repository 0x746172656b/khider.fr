FROM nginx:1.27-alpine

# Static site served by nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY 404.html /usr/share/nginx/html/404.html
COPY robots.txt /usr/share/nginx/html/robots.txt
COPY sitemap.xml /usr/share/nginx/html/sitemap.xml
COPY assets/ /usr/share/nginx/html/assets/
COPY postmortems/ /usr/share/nginx/html/postmortems/
COPY blind-spots/ /usr/share/nginx/html/blind-spots/

EXPOSE 80

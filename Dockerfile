# user-management/Dockerfile

# Hafif bir Nginx imajı üzerine inşa ediyoruz
FROM nginx:alpine

# Tüm statik dosyaları Nginx default html dizinine kopyala
COPY . /usr/share/nginx/html

# Container 80 portunu expose et
EXPOSE 80

# Nginx daemon modda çalışsın
CMD ["nginx", "-g", "daemon off;"]

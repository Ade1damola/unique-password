FROM nginx:1.10.1-alpine

COPY ./template /usr/share/nginx/html

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["python", "app/routes.py"]
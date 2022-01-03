FROM python:3.9.9-alpine as build

WORKDIR /data

RUN pip install mkdocs

COPY . .
RUN mkdocs build



FROM python:3.9.9-alpine

WORKDIR /data
COPY --from=build /data/site /data/site 

WORKDIR /data/site

EXPOSE 8000
CMD python -m http.server 8000 

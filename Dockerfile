FROM python:3.10-alpine3.17 as build

WORKDIR /data

RUN pip install mkdocs

COPY . .
RUN mkdocs build



FROM python:3.10-alpine3.17

WORKDIR /data
COPY --from=build /data/site /data/site 

WORKDIR /data/site

EXPOSE 8000

#entrypoint
CMD python -m http.server 8000 

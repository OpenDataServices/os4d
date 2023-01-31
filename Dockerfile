# Build using sphinx
FROM python:3.8 AS build

WORKDIR /app
COPY . .

# We must install an older version of setuptools.
# Newer versions have removed a code feature that our pinned version of MarkupSafe uses.
RUN pip install setuptools==45.3.0

RUN pip install -r requirements.txt

RUN cd docs && make dirhtml

# Serve using nginx
FROM nginx
COPY --from=build /app/docs/_build/dirhtml /usr/share/nginx/html
EXPOSE 80

# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM yiluxiangbei/cartoonize-base:1.0

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

ENV GOOGLE_APPLICATION_CREDENTIALS "./token.json"

# Install production dependencies.
RUN pip install -r requirements.txt -i https://pypi.doubanio.com/simple/

# Run the web service on container startup. Here we use the gunicorn
# webserver, with one worker process and 8 threads.
# For environments with multiple CPU cores, increase the number of workers
# to be equal to the cores available.
# CMD ["tail", "-f", "/dev/null"]
CMD exec gunicorn --bind 0.0.0.0:8080 --workers 1 --threads 8 --timeout 0 app:app

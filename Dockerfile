# our base image
FROM python:3.7

# Copy files tm required for the app to run 
COPY . /app

WORKDIR /app

# Install python and pip
RUN pip install -r requirements.txt

# Tell the port number the container should expose
EXPOSE 5000

# Run the application
CMD ["python","app.py"]

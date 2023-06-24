# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container and install dependencies
# COPY requirements.txt requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Install Flask and its dependencies
RUN pip install --no-cache-dir Flask

# Copy the Flask app code into the container
COPY . .

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Expose the port that the Flask app will run on
EXPOSE 5000

# Run the Flask app when the container launches
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]

# Use the official Python image from the Docker Hub (adjust version if needed)
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Set environment variables (optional, based on your project needs)
ENV FLASK_APP=core/server.py
RUN rm -rf core/store.sqlite3
RUN flask db upgrade -d core/migrations/

# Expose the port the app runs on
EXPOSE 7755

# Run the command to start the server (adapt from run.sh)
CMD ["bash", "run.sh"]

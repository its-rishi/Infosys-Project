# Use the official Python base image
FROM python:3.12

# Copy the application files into the container
COPY . /app

# Set the working directory inside the container
WORKDIR /app

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that will be used by the Streamlit app
EXPOSE $PORT

# Define the command to run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port", "$PORT", "--server.address", "0.0.0.0"]

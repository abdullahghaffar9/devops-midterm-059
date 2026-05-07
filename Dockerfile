# Use a lightweight Python image
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy all files from your current directory to the container
COPY . /app

# Install the specific libraries required for the scripts
RUN pip install --no-cache-dir pandas scikit-learn fastapi uvicorn

# The midterm requires the API to be on port 8000
EXPOSE 8000

# Start the FastAPI application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]

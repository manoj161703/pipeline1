# Use official lightweight Python base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy dependency file first (for better layer caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app source code
COPY . .

# Expose the port Streamlit runs on
EXPOSE 8501

# Set Streamlit to run on all interfaces (important for container)
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]

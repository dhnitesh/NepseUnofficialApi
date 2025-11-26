FROM python:3.12-slim

WORKDIR /app

# Install dependencies
COPY Requirements.txt .
RUN pip install --no-cache-dir -r Requirements.txt

# Copy application code
COPY . .

# Set PYTHONPATH to include the root directory so 'nepse' module can be found
ENV PYTHONPATH=/app

# Expose the port the app runs on
EXPOSE 8000

# Run the application
CMD ["python", "server/NepseServer.py"]

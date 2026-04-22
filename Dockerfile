# Base Image
FROM python:3.10

# Create working directory
WORKDIR /app

# Copy dependency file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Open port
EXPOSE 5000

# Run application
CMD ["python", "app.py"]

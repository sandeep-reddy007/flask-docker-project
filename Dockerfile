
# Step 1: Use Python base image
FROM python:3.12-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy requirements file
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy application files
COPY . .

# Step 6: Expose application port
EXPOSE 5000

# Step 7: Start Flask application
CMD ["python", "app.py"]

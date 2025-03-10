FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the bot source code
COPY . .

# Expose port if necessary
EXPOSE 8000

# Start the bot (adjust the command to match your entry point)
CMD ["python", "bot.py"]

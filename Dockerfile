# Use official Python image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . /app/

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 8000

# Command to run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

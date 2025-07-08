# Python 3.9 image based on Debian Bookworm as the base image
FROM python:3.9.23-bookworm

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all files from the current directory on the host into /app in the container
COPY . .

# Install all Python dependencies listed in requirements.txt
RUN pip install -r requirements.txt

# Declare that the container listens on port 80 (container-side)
EXPOSE 80

# Set the main command to run Python interpreter
ENTRYPOINT ["python"]

# Provide the default argument to ENTRYPOINT, runs `python run.py`
CMD ["run.py"]
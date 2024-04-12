# Import the python module
FROM python:3.8-slim
#FROM 381491915416.dkr.ecr.us-east-1.amazonaws.com/scullyapp:5d33eeb
# Set the working directory
WORKDIR /scullyapp
# Copy the source python file to my current working directory.
COPY *.py ./
# Run command to ensure the Flask framework is present in the container.
RUN pip3 install flask flask-cors
# Expose port 5000 for the application
EXPOSE 5000
CMD ["python", "scullyapp.py"]

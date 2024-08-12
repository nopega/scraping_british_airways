# 1. Use an official Python runtime as a parent image
FROM python:3.10-slim

# 2. Set the working directory in the container
WORKDIR /app

# 3. Copy the current directory contents into the container at /app
COPY . .

# 4. Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 5. Make port 80 available to the world outside this container (if needed)
# EXPOSE 80

# 6. Define environment variable (optional)
# ENV NAME World

# 7. Run your script when the container launches
CMD ["python", "getting_started.ipynb"]
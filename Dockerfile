# Use the official Python image as a base image
FROM python:3.12.2-slim

# Set the working directory in the container
WORKDIR /app

# Install Poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# Allow installing as root
ENV POETRY_VIRTUALENVS_CREATE=false

# Copy only the dependencies definition file to optimize caching
COPY poetry.lock pyproject.toml ./
COPY .python-version ./

# Install dependencies
RUN /root/.poetry/bin/poetry install --no-dev

# Copy all files from the current directory into the container at /app
COPY . .

# If using Streamlit, expose the port that Streamlit runs on
#EXPOSE 8501

# Command to run the Streamlit app when the container starts
#CMD ["/root/.poetry/bin/poetry", "run", "streamlit", "run", "frontend.py"]

# Command to run the app
CMD ["/root/.poetry/bin/poetry", "run", "python", "main.py"]
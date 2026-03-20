# base image
FROM python:3.10.11

# workdir
WORKDIR /app

# copy
COPY requirements.txt .

# run
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the app
COPY . .

#port
EXPOSE 8501

# command
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
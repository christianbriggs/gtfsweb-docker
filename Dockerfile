FROM python:2.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/



# FROM python:2.7
# ADD . /app
# WORKDIR /app
# RUN pip install -r requirements.txt
# # RUN pip install flask gunicorn
# EXPOSE 8000
# # gunicorn app:app -b 0.0.0.0:$PORT
# CMD ["gunicorn","app:app", "-b", "0.0.0.0:8000"]
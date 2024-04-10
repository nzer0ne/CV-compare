
FROM python:3

#RUN apk add build-base

COPY requirements.txt /requirements.txt

# install required python packages
RUN pip install -r requirements.txt

WORKDIR /cv_compare

# Copy only required folders instead of all
COPY . ./  
RUN chmod a+x app.py
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["app.py"]

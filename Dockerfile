FROM redhat/ubi8
WORKDIR /app
RUN yum install python3
RUN pip3 install Flask
COPY myDetails.py ./
CMD ["python", "myDetails.py"]


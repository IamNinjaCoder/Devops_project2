FROM redhat/ubi8
WORKDIR /app
RUN yum install python3 -y
RUN pip3 install Flask -y
COPY myDetails.py ./
CMD ["python", "myDetails.py"]


FROM redhat/ubi8
WORKDIR /app
RUN apt install python
RUN pip install Flask
COPY myDetails.py ./
CMD ["python", "myDetails.py"]


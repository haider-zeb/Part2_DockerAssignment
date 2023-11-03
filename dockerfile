from python:latest

COPY run.py run.py

COPY Requirements.txt Requirements.txt 

RUN pip install -r Requirements.txt

ENTRYPOINT [ "python","run.py" ]
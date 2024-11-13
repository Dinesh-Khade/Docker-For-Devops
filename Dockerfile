# Download version of python [BASE IMAGE]
FROM python:3.7

# Working [Dir]
WORKDIR /app

# code <source> <Destination>
COPY . /app

# Run code command [INSTALL LIBRARIES]
RUN pip install -r reqirements.txt

# migration
RUN python cool_counters/manage.py migrate

# Run [cmd]
CMD ["python","cool_counters/manage.py","runserver","0.0.0.0:8000"]
~

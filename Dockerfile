FROM python:3.12-slim-bookworm

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY flask_hello.py .

## This will put info in the image Metadata that images exposes port 5000
EXPOSE 5000


## This tells docker that when container is executed this command should be run
## This is NOT executed at image build but rather this info is recoreded in image MEtadata
## Only RUN commands are executed at build phase.
## EXPOSE and CMD only update the Metadata of the created image
 
CMD python flask_hello.py


## Once all commands in the Dockerfile are executed against the temporary build container t gets frozen and packed into a portable Docker Image.

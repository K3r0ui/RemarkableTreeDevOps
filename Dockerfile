#lightweight image of python 
FROM python:3.9-slim


RUN pip3 install --upgrade pip
# the port that the container will listen at the run time
EXPOSE 8501
USER root
# Install the git so we can clone the app from the remote app
RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-login testinguser
USER testinguser
# the work directory for the RUN CMD ENTRYPOINT COPY Commands 
WORKDIR /home/testinguser
# clone the code inside workdir in which u will find the requirement file and the code .py
RUN git clone https://github.com/K3r0ui/RemarkableTreeML.git

# all the dependencies installed 

RUN pip3 install --user -r RemarkableTreeML/requirements.txt

ENTRYPOINT ["python","-m","streamlit", "run", "RemarkableTreeML/Test.py", "--server.port=8501", "--server.address=0.0.0.0"]
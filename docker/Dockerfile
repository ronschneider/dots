# Specifies base image and tag
FROM gcr.io/deeplearning-platform-release/tf-gpu.1-13
WORKDIR /root

# Installs additional packages
RUN pip install tensorflow

# Downloads training data
#RUN curl https://example-url/path-to-data/data-filename --output /root/data-filename

RUN git clone https://github.com/ronschneider/dots.git
RUN ls dots

# Copies the trainer code to the docker image.
#COPY ../*.py /root/
#COPY ../*.ipynb /root/

# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "dots/task.py"]

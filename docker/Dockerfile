# Specifies base image and tag
FROM gcr.io/deeplearning-platform-release/tf-gpu.1-13
WORKDIR /home

# Installs additional packages
RUN pip install tensorflow

# Downloads training data
#RUN curl https://example-url/path-to-data/data-filename --output /root/data-filename

# Copies the trainer code to the docker image.
COPY dots_copy/ /home/dots/
#COPY ../*.ipynb /root/

# Sets up the entry point to invoke the trainer.
#ENTRYPOINT ["python", "dots/task.py"]

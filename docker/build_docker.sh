export PROJECT_ID=$(gcloud config list project --format "value(core.project)")
export IMAGE_REPO_NAME=example_custom_container_image
export IMAGE_TAG=example_image_tag
export IMAGE_URI=gcr.io/$PROJECT_ID/$IMAGE_REPO_NAME:$IMAGE_TAG

git clone https://github.com/ronschneider/dots.git dots_copy
docker build -f Dockerfile -t $IMAGE_URI ./
rm -dfR dots_copy

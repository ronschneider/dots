export PROJECT_ID=$(gcloud config list project --format "value(core.project)")
export IMAGE_REPO_NAME=example_custom_container_image
export IMAGE_TAG=example_image_tag
export IMAGE_URI=gcr.io/$PROJECT_ID/$IMAGE_REPO_NAME:$IMAGE_TAG

docker build --no-cache -f Dockerfile -t $IMAGE_URI ./

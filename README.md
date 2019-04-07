# Docker container for Mask R-CNN

This repository uses the [Depend on Docker](https://github.com/bhgedigital/depend-on-docker) framework to easily containerize and run [Matterport's implementation](https://github.com/matterport/Mask_RCNN) of the [Mask R-CNN](https://arxiv.org/abs/1703.06870) model for Object Detection and Segmentation. See the README files of [Depend on Docker](https://github.com/bhgedigital/depend-on-docker/blob/master/README.md) for more info on {DoD}, and the README and of [Matterport\Mask_RCNN](https://github.com/matterport/Mask_RCNN/blob/master/README.md) (also included in this repository) for more information on the Mask R-CNN implementation.

# Goal
The repository makes it easy to perform inference with the Mask R-CNN model on any machine on which [Docker](https://www.docker.com/get-docker) is installed, without having to worry about OS, libraries, installation, etc. Training is also easy, but it requires a machine with one or more GPUs.

## Linux, MacOS

 1. Clone this repository
 2. Edit the `.env` file as required by your system specification: in particular, if you're behind an Internet proxy, remember to set the corresponding env variables (see {DoD} README for details)
 3. Run `./build.sh`
 4. Run `./run.sh`
 5. Your container with a working Mask R-CNN model is up and running!
 6. (Optional) Training on the COCO dataset is not required since the model downloads pretrained COCO weights, but if you want to retrain on COCO, follow the related instructions in the Mask R-CNN README

FROM tensorflow/tensorflow:latest-py3-jupyter

LABEL maintainer="andrea.panizza@bhge.com"

ADD Mask_RCNN/ /Mask_RCNN/

ADD startup.sh /

RUN apt-get -y update && apt-get -y install libglib2.0-0 libsm6 libxext6 libxrender1 git

WORKDIR /

RUN pip3 install -r /Mask_RCNN/requirements.txt

RUN cd /Mask_RCNN/ && python3 setup.py install

RUN pip3 install git+https://github.com/waleedka/coco.git#subdirectory=PythonAPI

CMD /startup.sh

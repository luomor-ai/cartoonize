```shell
sudo docker build -t yiluxiangbei/cartoonize .
sudo docker push yiluxiangbei/cartoonize
sudo docker run -it -p 8701:8080 yiluxiangbei/cartoonize

sudo docker build -t yiluxiangbei/cartoonize-base:1.0 -f Dockerfile.base .
sudo docker push yiluxiangbei/cartoonize-base:1.0

sudo docker build -t yiluxiangbei/cartoonize:1.0 .
sudo docker push yiluxiangbei/cartoonize:1.0

sudo docker run -it --volume="$(pwd)":/app --rm python:3.7-slim bash
python
from jinja2 import Markup, escape
```

```shell
sudo docker build -t yiluxiangbei/cartoonize .
sudo docker push yiluxiangbei/cartoonize
sudo docker run -it -p 8701:8080 yiluxiangbei/cartoonize

sudo docker run -it --rm python:3.7-slim bash
python
from jinja2 import Markup, escape
```

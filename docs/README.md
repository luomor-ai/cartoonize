```shell
sudo docker build -t yiluxiangbei/cartoonize .
sudo docker push yiluxiangbei/cartoonize
sudo docker run -it -p 8701:8080 yiluxiangbei/cartoonize

sudo docker build -t yiluxiangbei/cartoonize-base:1.0 -f Dockerfile.base .
sudo docker push yiluxiangbei/cartoonize-base:1.0

sudo docker build -t yiluxiangbei/cartoonize-pip:1.0 -f Dockerfile.pip .
sudo docker push yiluxiangbei/cartoonize-pip:1.0

sudo docker run -it --volume="$(pwd)":/app --rm yiluxiangbei/cartoonize-pip:1.0 bash
python
from jinja2 import Markup, escape
pip install Flask==2.0.3
pip install Jinja2==3.1.2

from jinja2.utils import markupsafe 
markupsafe.Markup()
Markup('')

sudo docker run -it --volume="$(pwd)":/app --rm python:3.7-slim bash
python
from jinja2 import Markup, escape
```

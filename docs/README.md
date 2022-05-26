```shell
sudo docker build -t yiluxiangbei/cartoonize .
sudo docker push yiluxiangbei/cartoonize
sudo docker run -it -p 8701:8080 -d yiluxiangbei/cartoonize

http://49.232.6.131:8701/

sudo docker build -t yiluxiangbei/cartoonize-base:1.0 -f Dockerfile.base .
sudo docker push yiluxiangbei/cartoonize-base:1.0

sudo docker build -t yiluxiangbei/cartoonize-pip:1.0 -f Dockerfile.pip .
sudo docker push yiluxiangbei/cartoonize-pip:1.0

sudo docker run -it --volume="$(pwd)":/app --rm yiluxiangbei/cartoonize:1.0 bash
sudo docker run -it --volume="$(pwd)":/app --rm yiluxiangbei/cartoonize-pip:1.0 bash
python
from jinja2 import Markup, escape
pip install Flask==2.0.3 -i https://pypi.doubanio.com/simple/
pip install Jinja2==3.1.2 -i https://pypi.doubanio.com/simple/
pip install numpy==1.19.2 -i https://pypi.doubanio.com/simple/

from jinja2.utils import markupsafe
markupsafe.Markup()

gunicorn --bind 0.0.0.0:8080 --workers 1 --threads 8 --timeout 0 app:app

sudo docker run -it --volume="$(pwd)":/app --rm python:3.7-slim bash
python
from jinja2 import Markup, escape
```

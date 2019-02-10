sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
# Gunicorn
#sudo ln -sf /home/box/web/etc/gunicorn.conf.py /etc/gunicorn.d/gunicorn.conf.py
#gunicorn -c /etc/gunicorn.d/gunicorn.conf.py hello:app
#sudo /etc/init.d/gunicorn restart
#sudo gunicorn -c /home/box/web/etc/gunicorn.conf hello:app
#sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:application

sudo ln -sf /home/box/web/etc/gunicorn_django_conf.py /etc/gunicorn.d/gunicorn_django_conf.py
sudo gunicorn -c /etc/gunicorn.d/gunicorn_django_conf.py ask.wsgi:application

cd /home/box/web/ask
gunicorn --bind=0.0.0.0:8000 ask.wsgi:application


3. Настраиваем MySQL

﻿sudo /etc/init.d/mysql start

mysql -u root

CREATE DATABASE stepik CHARACTER SET utf8;

﻿﻿﻿﻿4. Настраиваем Nginx

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default

sudo /etc/init.d/nginx restart

5. Запускаем gunicorn﻿﻿ (из каталога, где у нас лежит wsgi-файл).

cd ﻿~/web/ask/ask﻿

gunicorn -b 0.0.0.0:8000 ask.wsgi:application&     

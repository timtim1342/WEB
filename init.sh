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

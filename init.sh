#sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
#sudo /etc/init.d/nginx restart
# Gunicorn
#sudo ln -sf /home/box/web/etc/gunicorn.conf.py /etc/gunicorn.d/gunicorn.conf.py
#gunicorn -c /etc/gunicorn.d/gunicorn.conf.py hello:app
#sudo gunicorn -c /home/box/web/etc/gunicorn.conf hello:app
#sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:application

sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test-wsgi
sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/test-django
sudo /etc/init.d/gunicorn restart

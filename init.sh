sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
# Gunicorn
#sudo ln -sf /home/box/web/etc/gunicorn.conf.py /etc/gunicorn.d/gunicorn.conf.py
#gunicorn -c /etc/gunicorn.d/gunicorn.conf.py hello:app
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/gunicorn.conf
gunicorn -c /etc/gunicorn.d/gunicorn.conf ask.wsgi:application

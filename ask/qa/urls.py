from django.conf.urls import url
from qa.views import test
urlpatterns = [
  url(r'.*', test)
]
#from . import views

#urlpatterns = [
 #   url(r'.*', views.test),
#]

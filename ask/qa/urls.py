from qa.views import test
urlpatterns = patterns('qa.views',
                       url(r'^$', test)
                       )
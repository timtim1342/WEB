def wsgi_app(environ, start_response):
    status = '200 OK'
    headers = [
        ('Content-Type', 'text/plain')
    ]
    start_response(status, headers)
    resp = environ['QUERY_STRING'].split('&')
    resp = [i+'\r\n' for i in resp]
    return resp

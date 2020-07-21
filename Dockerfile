FROM kennethreitz/httpbin
RUN mv /httpbin /tmp/httpbin
RUN pip3 install --no-cache-dir gunicorn /tmp/httpbin
WORKDIR /tmp/httpbin
CMD ["gunicorn", "-b", "0.0.0.0:80", "httpbin:app", "-k", "gevent"]

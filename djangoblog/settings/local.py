from .base import *

DEBUG = True
ALLOWED_HOSTS = []

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'django_blog',
        'USER': 'root',
        'PASSWORD': 'helloekwing',
        'PORT': '3306',
        'HOST': 'localhost',
    }
}

from django.urls import path
from django.urls import re_path
from django.conf.urls.static import static
from django.views.static import serve

from vhack.settings import *
from vhack import settings
from .views import *

urlpatterns = [
     path('home', home, name='home'),
     path('login', loginPage, name='login'),
     path('register', registerPage, name='register'),
     path('profile', profilePage, name='profile')
]


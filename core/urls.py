from django.urls import path

from .views import *

urlpatterns = [
     path('home', home, name='home'),
     path('login', loginPage, name='login'),
     path('register', registerPage, name='register'),
     path('profile', profilePage, name='profile'),
     path('logout', logoutUser, name='logoutUser'),
     path('events', events, name='events'),
     path('api/login', loginApi, name='loginApi')
]

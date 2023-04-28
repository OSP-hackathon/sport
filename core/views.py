from calendar import HTMLCalendar
from datetime import datetime

from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from .forms import CreateUserForm, SiteUserForm
from .models import SiteUser
import os
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.models import User

from .classes import EventCalendar
from .forms import CreateUserForm
from .models import SiteUser, Event
from core.models import Event
from django.http import JsonResponse


# Create your views here.


def home(request):
    year = datetime.now().year
    month = datetime.now().month
    cal = EventCalendar(list(Event.objects.all())).formatmonth(year, month)
    context = {'cal': cal}
    return render(request, 'core/index.html', context=context)

@csrf_exempt
def loginApi(request):
    if request.method == 'POST':
        print(request.POST)
        username = request.POST.get("username")
        password = request.POST.get('password')
        print("Username: " + username)
        users2 = list(User.objects.all())
        users = list(User.objects.filter(username=username))
        if len(users2) > 0:
            #login(request, user)
            data = {
                "success": True,
                "username": users2[0].username,
                "uid": users2[0].pk
            }
            return JsonResponse(data)
        else:
            data = {
                "success": False,
                "message": "Incorrect auth data"
            }
            return JsonResponse(data)
    return JsonResponse( {
                "success": False,
                "message": "INVALID REQUEST"
            })


def events(request):
    return render(request, 'core/events.html')


def loginPage(request):
    context = {}
    if request.user.is_authenticated:
        return redirect('home')
    else:
        if request.method == 'POST':
            username = request.POST.get('username')
            password = request.POST.get('password')
            User = authenticate(request, username=username, password=password)

            if User is not None:
                login(request, User)
                return redirect('home')
            else:
                messages.info(request, 'Username or Password is incorrect')
                return render(request, 'core/login.html', context=context)

        return render(request, 'core/login.html', context=context)

def registerPage(request):
    context = {}

    form = CreateUserForm()
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            b = form.save()
            a = SiteUser(user=b)
            a.save()
            return redirect('home')
        else:
            print(form.errors)
    context = {'form': form,
               'user' : request.user.username}

    return render(request, 'core/register.html', context=context)

def profilePage(request):
    obj = SiteUser.objects.get(user=request.user)
    form = SiteUserForm()
    if request.method == 'POST':
        a = SiteUser.objects.get(user=request.user)
        form = SiteUserForm(request.POST, request.FILES, instance=a)
        if form.is_valid():
            form.save()
            return redirect('profile')
        else:
            print(form.errors)
    for field in obj._meta.fields:
        val = getattr(obj, field.name)
        if 'date' in field.name:
            if val is not None:
                form.initial[f'{field.name}'] = val.isoformat()
        else:
            if val is not None:
                form.initial[f'{field.name}'] = val
    context = {'form': form,
               'user': request.user}

    return render(request, 'core/profile.html', context=context)

def logoutUser(request):
    logout(request)
    return redirect('login')
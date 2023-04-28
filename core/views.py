from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from .forms import CreateUserForm
from .models import SiteUser

# Create your views here.


def home(request):
    return render(request, 'core/index.html')

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
    context = {'user' : request.user.username}
    return render(request, 'core/profile.html', context=context)

def logoutUser(request):
    logout(request)
    return redirect('login')
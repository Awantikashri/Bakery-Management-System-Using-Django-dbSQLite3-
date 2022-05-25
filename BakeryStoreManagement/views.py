from django.contrib.auth.forms import UserCreationForm
from django.http import *
from django.shortcuts import redirect, render
from django.template import RequestContext, context
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from .forms import CreateUserForm
from django.contrib import messages


def registerPage(request):
    #form = CreateUserForm()
    form = UserCreationForm()
    if request.method == 'POST':
       form = UserCreationForm(request.POST)
       if form.is_valid():
           form.save()
           return redirect('login')

    context = {'form':form}
    return render(request,'register.html',context)

def loginPage(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request,username=username,password=password)

        if user is not None:
            login(request,user)
            return redirect('homepage')
        else:
            messages.error(request,'username or password not correct')
            return redirect('login')
       
    context={}
    return render(request,'loginpage.html',context)

def logoutUser(request):
    logout(request)
    return redirect('login')

@login_required(login_url='login')
def homepage(request):
    return render(request,'homepageview.html')
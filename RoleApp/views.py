from django.shortcuts import render,redirect
from .models import UserProfile,loginTable
from django.contrib import messages
from django.contrib.auth import logout

# Create your views here.
def UserRegistration(request):

    login_table=loginTable()
    userprofile=UserProfile()

    if request.method=='POST':
        userprofile.username=request.POST['username']
        userprofile.password=request.POST['password']
        userprofile.password2=request.POST['password1']

        login_table.username=request.POST['username']
        login_table.password=request.POST['password']
        login_table.password2=request.POST['password1']
        login_table.type='user'

        if request.POST['password']==request.POST['password1']:
            userprofile.save()
            login_table.save()
            messages.info(request,'Registration Successfull')
            return redirect('login')
    
        else:
            messages.info(request,'password is not match')
            return redirect('register')
    return render(request,'register.html')

def loginPages(request):
    if request.method=='POST':
        username=request.POST['username']
        password=request.POST['password']
        user=loginTable.objects.filter(username=username,password=password,type='user').exists()
        try:
            if user is not None:
                user_details=loginTable.objects.get(username=username,password=password)
                user_name=user_details.username
                type=user_details.type
                if type=='user':
                    request.session['username']=user_name
                    return redirect('userHome')
                elif type=='admin':
                    request.session['username']=user_name
                    return redirect('adminHome') 
            else:
                messages.error(request,'invalid username or password')
        except:
            messages.error(request,'invalid role')
    return render(request,'login.html')    

def logOut(request):
    logout(request)
    return redirect('login')
def userHome(request):
    user_name=request.session['username']
    return render(request,'userHome.html',{'user_name':user_name})
def adminHome(request):
    user_name=request.session['username']
    return render(request,'adminHome.html',{'user_name':user_name})









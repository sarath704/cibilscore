from random import randint

from django.core.mail import EmailMultiAlternatives
from django.shortcuts import render, redirect

# Create your views here.
from bankadmin.models import BankReport
from cibilsystem.settings import DEFAULT_FROM_EMAIL
from user.forms import NameForm, UserForm, LoanForm, ScoreForm
from user.models import RegisterForm, LoanRequest, UserDetails


def index(request):
    if request.method == "POST":
        usid = request.POST.get('userid','')
        pswd = request.POST.get('password','')
        try:
            enter = RegisterForm.objects.get(userid=usid,password=pswd)
            request.session['userid']=enter.id
            return redirect('enteruserdetails')
        except:
            pass
    return render(request,'user/index.html')

def register(request):
    if request.method == "POST":
        forms = NameForm(request.POST)
        if forms.is_valid():
            forms.save()
            return redirect('index')
    else:
        forms=NameForm()
    return render(request,'user/register.html',{'form':forms})

def enteruserdetails(request):
    if request.method == "POST":
        forms = UserForm(request.POST)
        if forms.is_valid():
            forms.save()
    else:
        forms = UserForm()
    return render(request,'user/enteruserdetails.html',{'form':forms})

def loanrequest(request):
    if request.method == "POST":
        forms = LoanForm(request.POST)
        if forms.is_valid():
            forms.save()
    else:
        forms = LoanForm()
    return render(request,'user/loanrequest.html',{'form':forms})
def viewbankadminresponse(request):
    obj = LoanRequest.objects.all()
    return render(request, 'user/viewbankadminresponse.html', {'list_objects': obj})
def cibilscore(request):
    sts='check'
    obj=None
    dd='dd'
    if request.method=="POST":
        if 'sendotp' in request.POST:
            uid = request.session['userid']
            request_obj = RegisterForm.objects.get(id=uid)
            subject = "OTP"
            text_content = ""
            otp = randint(1000, 9999)
            request.session['otp'] = otp
            html_content = "<br/><p>OTP :<strong>" + str(otp) + "</strong></p>"
            from_mail = DEFAULT_FROM_EMAIL
            to_mail = [request_obj.emailid]
            msg = EmailMultiAlternatives(subject, text_content, from_mail, to_mail)
            msg.attach_alternative(html_content, "text/html")
            if msg.send():
                sts = 'sent'
        elif 'getdetails' in request.POST:
            dd='fff'
            otpSession = request.session['otp']
            otpEntered = request.POST.get('otpval','')
            dd=otpEntered
            if int(otpEntered)==int(otpSession):
                dd = 'ttt'
                pannum = request.POST.get('pannum', '')
                obj = BankReport.objects.filter(pancard=pannum)
            else:
                sts='Please Enter Correct Otp'

    else:
        obj = ''
    return render(request,'user/cibilscore.html',{'obj':obj,'sts':sts,'dd':dd})

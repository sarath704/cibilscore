from django.shortcuts import render, redirect, get_object_or_404

# Create your views here.
from bankadmin.forms import BankadminForm, ReportForm
from bankadmin.models import BankReport, BankadminDetails
from user.models import UserDetails, LoanRequest


def bankadminlogin(request):
    if request.method == "POST":
        usid = request.POST.get('userid', '')
        pswd = request.POST.get('password', '')
        try:
            enter = BankadminDetails.objects.get(userid=usid, password=pswd)
            request.session['userid'] = enter.id
            return redirect('viewuserdetails')
        except:
            pass
    return render(request, 'bankadmin/bankadminlogin.html')


def bankregister(request):
    if request.method == "POST":
        forms = BankadminForm(request.POST)
        if forms.is_valid():
            forms.save()
            return redirect('bankadminlogin')
    else:
        forms=BankadminForm()
    return render(request,'bankadmin/bankregister.html',{'form':forms})


def viewuserdetails(request):
    obj = UserDetails.objects.all()
    return render(request,'bankadmin/viewuserdetails.html', {'list_objects': obj})
def senduserdetails(request):
    if request.method == "POST":
        forms = ReportForm(request.POST)
        if forms.is_valid():
            forms.save()
            return redirect('viewuserdetails')
    else:
        forms=ReportForm()
    return render(request,'bankadmin/senduserdetails.html',{'form':forms})


def updateuserdetails(request,pk):
    objects = UserDetails.objects.get(id=pk)
    if request.method == "POST":
        Name = request.POST.get('Name', '')
        FatherName = request.POST.get('FatherName', '')
        MotherName = request.POST.get('MotherName', '')
        DateOfBirth = request.POST.get('DateOfBirth', '')
        Age = request.POST.get('Age', '')
        Gender = request.POST.get('Gender', '')
        MaritalStatus = request.POST.get('MaritalStatus', '')
        MobileNumber = request.POST.get('MobileNumber', '')
        EmailId = request.POST.get('EmailId', '')
        Qualification = request.POST.get('Qualification', '')
        Incomeyearly = request.POST.get('Incomeyearly', '')
        PancardNumber = request.POST.get('PancardNumber', '')
        AadharNumber = request.POST.get('AadharNumber', '')
        Address = request.POST.get('Address', '')
        City = request.POST.get('City', '')

        obj = get_object_or_404(UserDetails, pk=pk)
        obj.name = Name
        obj.fathername = FatherName
        obj.mothername =  MotherName
        obj.dob =  DateOfBirth
        obj.age =  Age
        obj.gender =  Gender
        obj.maritalstatus =  MaritalStatus
        obj.mobilenumber =  MobileNumber
        obj.emailid =  EmailId
        obj.qualification =  Qualification
        obj.income =  Incomeyearly
        obj.panno = PancardNumber
        obj.aadharnumber =  AadharNumber
        obj.address =  Address
        obj.city = City
        obj.save(update_fields=["name", "fathername", "mothername", "dob", "age", "gender", "maritalstatus","mobilenumber", "emailid", "qualification","income","panno","aadharnumber","address","city", ])
        return redirect('viewuserdetails')
    return render(request,'bankadmin/updateuserdetails.html',{'obj':objects})


def viewloanrequest(request):
    obj = LoanRequest.objects.all()
    return render(request, 'bankadmin/viewloanrequest.html', {'list_objects': obj})
def requestdeleteobj(request, pk):
    obj = get_object_or_404(LoanRequest, pk=pk)
    obj.delete()
    return redirect('viewloanrequest')
def accept(request,pk):
    obj=LoanRequest.objects.get(id=pk)
    obj.requestStatus = "accpted"
    obj.save(update_fields=["requestStatus"])
    return redirect('viewloanrequest')

def reject(request,pk):
    obj=LoanRequest.objects.get(id=pk)
    obj.requestStatus = "rejected"
    obj.save(update_fields=["requestStatus"])
    return redirect('viewloanrequest')
def bankadminviewscore(request):
    if request.method=="POST":
        pannum = request.POST.get('pannum','')
        obj = BankReport.objects.filter(pancard=pannum)
    else:
        obj = ''
    return render(request,'bankadmin/bankadminviewscore.html',{'obj':obj})
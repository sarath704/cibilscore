from django.shortcuts import render, redirect, get_object_or_404

# Create your views here.
from bankadmin.models import BankReport
from user.models import UserDetails


def cibillogin(request):
    if request.method == "POST":
        if request.method == "POST":
            usid = request.POST.get('userid')
            pswd = request.POST.get('password')
            if usid == 'admin' and pswd == 'admin':
                return redirect('viewupdatedetails')

    return render(request,'cibiladmin/cibillogin.html')
def viewupdatedetails(request):
    obj = UserDetails.objects.all()
    return render(request, 'cibiladmin/viewupdatedetails.html', {'list_objects': obj})

def viewbankreport(request):
    obj = BankReport.objects.all()
    return render(request,'cibiladmin/viewbankreport.html',{'list_object': obj})

def updatebankreport(request,pk):
    objects = BankReport.objects.get(id=pk)
    if request.method == "POST":
        Name = request.POST.get('Name', '')
        Pancard = request.POST.get('Pancard', '')
        MobileNumber = request.POST.get('MobileNumber', '')
        LoanAmount = request.POST.get('LoanAmount', '')
        LoanDuration = request.POST.get('LoanDuration', '')
        ComplateDuration = request.POST.get('ComplateDuration', '')
        TotalAmount = request.POST.get('TotalAmount', '')
        PaidAmount = request.POST.get('PaidAmount', '')
        BalanceAmount = request.POST.get('BalanceAmount', '')
        MinimamBalanceFine = request.POST.get('MinimamBalanceFine', '')
        ATMFine = request.POST.get('ATMFine', '')
        ModificationFine = request.POST.get('ModificationFine', '')
        CheckBounch = request.POST.get('CheckBounch', '')
        LoanType = request.POST.get('LoanType', '')
        Durations = request.POST.get('Durations', '')
        CreditDetails = request.POST.get('CreditDetails', '')
        Result = request.POST.get('Result', '')

        obj = get_object_or_404(BankReport, pk=pk)
        obj.name = Name
        obj.pancard = Pancard
        obj.mobilenumber = MobileNumber
        obj.loancount = LoanAmount
        obj.loanduration = LoanDuration
        obj.complateduration = ComplateDuration
        obj.totalamount = TotalAmount
        obj.paidamount = PaidAmount
        obj.balanceamount = BalanceAmount
        obj.minimambalancefine = MinimamBalanceFine
        obj.atmusagefine = ATMFine
        obj.modificationfine = ModificationFine
        obj.checkbounch = CheckBounch
        obj.loantype = LoanType
        obj.duration = Durations
        obj.creditdetails = CreditDetails
        obj.result = Result
        obj.save(update_fields=["name", "pancard", "mobilenumber", "loancount", "loanduration", "complateduration", "totalamount", "paidamount", "balanceamount", "minimambalancefine", "atmusagefine","modificationfine", "checkbounch", "loantype", "duration", "creditdetails", "result"])
        return redirect('viewbankreport')
    return render(request, 'cibiladmin/bankreportupdate.html', {'obj': objects})

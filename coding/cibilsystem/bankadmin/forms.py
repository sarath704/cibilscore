from django import forms

from bankadmin.models import BankadminDetails, BankReport


class BankadminForm(forms.ModelForm):
    class Meta:
        model = BankadminDetails
        fields = ('firstname','lastname','userid','password','mobilenumber','emailid','gender',)
class ReportForm(forms.ModelForm):
    class Meta:
        model = BankReport
        fields = ('loancount','loanduration','complateduration','paidamount','balanceamount','minimambalancefine','atmusagefine','modificationfine','checkbounch','loantype','creditdetails','result','duration','totalamount','name','pancard','mobilenumber',)

from django import forms

from bankadmin.models import BankReport
from user.models import RegisterForm, UserDetails, LoanRequest


class NameForm(forms.ModelForm):
    class Meta:
        model = RegisterForm
        fields = ('firstname','lastname','userid','password','mobilenumber','emailid','gender',)

class UserForm(forms.ModelForm):
    address = forms.CharField(widget=forms.Textarea(attrs={'cols': 22, 'rows': 3}))
    class Meta:
        model = UserDetails
        fields = ('name','fathername','mothername','dob','age','gender','maritalstatus','mobilenumber','emailid','qualification','income','panno','aadharnumber','address','city',)

class LoanForm(forms.ModelForm):

    class Meta:
        model = LoanRequest
        fields = ('name','phonenumber','emailid','loantype','requestStatus',)
class ScoreForm(forms.ModelForm):
    class Meta:
        model = BankReport
        fields = ('name','pancard','mobilenumber','result',)
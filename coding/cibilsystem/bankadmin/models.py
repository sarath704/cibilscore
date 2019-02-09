from django.db import models

# Create your models here.
from bankadmin.choices import select_catagory


class BankadminDetails(models.Model):
    firstname = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    userid = models.CharField(max_length=100)
    password = models.IntegerField()
    mobilenumber = models.CharField(max_length=100)
    emailid = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)

class BankReport(models.Model):
    name = models.CharField(max_length=300)
    pancard =models.CharField(max_length=300)
    mobilenumber =models.CharField(max_length=300)
    loancount = models.CharField(max_length=300)
    loanduration = models.CharField(max_length=300)
    complateduration = models.CharField(max_length=300)
    totalamount = models.CharField(max_length=300)
    paidamount = models.CharField(max_length=300)
    balanceamount = models.CharField(max_length=300)
    minimambalancefine = models.CharField(max_length=300)
    atmusagefine = models.CharField(max_length=300)
    modificationfine = models.CharField(max_length=300)
    checkbounch = models.CharField(max_length=300)
    loantype = models.CharField(max_length=300,choices=select_catagory,)
    duration =models.CharField(max_length=300)
    creditdetails = models.CharField(max_length=300)
    result = models.CharField(max_length=300)
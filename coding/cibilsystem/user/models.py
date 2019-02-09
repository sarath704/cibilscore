from django.db import models

# Create your models here.
from user.choices import selects_catagory


class RegisterForm(models.Model):
    firstname = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    userid = models.CharField(max_length=100)
    password = models.IntegerField(max_length=100)
    mobilenumber = models.CharField(max_length=100)
    emailid = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)

class UserDetails(models.Model):
    name = models.CharField(max_length=300)
    fathername = models.CharField(max_length=300)
    mothername = models.CharField(max_length=300)
    dob = models.CharField(max_length=300)
    age = models.CharField(max_length=300)
    gender = models.CharField(max_length=300)
    maritalstatus = models.CharField(max_length=300)
    mobilenumber = models.CharField(max_length=300)
    emailid = models.CharField(max_length=300)
    qualification = models.CharField(max_length=300)
    income = models.CharField(max_length=300)
    panno = models.CharField(max_length=300)
    aadharnumber = models.CharField(max_length=300)
    address = models.CharField(max_length=300)
    city = models.CharField(max_length=300)

class LoanRequest(models.Model):
    name = models.CharField(max_length=300)
    phonenumber = models.CharField(max_length=300)
    emailid = models.CharField(max_length=300)
    loantype = models.CharField(max_length=300,choices=selects_catagory,)
    requestStatus = models.CharField(max_length=100, default='Pending')

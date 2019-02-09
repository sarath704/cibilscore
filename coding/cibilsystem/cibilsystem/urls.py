"""cibilsystem URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from user import views as user_views
from bankadmin import views as bankadmin_views
from cibiladmin import views as cibiladmin_views

urlpatterns = [
    url(r'^admin/', admin.site.urls),


    url('^$',user_views.index,name="index"),
    url('register/$',user_views.register,name="register"),
    url('enteruserdetails/$',user_views.enteruserdetails,name="enteruserdetails"),
    url('user/loanrequest/$',user_views.loanrequest,name="loanrequest"),
    url('user/viewbankadminresponse/$',user_views.viewbankadminresponse,name="viewbankadminresponse"),
    url('user/cibilscore',user_views.cibilscore,name="cibilscore"),



    url('^bankadminlogin/$',bankadmin_views.bankadminlogin,name="bankadminlogin"),
    url('^bankadmin/rr/$',bankadmin_views.bankregister,name="bankregister"),
    url('^bankadmin/viewuserdetails/$',bankadmin_views.viewuserdetails,name="viewuserdetails"),
    url('^bankadmin/bankadminviewscore/$',bankadmin_views.bankadminviewscore,name="bankadminviewscore"),
    url('^bankadmin/viewloanrequest/$',bankadmin_views.viewloanrequest,name="viewloanrequest"),
    url('^bankadmin/senduserdetails/$',bankadmin_views.senduserdetails,name="senduserdetails"),
    url('^bankadmin/updateuserdetails/(?P<pk>\d+)/$',bankadmin_views.updateuserdetails,name="updateuserdetails"),
    url('^admin/accept/(?P<pk>\d+)/$', bankadmin_views.accept, name="accept"),
    url('^admin/reject/(?P<pk>\d+)/$',bankadmin_views.reject, name="reject"),
    url('admin/requestdeleteobj/(?P<pk>\d+)/$',bankadmin_views.requestdeleteobj, name="requestdeleteobj"),



    url('cibiladminlogin/$',cibiladmin_views.cibillogin,name="cibillogin"),
    url('cibiladmin/viewupdatedetails/$',cibiladmin_views.viewupdatedetails,name="viewupdatedetails"),
    url('cibiladmin/viewbankreport/$',cibiladmin_views.viewbankreport,name="viewbankreport"),
    url('cibiladmin/updatebankreport/(?P<pk>\d+)/$',cibiladmin_views.updatebankreport,name="updatebankreport"),

]

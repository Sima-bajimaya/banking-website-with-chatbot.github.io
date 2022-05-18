#!C:\Users\user\anaconda3\envs\chats\python.exe
import cgi
import cgitb

from train.bank_working_with_db import verify_forget_otp
form = cgi.FieldStorage()
cgitb.enable(display=0, logdir="D:\\logs")
print("Content-type:text/html\r\n\r\n")


if form.getvalue('otp') is not None:
    otp = form.getvalue('otp')
    email=form.getvalue('email')
    flag = verify_forget_otp(email,otp)
    if flag==1:
        print("1")
    else:
        print("0")
else:
	print("0")
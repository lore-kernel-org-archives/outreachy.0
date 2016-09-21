X-GM-THRID: 6332661608531099648
Date: Tue, 20 Sep 2016 23:01:18 -0700 (PDT)
From: gnudevliz@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com>
Subject: Mutt/Gmail Issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6546_1484875776.1474437678560"
X-Google-Token: EK7EiL8FIlCpJdoTCAk0
X-Google-IP: 2601:644:300:3c2c:4e0f:6eff:fe69:e9ea

------=_Part_6546_1484875776.1474437678560
Content-Type: multipart/alternative; 
	boundary="----=_Part_6547_1248164112.1474437678560"

------=_Part_6547_1248164112.1474437678560
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello everyone, 

I'm on Debian Jessie and I cannot get mutt to send email. I can receive 
emails and view my inbox in Mutt but I can't send messages. I can send them 
to myself though. I can't send them to another email address. 

When I use mutt to send an email I keep getting this HELO/ELHO error:

SMTP session failed: 501 5.5.4  https://support.google.com/mail/?p=helo 
yg10sm21072351pab.8 - gsmtp

That brings me to this page:
https://support.google.com/mail/answer/6386757?visit_id=1-636100243312716080-1894628512&p=helo&rd=1

I can't figure out how to resolve this issue. My 2 factor is off and I'm 
allowing login from unsecure apps. I'm also trying to use ssmtp instead of 
esmtp but the same thing happens in mutt. 

When i do
$ sudo ssmtp someemail@gmail.com 

the email does actually go through though, but it says from root. 

If anyone has suggestions I would really appreciate it!
Thanks,
Liz

------=_Part_6547_1248164112.1474437678560
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,=C2=A0<div><br></div><div>I&#39;m on Debian=
 Jessie and I cannot get mutt to send email. I can receive emails and view =
my inbox in Mutt but I can&#39;t send messages. I can send them to myself t=
hough. I can&#39;t send them to another email address.=C2=A0</div><div><br>=
</div><div>When I use mutt to send an email I keep getting this HELO/ELHO e=
rror:</div><div><br></div><div><div>SMTP session failed: 501 5.5.4 =C2=A0ht=
tps://support.google.com/mail/?p=3Dhelo yg10sm21072351pab.8 - gsmtp</div><d=
iv><br></div></div><div>That brings me to this page:</div><div>https://supp=
ort.google.com/mail/answer/6386757?visit_id=3D1-636100243312716080-18946285=
12&amp;p=3Dhelo&amp;rd=3D1<br></div><div><br></div><div>I can&#39;t figure =
out how to resolve this issue. My 2 factor is off and I&#39;m allowing logi=
n from unsecure apps. I&#39;m also trying to use ssmtp instead of esmtp but=
 the same thing happens in mutt.=C2=A0</div><div><br></div><div>When i do</=
div><div>$ sudo ssmtp someemail@gmail.com=C2=A0</div><div><br></div><div>th=
e email does actually go through though, but it says from root.=C2=A0</div>=
<div><br></div><div>If anyone has suggestions I would really appreciate it!=
</div><div>Thanks,</div><div>Liz</div></div>
------=_Part_6547_1248164112.1474437678560--

------=_Part_6546_1484875776.1474437678560--


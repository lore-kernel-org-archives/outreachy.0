X-GM-THRID: 6332661608531099648
Date: Wed, 21 Sep 2016 12:48:59 -0700 (PDT)
From: gnudevliz@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <649173d5-38d8-43e3-af3b-a81aab81311d@googlegroups.com>
In-Reply-To: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com>
Subject: Re: Mutt/Gmail Issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_35_1670756672.1474487339306"
X-Google-Token: EKvIi78FF24c1FN8WLI0
X-Google-IP: 2601:644:300:3c2c:4e0f:6eff:fe69:e9ea

------=_Part_35_1670756672.1474487339306
Content-Type: multipart/alternative; 
	boundary="----=_Part_36_1545613441.1474487339306"

------=_Part_36_1545613441.1474487339306
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi everyone, 

Thanks for your replies. I've tried many .muttrc config changes and Gmail 
setup but I keep getting the same error.
I think I'm supposed to set up a FQDN (Fully Qualified Domain Name). Mutt 
keeps telling me there is no HELO/ELHO argument

On Tuesday, September 20, 2016 at 11:01:18 PM UTC-7, gnud...@gmail.com 
wrote:
>
> Hello everyone, 
>
> I'm on Debian Jessie and I cannot get mutt to send email. I can receive 
> emails and view my inbox in Mutt but I can't send messages. I can send them 
> to myself though. I can't send them to another email address. 
>
> When I use mutt to send an email I keep getting this HELO/ELHO error:
>
> SMTP session failed: 501 5.5.4  https://support.google.com/mail/?p=helo 
> yg10sm21072351pab.8 - gsmtp
>
> That brings me to this page:
>
> https://support.google.com/mail/answer/6386757?visit_id=1-636100243312716080-1894628512&p=helo&rd=1
>
> I can't figure out how to resolve this issue. My 2 factor is off and I'm 
> allowing login from unsecure apps. I'm also trying to use ssmtp instead of 
> esmtp but the same thing happens in mutt. 
>
> When i do
> $ sudo ssmtp someemail@gmail.com 
>
> the email does actually go through though, but it says from root. 
>
> If anyone has suggestions I would really appreciate it!
> Thanks,
> Liz
>

------=_Part_36_1545613441.1474487339306
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,=C2=A0<div><br></div><div>Thanks for your repl=
ies. I&#39;ve tried many .muttrc config changes and Gmail setup but I keep =
getting the same error.</div><div>I think I&#39;m supposed to set up a FQDN=
 (Fully Qualified Domain Name). Mutt keeps telling me there is no HELO/ELHO=
 argument</div><div><br>On Tuesday, September 20, 2016 at 11:01:18 PM UTC-7=
, gnud...@gmail.com wrote:<blockquote class=3D"gmail_quote" style=3D"margin=
: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div=
 dir=3D"ltr">Hello everyone,=C2=A0<div><br></div><div>I&#39;m on Debian Jes=
sie and I cannot get mutt to send email. I can receive emails and view my i=
nbox in Mutt but I can&#39;t send messages. I can send them to myself thoug=
h. I can&#39;t send them to another email address.=C2=A0</div><div><br></di=
v><div>When I use mutt to send an email I keep getting this HELO/ELHO error=
:</div><div><br></div><div><div>SMTP session failed: 501 5.5.4 =C2=A0<a hre=
f=3D"https://support.google.com/mail/?p=3Dhelo" target=3D"_blank" onmousedo=
wn=3D"this.href=3D&#39;https://support.google.com/mail/?p\x3dhelo&#39;;retu=
rn true;" onclick=3D"this.href=3D&#39;https://support.google.com/mail/?p\x3=
dhelo&#39;;return true;">https://support.google.com/<wbr>mail/?p=3Dhelo</a>=
 yg10sm21072351pab.8 - gsmtp</div><div><br></div></div><div>That brings me =
to this page:</div><div><a href=3D"https://support.google.com/mail/answer/6=
386757?visit_id=3D1-636100243312716080-1894628512&amp;p=3Dhelo&amp;rd=3D1" =
target=3D"_blank" onmousedown=3D"this.href=3D&#39;https://support.google.co=
m/mail/answer/6386757?visit_id\x3d1-636100243312716080-1894628512\x26p\x3dh=
elo\x26rd\x3d1&#39;;return true;" onclick=3D"this.href=3D&#39;https://suppo=
rt.google.com/mail/answer/6386757?visit_id\x3d1-636100243312716080-18946285=
12\x26p\x3dhelo\x26rd\x3d1&#39;;return true;">https://support.google.com/<w=
br>mail/answer/6386757?visit_id=3D<wbr>1-636100243312716080-<wbr>1894628512=
&amp;p=3Dhelo&amp;rd=3D1</a><br></div><div><br></div><div>I can&#39;t figur=
e out how to resolve this issue. My 2 factor is off and I&#39;m allowing lo=
gin from unsecure apps. I&#39;m also trying to use ssmtp instead of esmtp b=
ut the same thing happens in mutt.=C2=A0</div><div><br></div><div>When i do=
</div><div>$ sudo ssmtp <a href=3D"mailto:someemail@gmail.com" target=3D"_b=
lank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:someemail@gma=
il.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:someemail@gmai=
l.com&#39;;return true;">someemail@gmail.com</a>=C2=A0</div><div><br></div>=
<div>the email does actually go through though, but it says from root.=C2=
=A0</div><div><br></div><div>If anyone has suggestions I would really appre=
ciate it!</div><div>Thanks,</div><div>Liz</div></div></blockquote></div></d=
iv>
------=_Part_36_1545613441.1474487339306--

------=_Part_35_1670756672.1474487339306--


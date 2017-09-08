X-GM-THRID: 6463164323927687168
Date: Fri, 8 Sep 2017 02:50:53 -0700 (PDT)
From: Neetu Yadav <yadavneet7@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <96608ef0-4850-47f6-a6e1-e2fb5df3015c@googlegroups.com>
In-Reply-To: <20170908051133.GA22581@kroah.com>
References: <405d02a3-830c-4edf-94f8-26a22db5d71b@googlegroups.com>
 <CAOCi2DEA4wbfkpouWZsZ=3BGX_sju9um2mAd0XADn9t_mFZjJA@mail.gmail.com>
 <978eb67d-8c0f-4089-83d0-eb93a5a9bcdd@googlegroups.com>
 <20170908051133.GA22581@kroah.com>
Subject: Re: [Outreachy kernel] Not able to send mail to the mailing list
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4559_1889923358.1504864253502"
X-Google-Token: EP3Pyc0Fn3v_CZpfJBA0
X-Google-IP: 182.74.44.1

------=_Part_4559_1889923358.1504864253502
Content-Type: multipart/alternative; 
	boundary="----=_Part_4560_1389311084.1504864253502"

------=_Part_4560_1389311084.1504864253502
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello sir,

you said:

>Your emails to the list
>are in html format, and the kernel mailing lists will block that type of
>email, for obvious reasons.

Does that mean my mail was received by the list? I don't know how they end 
up in HTML format.
But I followed your video tutorial on sending the first patch, and did this:

gitconfig :

[user]
    name = Neetu Yadav
    email = yadavneet7@gmail.com

and then I did this:

neetu@neetu-Lenovo-G50-70:~/git/kernels/staging$ git send-email 
--smtp-debug=1 --to  f2015079@hyderabad.bits-pilani.ac.in 
0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch
0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch
(mbox) Adding cc: Neetu <yadavneet7@gmail.com> from line 'From: Neetu <
yadavneet7@gmail.com>'
(body) Adding cc: Neetu <yadavneet7@gmail.com> from line 'Signed-off-by: 
Neetu <yadavneet7@gmail.com>'

From: Neetu Yadav <yadavneet7@gmail.com>
To: f2015079@hyderabad.bits-pilani.ac.in
Cc: Neetu <yadavneet7@gmail.com>
Subject: [PATCH 1/2] Staging: rtl8192e: dot11d.c: fixed a coding style issue
Date: Fri,  8 Sep 2017 14:38:30 +0530
Message-Id: <1504861710-16081-1-git-send-email-yadavneet7@gmail.com>
X-Mailer: git-send-email 2.7.4

    The Cc list above has been expanded by additional
    addresses found in the patch commit message. By default
    send-email prompts before sending whenever this occurs.
    This behavior is controlled by the sendemail.confirm
    configuration setting.

    For additional information, run 'git send-email --help'.
    To retain the current behavior, but squelch this message,
    run 'git config --global sendemail.confirm auto'.

Send this email? ([y]es|[n]o|[q]uit|[a]ll): y
OK. Log says:
Sendmail: /usr/sbin/sendmail -i f2015079@hyderabad.bits-pilani.ac.in 
yadavneet7@gmail.com
From: Neetu Yadav <yadavneet7@gmail.com>
To: f2015079@hyderabad.bits-pilani.ac.in
Cc: Neetu <yadavneet7@gmail.com>
Subject: [PATCH 1/2] Staging: rtl8192e: dot11d.c: fixed a coding style issue
Date: Fri,  8 Sep 2017 14:38:30 +0530
Message-Id: <1504861710-16081-1-git-send-email-yadavneet7@gmail.com>
X-Mailer: git-send-email 2.7.4

Result: OK

It looked like the mail was sent , but when I checked the inbox, it wasn't 
there.
Also , I have enabled "access for less secure apps" in Gmail. I have 
enabled IMAP as well.
Is there anything else I need to do?
Please help me.

Thanks,
Neetu

------=_Part_4560_1389311084.1504864253502
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello sir,<br><br></div>you =
said:</div><span class=3D"im"><div><br></div><div>&gt;Your emails to the li=
st<br>
&gt;are in html format, and the kernel mailing lists will block that type o=
f<br>
&gt;email, for obvious reasons.<br></div><div><br></div></span><div>Does th=
at mean my mail was received by the list? I don&#39;t know how they end up =
in HTML format.</div><div>But I followed your video tutorial on sending the=
 first patch, and did this:</div><div><br></div><div>gitconfig :</div><div>=
<br></div><div><span style=3D"color:rgb(53,28,117)">[user]<br>=C2=A0=C2=A0=
=C2=A0 name =3D Neetu Yadav<br>=C2=A0=C2=A0=C2=A0 email =3D <a href=3D"mail=
to:yadavneet7@gmail.com" target=3D"_blank">yadavneet7@gmail.com</a></span><=
/div><div><br></div><div>and then I did this:</div><div><br></div><span sty=
le=3D"color:rgb(53,28,117)"><span class=3D"im">neetu@neetu-Lenovo-G50-70:~/=
<wbr>git/kernels/staging$ git send-email --smtp-debug=3D1 --to=C2=A0 <a hre=
f=3D"mailto:f2015079@hyderabad.bits-pilani.ac.in" target=3D"_blank">f201507=
9@hyderabad.bits-<wbr>pilani.ac.in</a> 0001-Staging-rtl8192e-dot11d.<wbr>c-=
fixed-a-coding-style-issue.<wbr>patch<br>0001-Staging-rtl8192e-dot11d.<wbr>=
c-fixed-a-coding-style-issue.<wbr>patch<br></span>(mbox) Adding cc: Neetu &=
lt;<a href=3D"mailto:yadavneet7@gmail.com" target=3D"_blank">yadavneet7@gma=
il.com</a>&gt; from line &#39;From: Neetu &lt;<a href=3D"mailto:yadavneet7@=
gmail.com" target=3D"_blank">yadavneet7@gmail.com</a>&gt;&#39;<br>(body) Ad=
ding cc: Neetu &lt;<a href=3D"mailto:yadavneet7@gmail.com" target=3D"_blank=
">yadavneet7@gmail.com</a>&gt; from line &#39;Signed-off-by: Neetu &lt;<a h=
ref=3D"mailto:yadavneet7@gmail.com" target=3D"_blank">yadavneet7@gmail.com<=
/a>&gt;&#39;<br><br>From: Neetu Yadav &lt;<a href=3D"mailto:yadavneet7@gmai=
l.com" target=3D"_blank">yadavneet7@gmail.com</a>&gt;<br>To: <a href=3D"mai=
lto:f2015079@hyderabad.bits-pilani.ac.in" target=3D"_blank">f2015079@hydera=
bad.bits-<wbr>pilani.ac.in</a><br>Cc: Neetu &lt;<a href=3D"mailto:yadavneet=
7@gmail.com" target=3D"_blank">yadavneet7@gmail.com</a>&gt;<br>Subject: [PA=
TCH 1/2] Staging: rtl8192e: dot11d.c: fixed a coding style issue<br>Date: F=
ri,=C2=A0 8 Sep 2017 14:38:30 +0530<br>Message-Id: &lt;<a href=3D"mailto:15=
04861710-16081-1-git-send-email-yadavneet7@gmail.com" target=3D"_blank">150=
4861710-16081-1-git-send-<wbr>email-yadavneet7@gmail.com</a>&gt;<br>X-Maile=
r: git-send-email 2.7.4<br><br>=C2=A0=C2=A0=C2=A0 The Cc list above has bee=
n expanded by additional<br>=C2=A0=C2=A0=C2=A0 addresses found in the patch=
 commit message. By default<br>=C2=A0=C2=A0=C2=A0 send-email prompts before=
 sending whenever this occurs.<br>=C2=A0=C2=A0=C2=A0 This behavior is contr=
olled by the sendemail.confirm<br>=C2=A0=C2=A0=C2=A0 configuration setting.=
<br><br>=C2=A0=C2=A0=C2=A0 For additional information, run &#39;git send-em=
ail --help&#39;.<br>=C2=A0=C2=A0=C2=A0 To retain the current behavior, but =
squelch this message,<br>=C2=A0=C2=A0=C2=A0 run &#39;git config --global se=
ndemail.confirm auto&#39;.<br><br>Send this email? ([y]es|[n]o|[q]uit|[a]ll=
): y<br>OK. Log says:<br>Sendmail: /usr/sbin/sendmail -i <a href=3D"mailto:=
f2015079@hyderabad.bits-pilani.ac.in" target=3D"_blank">f2015079@hyderabad.=
bits-<wbr>pilani.ac.in</a> <a href=3D"mailto:yadavneet7@gmail.com" target=
=3D"_blank">yadavneet7@gmail.com</a><br>From: Neetu Yadav &lt;<a href=3D"ma=
ilto:yadavneet7@gmail.com" target=3D"_blank">yadavneet7@gmail.com</a>&gt;<b=
r>To: <a href=3D"mailto:f2015079@hyderabad.bits-pilani.ac.in" target=3D"_bl=
ank">f2015079@hyderabad.bits-<wbr>pilani.ac.in</a><br>Cc: Neetu &lt;<a href=
=3D"mailto:yadavneet7@gmail.com" target=3D"_blank">yadavneet7@gmail.com</a>=
&gt;<br>Subject: [PATCH 1/2] Staging: rtl8192e: dot11d.c: fixed a coding st=
yle issue<br>Date: Fri,=C2=A0 8 Sep 2017 14:38:30 +0530<br>Message-Id: &lt;=
<a href=3D"mailto:1504861710-16081-1-git-send-email-yadavneet7@gmail.com" t=
arget=3D"_blank">1504861710-16081-1-git-send-<wbr>email-yadavneet7@gmail.co=
m</a>&gt;<br>X-Mailer: git-send-email 2.7.4<br><br>Result: OK<br><br></span=
></div><span style=3D"color:rgb(53,28,117)"><font color=3D"#000000">It look=
ed like the mail was sent , but when I checked the inbox, it wasn&#39;t the=
re.<br></font></span></div><div><span style=3D"color:rgb(53,28,117)"><font =
color=3D"#000000">Also , I have enabled &quot;access for less secure apps&q=
uot; in Gmail. I have enabled IMAP as well.</font></span></div><div><span s=
tyle=3D"color:rgb(53,28,117)"><font color=3D"#000000">Is there anything els=
e I need to do?<br></font></span></div><span style=3D"color:rgb(53,28,117)"=
><font color=3D"#000000">Please help me.<br><br></font></span></div><span s=
tyle=3D"color:rgb(53,28,117)"><font color=3D"#000000">Thanks,<br></font></s=
pan></div><span style=3D"color:rgb(53,28,117)"><font color=3D"#000000">Neet=
u</font></span></div>
------=_Part_4560_1389311084.1504864253502--

------=_Part_4559_1889923358.1504864253502--


X-GM-THRID: 6463164323927687168
Date: Fri, 8 Sep 2017 01:58:16 -0700 (PDT)
From: Neetu Yadav <yadavneet7@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <f52d8dfa-ba5f-4342-b623-d40bb6ee1bb2@googlegroups.com>
In-Reply-To: <CAK-LDbJ_XN2UhjiAsm8difSU92=7dFk+mOFTcwzfQHj700iSwQ@mail.gmail.com>
References: <405d02a3-830c-4edf-94f8-26a22db5d71b@googlegroups.com>
 <CAOCi2DEA4wbfkpouWZsZ=3BGX_sju9um2mAd0XADn9t_mFZjJA@mail.gmail.com>
 <978eb67d-8c0f-4089-83d0-eb93a5a9bcdd@googlegroups.com> <20170908051133.GA22581@kroah.com>
 <e1ce502a-6e96-4289-90d1-942daed9266c@googlegroups.com> <25af2cbf-7251-40c8-ae97-2c7f7360054f@googlegroups.com>
 <CAK-LDbJ_XN2UhjiAsm8difSU92=7dFk+mOFTcwzfQHj700iSwQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Not able to send mail to the mailing list
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4435_2035686129.1504861096120"
X-Google-Token: EKi3yc0FnMMTrQdmWA80
X-Google-IP: 182.74.44.1

------=_Part_4435_2035686129.1504861096120
Content-Type: multipart/alternative; 
	boundary="----=_Part_4436_69648977.1504861096120"

------=_Part_4436_69648977.1504861096120
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

But I have already enabled gmail for less secure apps and also enabled 
IMAP. I don't have 2 step authentication.
Also , when I use this as gitconfig:

[user]
    name = Neetu Yadav
    email = yadavneet7@gmail.com

i get this :

neetu@neetu-Lenovo-G50-70:~/git/kernels/staging$ git send-email 
--smtp-debug=1 --to  f2015079@hyderabad.bits-pilani.ac.in 
0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch
0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch
(mbox) Adding cc: Neetu <yadavneet7@gmail.com> from line 'From: Neetu 
<yadavneet7@gmail.com>'
(body) Adding cc: Neetu <yadavneet7@gmail.com> from line 'Signed-off-by: 
Neetu <yadavneet7@gmail.com>'

From: Neetu Yadav <yadavneet7@gmail.com>
To: f2015079@hyderabad.bits-pilani.ac.in
Cc: Neetu <yadavneet7@gmail.com>
Subject: [PATCH 1/2] Staging: rtl8192e: dot11d.c: fixed a coding style issue
Date: Fri,  8 Sep 2017 14:22:45 +0530
Message-Id: <1504860765-14533-1-git-send-email-yadavneet7@gmail.com>
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
Date: Fri,  8 Sep 2017 14:22:45 +0530
Message-Id: <1504860765-14533-1-git-send-email-yadavneet7@gmail.com>
X-Mailer: git-send-email 2.7.4

Result: OK

It seems like it sends the mail, but when I check the inbox, i don't find 
any mail.
Please help me. :(

Thanks
Neetu

------=_Part_4436_69648977.1504861096120
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">But I have already enabled gmail for less secure apps and =
also enabled IMAP. I don&#39;t have 2 step authentication.<br>Also , when I=
 use this as gitconfig:<br><br><span style=3D"color: rgb(0, 0, 255);">[user=
]<br>=C2=A0=C2=A0=C2=A0 name =3D Neetu Yadav<br>=C2=A0=C2=A0=C2=A0 email =
=3D yadavneet7@gmail.com</span><br><br>i get this :<br><br><span style=3D"c=
olor: rgb(0, 0, 0);"><span style=3D"background-color: rgb(255, 255, 255);">=
<span style=3D"color: rgb(53, 28, 117);">neetu@neetu-Lenovo-G50-70:~/git/ke=
rnels/staging$ git send-email --smtp-debug=3D1 --to=C2=A0 f2015079@hyderaba=
d.bits-pilani.ac.in 0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-iss=
ue.patch<br>0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch=
<br>(mbox) Adding cc: Neetu &lt;yadavneet7@gmail.com&gt; from line &#39;Fro=
m: Neetu &lt;yadavneet7@gmail.com&gt;&#39;<br>(body) Adding cc: Neetu &lt;y=
adavneet7@gmail.com&gt; from line &#39;Signed-off-by: Neetu &lt;yadavneet7@=
gmail.com&gt;&#39;<br><br>From: Neetu Yadav &lt;yadavneet7@gmail.com&gt;<br=
>To: f2015079@hyderabad.bits-pilani.ac.in<br>Cc: Neetu &lt;yadavneet7@gmail=
.com&gt;<br>Subject: [PATCH 1/2] Staging: rtl8192e: dot11d.c: fixed a codin=
g style issue<br>Date: Fri,=C2=A0 8 Sep 2017 14:22:45 +0530<br>Message-Id: =
&lt;1504860765-14533-1-git-send-email-yadavneet7@gmail.com&gt;<br>X-Mailer:=
 git-send-email 2.7.4<br><br>=C2=A0=C2=A0=C2=A0 The Cc list above has been =
expanded by additional<br>=C2=A0=C2=A0=C2=A0 addresses found in the patch c=
ommit message. By default<br>=C2=A0=C2=A0=C2=A0 send-email prompts before s=
ending whenever this occurs.<br>=C2=A0=C2=A0=C2=A0 This behavior is control=
led by the sendemail.confirm<br>=C2=A0=C2=A0=C2=A0 configuration setting.<b=
r><br>=C2=A0=C2=A0=C2=A0 For additional information, run &#39;git send-emai=
l --help&#39;.<br>=C2=A0=C2=A0=C2=A0 To retain the current behavior, but sq=
uelch this message,<br>=C2=A0=C2=A0=C2=A0 run &#39;git config --global send=
email.confirm auto&#39;.<br><br>Send this email? ([y]es|[n]o|[q]uit|[a]ll):=
 y<br>OK. Log says:<br>Sendmail: /usr/sbin/sendmail -i f2015079@hyderabad.b=
its-pilani.ac.in yadavneet7@gmail.com<br>From: Neetu Yadav &lt;yadavneet7@g=
mail.com&gt;<span style=3D""></span><span style=3D""></span><br>To: f201507=
9@hyderabad.bits-pilani.ac.in<br>Cc: Neetu &lt;yadavneet7@gmail.com&gt;<br>=
Subject: [PATCH 1/2] Staging: rtl8192e: dot11d.c: fixed a coding style issu=
e<br>Date: Fri,=C2=A0 8 Sep 2017 14:22:45 +0530<br>Message-Id: &lt;15048607=
65-14533-1-git-send-email-yadavneet7@gmail.com&gt;<br>X-Mailer: git-send-em=
ail 2.7.4<br><br>Result: OK</span><br></span></span><br>It seems like it se=
nds the mail, but when I check the inbox, i don&#39;t find any mail.<br>Ple=
ase help me. :(<br><br>Thanks<br>Neetu<br></div>
------=_Part_4436_69648977.1504861096120--

------=_Part_4435_2035686129.1504861096120--


X-GM-THRID: 6463164323927687168
Date: Fri, 8 Sep 2017 00:53:59 -0700 (PDT)
From: Neetu Yadav <yadavneet7@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <25af2cbf-7251-40c8-ae97-2c7f7360054f@googlegroups.com>
In-Reply-To: <e1ce502a-6e96-4289-90d1-942daed9266c@googlegroups.com>
References: <405d02a3-830c-4edf-94f8-26a22db5d71b@googlegroups.com>
 <CAOCi2DEA4wbfkpouWZsZ=3BGX_sju9um2mAd0XADn9t_mFZjJA@mail.gmail.com>
 <978eb67d-8c0f-4089-83d0-eb93a5a9bcdd@googlegroups.com>
 <20170908051133.GA22581@kroah.com>
 <e1ce502a-6e96-4289-90d1-942daed9266c@googlegroups.com>
Subject: Re: [Outreachy kernel] Not able to send mail to the mailing list
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4225_360402753.1504857239459"
X-Google-Token: EJeZyc0FtzfbQvDvuKM0
X-Google-IP: 182.75.45.225

------=_Part_4225_360402753.1504857239459
Content-Type: multipart/alternative; 
	boundary="----=_Part_4226_1579886033.1504857239460"

------=_Part_4226_1579886033.1504857239460
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

this is my ~/.gitconfig :

[user]
    name = Neetu
    email = yadavneet7@gmail.com
[sendemail]
     smtpuser = yadavneet7@gmail.com
     smtpserver = smtp.gmail.com
     smtpencryption = tls
     smtpserverport = 587
     suppresscc = self

and I get this when sending a mail :

neetu@neetu-Lenovo-G50-70:~/git/kernels/staging$ git send-email 
--smtp-debug=1 --to  f2015079@hyderabad.bits-pilani.ac.in 
0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch
0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch
Net::SMTP>>> Net::SMTP(3.05)
Net::SMTP>>>   Net::Cmd(3.05)
Net::SMTP>>>     Exporter(5.72)
Net::SMTP>>>   IO::Socket::IP(0.37)
Net::SMTP>>>     IO::Socket(1.38)
Net::SMTP>>>       IO::Handle(1.35)
Net::SMTP: Net::Cmd::getline(): unexpected EOF on command channel:  at 
/usr/lib/git-core/git-send-email line 1360.
Unable to initialize SMTP properly. Check config and use --smtp-debug. 
VALUES: server=smtp.gmail.com encryption=tls hello=localhost.localdomain 
port=587 at /usr/lib/git-core/git-send-email line 1383.

any help regarding this?

Thanks

Neetu


------=_Part_4226_1579886033.1504857239460
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">this is my ~/.gitconfig :<br><br><span style=3D"color: rgb=
(116, 27, 71);">[user]<br>=C2=A0=C2=A0=C2=A0 name =3D Neetu<br>=C2=A0=C2=A0=
=C2=A0 email =3D yadavneet7@gmail.com<br>[sendemail]<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 smtpuser =3D yadavneet7@gmail.com<br>=C2=A0=C2=A0=C2=A0=C2=A0 smtpse=
rver =3D smtp.gmail.com<br>=C2=A0=C2=A0=C2=A0=C2=A0 smtpencryption =3D tls<=
br>=C2=A0=C2=A0=C2=A0=C2=A0 smtpserverport =3D 587<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 suppresscc =3D self<br><br><font color=3D"#000000">and I get this when =
sending a mail :<br><br></font>neetu@neetu-Lenovo-G50-70:~/git/kernels/stag=
ing$ git send-email --smtp-debug=3D1 --to=C2=A0 f2015079@hyderabad.bits-pil=
ani.ac.in 0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch<b=
r>0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch<br>Net::S=
MTP&gt;&gt;&gt; Net::SMTP(3.05)<br>Net::SMTP&gt;&gt;&gt;=C2=A0=C2=A0 Net::C=
md(3.05)<br>Net::SMTP&gt;&gt;&gt;=C2=A0=C2=A0=C2=A0=C2=A0 Exporter(5.72)<br=
>Net::SMTP&gt;&gt;&gt;=C2=A0=C2=A0 IO::Socket::IP(0.37)<br>Net::SMTP&gt;&gt=
;&gt;=C2=A0=C2=A0=C2=A0=C2=A0 IO::Socket(1.38)<br>Net::SMTP&gt;&gt;&gt;=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IO::Handle(1.35)<br>Net::SMTP: Net::Cmd::=
getline(): unexpected EOF on command channel:=C2=A0 at /usr/lib/git-core/gi=
t-send-email line 1360.<br>Unable to initialize SMTP properly. Check config=
 and use --smtp-debug. VALUES: server=3Dsmtp.gmail.com encryption=3Dtls hel=
lo=3Dlocalhost.localdomain port=3D587 at /usr/lib/git-core/git-send-email l=
ine 1383.<br><br></span>any help regarding this?<br><br>Thanks<br><br>Neetu=
<br><br></div>
------=_Part_4226_1579886033.1504857239460--

------=_Part_4225_360402753.1504857239459--


X-GM-THRID: 6391489857245413376
Date: Wed, 1 Mar 2017 10:43:25 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, gregkh@linuxfoundation.org
Message-Id: <974fe4f8-b3fb-4aac-8ddc-c6f03b66a6cf@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702281901240.2171@hadrien>
References: <58b5b1d0.024a620a.27ba9.a047@mx.google.com>
 <alpine.DEB.2.20.1702281901240.2171@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: emxx_udc: Add comment
 for spinlock_t definition.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10763_739731551.1488393805534"
X-Google-Token: EM2s3MUFT_XE-K2Qv200
X-Google-IP: 2405:204:540b:daa3:20ed:35b8:482:1b22

------=_Part_10763_739731551.1488393805534
Content-Type: multipart/alternative; 
	boundary="----=_Part_10764_1070182530.1488393805534"

------=_Part_10764_1070182530.1488393805534
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> I don't understand the purpose of the above.  It is common knowledge. 
>
    
    I just wanted to tell, by explaining about spinlocks that members of 
nbu2ss_udc structure are critical region resources.

>
> > In this patch, comment is added for spinlock_t definition, to fix the 
> > following checkpatch issue: 
>
> What you could explain more about is how you chose the comment. 
>
    
    Okay, I'll send v2 of this patch.
    
    Thanks,
    Varsha

------=_Part_10764_1070182530.1488393805534
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">I don&#39=
;t understand the purpose of the above. =C2=A0It is common knowledge.
<br></blockquote><div>=C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 I just wanted to tell=
, by explaining about spinlocks that members of nbu2ss_udc structure are cr=
itical region resources.<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">
<br>&gt; In this patch, comment is added for spinlock_t definition, to fix =
the
<br>&gt; following checkpatch issue:
<br>
<br>What you could explain more about is how you chose the comment.
<br></blockquote><div>=C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 Okay, I&#39;ll send v=
2 of this patch.<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 Thanks,<br>=
=C2=A0=C2=A0=C2=A0 Varsha<br></div></div>
------=_Part_10764_1070182530.1488393805534--

------=_Part_10763_739731551.1488393805534--


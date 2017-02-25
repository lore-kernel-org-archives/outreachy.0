X-GM-THRID: 6390634706454446080
Date: Sat, 25 Feb 2017 03:42:42 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, gregkh@linuxfoundation.org,
	samuel.thibault@ens-lyon.org
Message-Id: <a3261158-0050-4599-935e-2ad2a13b8a00@googlegroups.com>
In-Reply-To: <20170225094123.ssback7e4kmw2ett@var.youpi.perso.aquilenet.fr>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
 <alpine.DEB.2.20.1702241814330.3089@hadrien>
 <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
 <20170225094123.ssback7e4kmw2ett@var.youpi.perso.aquilenet.fr>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace
 BUG_ON() with WARN_ON().
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2205_2020545346.1488022962780"
X-Google-Token: ELLbxcUF7rDrYD6TP500
X-Google-IP: 117.192.154.88

------=_Part_2205_2020545346.1488022962780
Content-Type: multipart/alternative; 
	boundary="----=_Part_2206_1110539446.1488022962780"

------=_Part_2206_1110539446.1488022962780
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> >     It has been called multiple times in 
> drivers/staging/speakup/kobjects.c and 
> > in the following way: 
> > 
> >  __ATTR(announcements, S_IWUSR | S_IRUGO, message_show, message_store); 
>
> So it's called on writes to a sys file. Just returning an -EINVAL error 
> there is fine. 
>
>     Then is the main purpose of __ATTR is to just write to sys file. How 
does .show handle this EINVAL value?
    I understand EINVAL is for invalid argument.
    
     #define __ATTR(_name, _mode, _show, _store) {                \
    .attr = {.name = __stringify(_name),                \
    .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },        \
    .show    = _show,                        \
    .store    = _store,                        \
     }
  

------=_Part_2206_1110539446.1488022962780
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; =C2=
=A0 =C2=A0 It has been called multiple times in drivers/staging/speakup/<wb=
r>kobjects.c and
<br>&gt; in the following way:
<br>&gt;=20
<br>&gt; =C2=A0__ATTR(announcements, S_IWUSR | S_IRUGO, message_show, messa=
ge_store);
<br>
<br>So it&#39;s called on writes to a sys file. Just returning an -EINVAL e=
rror
<br>there is fine.
<br>
<br></blockquote><div>=C2=A0 =C2=A0 Then is the main purpose of __ATTR is t=
o just write to sys file. How does .show handle this EINVAL value?<br>=C2=
=A0=C2=A0=C2=A0 I understand EINVAL is for invalid argument.<br>=C2=A0=C2=
=A0=C2=A0 <br>=C2=A0 =C2=A0=C2=A0 #define __ATTR(_name, _mode, _show, _stor=
e) {=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 \<br>=C2=A0=C2=A0=C2=A0 .attr =3D {.name =3D __stringify(_name),=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 \<=
br>=C2=A0=C2=A0=C2=A0 .mode =3D VERIFY_OCTAL_PERMISSIONS(_mode) },=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 \<br><div>=C2=A0=C2=A0=C2=A0 .show=C2=A0=C2=A0=
=C2=A0 =3D _show,=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=
=C2=A0 .store=C2=A0=C2=A0=C2=A0 =3D _store,=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0 }</div>=C2=A0 <br></div></div>
------=_Part_2206_1110539446.1488022962780--

------=_Part_2205_2020545346.1488022962780--


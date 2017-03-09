X-GM-THRID: 6394971085965623296
Date: Thu, 9 Mar 2017 03:37:53 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Message-Id: <c301a39d-7f44-4c3e-8f6c-2350b5938d1b@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703091203100.3186@hadrien>
References: <cover.1488944614.git.varshar186@gmail.com> <58bf8051.081a620a.e7433.8064@mx.google.com> <alpine.DEB.2.20.1703081016060.3156@hadrien> <53167cf4-2fc5-4178-b963-c616822ae3b1@googlegroups.com>
 <alpine.DEB.2.20.1703091203100.3186@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: atomisp: Remove
 useless cast.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3106_380397239.1489059473853"
X-Google-Token: EJH9hMYFjx4V4AyKcA80
X-Google-IP: 45.125.141.33

------=_Part_3106_380397239.1489059473853
Content-Type: multipart/alternative; 
	boundary="----=_Part_3107_15924227.1489059473854"

------=_Part_3107_15924227.1489059473854
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hello,

> However, here it does not match void and void * . Also gives no output 
> for this particular file. 
> > Why is it not recognizing the difference between ptr and p ? (with the 
> earlier coccinelle script) 
>
> Because there is a bug in the parsing of metavariable identifiers.  I knew 
> this, but haven't thought about it recently...  I think that once it sees 
> a *, it applies the * to everything that comes after.  Or more likely, it 
> is probably parsing the metavariables as T * being the type, and the list 
> of names coming after. 
>
> I'll make a note to fix it. 
>
>
  Yes, it is indeed a bug and thanks for considering it. I hope the 
following observation would be of help.

  There was one more case, which I ignored as it gave false result. (using 
the first script)
  Such as it could not recognize difference between declaration unsigned 
int __user *user_chanlist and cast (unsigned int __force *)user_chanlist .
  Removed the later casting. The file is comedi/comedi_fops.c

  -               cmd.chanlist = (unsigned int __force *)user_chanlist;
  +               cmd.chanlist = user_chanlist;

   Thanks,
   Varsha

------=_Part_3107_15924227.1489059473854
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hello,<br><br><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">&gt; However, here it does not match void and void * . Also gives no =
output for this particular file.
<br>&gt; Why is it not recognizing the difference between ptr and p ? (with=
 the earlier coccinelle script)
<br>
<br>Because there is a bug in the parsing of metavariable identifiers. =C2=
=A0I knew
<br>this, but haven&#39;t thought about it recently... =C2=A0I think that o=
nce it sees
<br>a *, it applies the * to everything that comes after. =C2=A0Or more lik=
ely, it
<br>is probably parsing the metavariables as T * being the type, and the li=
st
<br>of names coming after.
<br>
<br>I&#39;ll make a note to fix it.
<br>
<br></blockquote><div><br>=C2=A0 Yes, it is indeed a bug and thanks for con=
sidering it. I hope the following observation would be of help.<br><br>=C2=
=A0 There was one more case, which I ignored as it gave false result. (usin=
g the first script)<br>=C2=A0 Such as it could not recognize difference bet=
ween declaration unsigned int __user *user_chanlist and cast (unsigned int =
__force *)user_chanlist .<br>=C2=A0 Removed the later casting. The file is =
comedi/comedi_fops.c<br><br>=C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd.chanlist =3D (unsigned in=
t __force *)user_chanlist;<br>=C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd.chanlist =3D user_chan=
list;<br><br>=C2=A0=C2=A0 Thanks,<br>=C2=A0=C2=A0 Varsha<br></div></div>
------=_Part_3107_15924227.1489059473854--

------=_Part_3106_380397239.1489059473853--


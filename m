X-GM-THRID: 6396247239473233920
Date: Sat, 11 Mar 2017 08:36:30 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <dfbd06be-ee70-47ef-bfaf-2592ee0a34a0@googlegroups.com>
In-Reply-To: <9139fda1-a9d3-47cd-a566-c6b454c752e5@googlegroups.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
 <9139fda1-a9d3-47cd-a566-c6b454c752e5@googlegroups.com>
Subject: Re: Trouble with IIO dummy build.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6080_1983418738.1489250190585"
X-Google-Token: EI7PkMYFhrEMPLxrPqc0
X-Google-IP: 117.192.128.140

------=_Part_6080_1983418738.1489250190585
Content-Type: multipart/alternative; 
	boundary="----=_Part_6081_1925377185.1489250190585"

------=_Part_6081_1925377185.1489250190585
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


 Hey Narcisa,

>
> Maybe using modinfo command (modinfo iio_dummy.ko for example) will help 
> you find more information about what you are trying to insert
>
It will output the dependencies, which I think will help you solve this 
> problem since it seems to me that the error you got:
> "Unknown symbol iio_bus_type" happens because of some missing dependency.
>
     
    I had already checked with modinfo.
    According to  it iio_dummy depends on iio_dummy_evgen and nothing is 
shown for iio_dummy_evgen.
 

> Also, do you get any error message when trying to mount?
>
    
   There was no error message. Thanks Narcisa, I will check again if 
anything else is missing.
     
   Thanks,
   Varsha

------=_Part_6081_1925377185.1489250190585
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>=C2=A0Hey Narcisa,<br><blockquote class=3D"gmail_quote=
" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding=
-left: 1ex;"><div dir=3D"ltr"><br>Maybe using modinfo command (modinfo iio_=
dummy.ko for example) will help you find more information about what you ar=
e trying to insert<br></div></blockquote><blockquote class=3D"gmail_quote" =
style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-l=
eft: 1ex;"><div dir=3D"ltr">It will output the dependencies, which I think =
will help you solve this problem since it seems to me that the error you go=
t:<br>&quot;<tt>Unknown symbol iio_bus_type</tt>&quot; happens because of s=
ome missing dependency.<br></div></blockquote><div>=C2=A0 =C2=A0=C2=A0 <br>=
=C2=A0=C2=A0=C2=A0 I had already checked with modinfo.<br>=C2=A0=C2=A0=C2=
=A0 According to=C2=A0 it iio_dummy depends on iio_dummy_evgen and nothing =
is shown for iio_dummy_evgen.<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;"><div dir=3D"ltr">Also, do you get any error mes=
sage when trying to mount?<br></div></blockquote><div>=C2=A0 =C2=A0 <br>=C2=
=A0=C2=A0 There was no error message. Thanks Narcisa, I will check again if=
 anything else is missing.<br></div><div dir=3D"ltr">=C2=A0=C2=A0=C2=A0=C2=
=A0 <br>=C2=A0=C2=A0 Thanks,<br>=C2=A0=C2=A0 Varsha<br></div></div>
------=_Part_6081_1925377185.1489250190585--

------=_Part_6080_1983418738.1489250190585--


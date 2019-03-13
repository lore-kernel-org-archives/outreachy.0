X-GM-THRID: 6663332445434150912
Date: Wed, 13 Mar 2019 01:50:33 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <389b7861-7a78-429f-a150-7b2987f0f123@googlegroups.com>
In-Reply-To: <20190301081903.GA7969@kroah.com>
References: <20190301081238.6440-1-etsai042@gmail.com>
 <20190301081903.GA7969@kroah.com>
Subject: Re: [PATCH] Staging: gasket: Replace symbolic permissions with
 octal permissions
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3036_986030848.1552467033145"
X-Google-Token: ENmIo-QFTFRemCmVEYo0
X-Google-IP: 128.199.125.193

------=_Part_3036_986030848.1552467033145
Content-Type: multipart/alternative; 
	boundary="----=_Part_3037_968821019.1552467033146"

------=_Part_3037_968821019.1552467033146
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, March 1, 2019 at 12:19:07 AM UTC-8, gregkh wrote:
>
>
> This is fun, it keeps coming up and no one looks in the archives to see 
> why I keep rejecting it :) 
>
> This should be __ATTR_NULL(), but really, the whole macro can be deleted. 
>
> >                  .data.attr_type = 0,                                   
>         \ 
> >          } 
> >   
> > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute { 
> >   
> >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)             
>         \ 
> >          {                                                               
>        \ 
> > -                .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),   
>        \ 
> > +                .attr = __ATTR(_name, 0444, _show_function, NULL),     
>         \ 
>
> __ATTR_RO() please. 
>
> Hi. I just submit a patch to fix the first __ATTR_NULL, but I have some 
question about the latter one.
I understand it is better to use read only attribute here, but by changing 
__ATTR to __ATTR_RO, since the new macro does not need the _show_function  
parameter:

> (linux/sysfs.h, line 115)
> #define __ATTR_RO(_name) { \
> .attr = { .name = __stringify(_name), .mode = 0444 }, \
> .show = _name##_show, \
> }

it seems to me that the second parameter in this macro should be deleted, 
which means all other file which calls this macro should be revise. 
I think it's a big code change, and don't know whether it's suitable to do 
this. Could you give me some advice?

Thanks,

Wentao

 

> thanks, 
>
> greg k-h 
>

------=_Part_3037_968821019.1552467033146
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, March 1, 2019 at 12:19:07 AM UTC-8, gre=
gkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>This is fun, it keeps coming up and no one looks in the archives to see
<br>why I keep rejecting it :)
<br>
<br>This should be __ATTR_NULL(), but really, the whole macro can be delete=
d.
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.data.attr_<wbr>type =3D 0, =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0
<br>&gt; @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
<br>&gt; =C2=A0
<br>&gt; =C2=A0#define GASKET_SYSFS_RO(_name, _show_function, _attr_type) =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.attr =3D __ATTR(_name, S_IRUGO, _show_fun=
ction, NULL), =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.attr =3D __ATTR(_name, 0444, _show_functi=
on, NULL), =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \
<br>
<br>__ATTR_RO() please.
<br>
<br></blockquote><div>Hi. I just submit a patch to fix the first __ATTR_NUL=
L, but I have some question about the latter one.</div><div>I understand it=
 is better to use read only attribute here, but by changing __ATTR to __ATT=
R_RO, since the new macro does not need the _show_function=C2=A0 parameter:=
</div><div><blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0=
.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">(linux=
/sysfs.h, line 115)<br>#define __ATTR_RO(_name) {<span style=3D"white-space=
:pre">=09=09=09=09=09=09</span>\<br><span style=3D"white-space:pre">=09</sp=
an>.attr<span style=3D"white-space:pre">=09</span>=3D { .name =3D __stringi=
fy(_name), .mode =3D 0444 },<span style=3D"white-space:pre">=09=09</span>\<=
br><span style=3D"white-space:pre">=09</span>.show<span style=3D"white-spac=
e:pre">=09</span>=3D _name##_show,<span style=3D"white-space:pre">=09=09=09=
=09=09=09</span>\<br>}</blockquote></div><div>it seems to me that the secon=
d parameter in this macro should be deleted, which means all other file whi=
ch calls this macro should be revise.=C2=A0</div><div>I think it&#39;s a bi=
g code change, and don&#39;t know whether it&#39;s suitable to do this. Cou=
ld you give me some advice?</div><div><br></div><div>Thanks,</div><div><br>=
</div><div>Wentao</div><div><br></div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc s=
olid;padding-left: 1ex;">thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_3037_968821019.1552467033146--

------=_Part_3036_986030848.1552467033145--


X-GM-THRID: 6391984177458184192
Date: Tue, 28 Feb 2017 06:17:59 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com
Message-Id: <2c41d6b9-a3f8-4229-87ba-a31145c451c5@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702281455380.3056@hadrien>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com> <465dc1ff-b520-4ad1-862f-0fa268803f06@googlegroups.com>
 <alpine.DEB.2.20.1702281455380.3056@hadrien>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1354_1954307934.1488291479397"
X-Google-Token: EJeN1sUFIzimHHYO93c0
X-Google-IP: 117.211.102.11

------=_Part_1354_1954307934.1488291479397
Content-Type: multipart/alternative; 
	boundary="----=_Part_1355_986933466.1488291479397"

------=_Part_1355_986933466.1488291479397
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

    

> >   Does coccinelle need driver to be compiled as a module? As hdm_dim2 
> driver 
> > is not but sm750fb driver is compiled as a module. Does coccinelle 
> require 
> > executable file to work? 
>
> No, it just looks at the source code.  It doesn't care about modules, etc.

    
    Then it is strange, as I tried again with different drivers, few of 
them work and few others don't.
    
    Drivers compiled as module and got output : iio and sm750fb
    Drivers not compiled as module but still got output: lustre and greybus
    Drivers not compiled as module and no output: most (all drivers) and 
netlogic


> Could you try the original experiment again?  Maybe the problem is somehow 
> resolved. 
>
>     Same output.
    
   spatch --sp-file ret.cocci --no-includes  
~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out 
   init_defs_builtins: /usr/lib64/coccinelle/standard.h
   HANDLING: 
   
/home/varsha/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c

   Thanks,
   Varsha

------=_Part_1355_986933466.1488291479397
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0=C2=A0=C2=A0
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; =C2=A0 Does coccinell=
e need driver to be compiled as a module? As hdm_dim2 driver
<br>&gt; is not but sm750fb driver is compiled as a module. Does coccinelle=
 require
<br>&gt; executable file to work?
<br>
<br>No, it just looks at the source code. =C2=A0It doesn&#39;t care about m=
odules, etc.</blockquote><div>=C2=A0 =C2=A0 <br>=C2=A0=C2=A0=C2=A0 Then it =
is strange, as I tried again with different drivers, few of them work and f=
ew others don&#39;t.<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 Drivers c=
ompiled as module and got output : iio and sm750fb<br>=C2=A0=C2=A0=C2=A0 Dr=
ivers not compiled as module but still got output: lustre and greybus<br>=
=C2=A0=C2=A0=C2=A0 Drivers not compiled as module and no output: most (all =
drivers) and netlogic<br><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">
<br>Could you try the original experiment again? =C2=A0Maybe the problem is=
 somehow
<br>resolved.
<br>
<br></blockquote><div>=C2=A0=C2=A0=C2=A0 Same output.<br>=C2=A0=C2=A0=C2=A0=
 <br>=C2=A0=C2=A0 spatch --sp-file ret.cocci --no-includes=C2=A0
~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c=C2=A0 &gt;=
 ret.out
<br>=C2=A0=C2=A0 init_defs_builtins: /usr/lib64/coccinelle/standard.h<br>=
=C2=A0=C2=A0 HANDLING:
<br>=C2=A0=C2=A0 /home/varsha/git/kernels/staging/drivers/staging/most/hdm-=
dim2/dim2_sysfs.c<br><br>=C2=A0=C2=A0 Thanks,<br>=C2=A0=C2=A0 Varsha<br></d=
iv></div>
------=_Part_1355_986933466.1488291479397--

------=_Part_1354_1954307934.1488291479397--


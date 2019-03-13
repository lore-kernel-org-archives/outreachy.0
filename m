X-GM-THRID: 6663345238466101248
Date: Wed, 13 Mar 2019 01:34:55 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <6289455c-2178-4baf-b1ae-899b7c19fa2a@googlegroups.com>
In-Reply-To: <20190301090849.GA29599@kroah.com>
References: <20190301090225.9475-1-etsai042@gmail.com>
 <20190301090849.GA29599@kroah.com>
Subject: Re: [PATCHv2] Staging: fpgaboot: Delete newline at the end of
 Kconfig
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_334_754734512.1552466095996"
X-Google-Token: EK-Bo-QFZdq502-uk2E0
X-Google-IP: 128.199.125.193

------=_Part_334_754734512.1552466095996
Content-Type: multipart/alternative; 
	boundary="----=_Part_335_848360681.1552466095996"

------=_Part_335_848360681.1552466095996
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, March 1, 2019 at 1:08:53 AM UTC-8, gregkh wrote:
>
> > On Fri, Mar 01, 2019 at 05:02:25PM +0800, Wentao Cai wrote: 
> > > Delete the newline at the end of a Kconfig file, to silence the 
> > > checkpatch warning: 
> > > WARNING: please write a paragraph that describes the config symbol 
> > > fully. 
> > 
> > That is not the way to fix this warning :) 
> > 
> > You need to actually write a paragraph, not delete an empty line. 
> > 
>
Hi, greg, I wonder if it is ok to solve this problem by adding this?

Say Y if you want to include this driver in the kernel.
To compile this driver as a module, choose M here.  The module will be 
called gs_fpgaboot.ko.

Also I have a stupid question. I've just reinstall my system, so I can't 
revise my previous patches through git log. 
If I want to revise those patches, should I still send them with a [PATCH 
vn] version or just with [PATCH]?

Thanks,

Wentao

> thanks, 
> > 
> > greg k-h 
>

------=_Part_335_848360681.1552466095996
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, March 1, 2019 at 1:08:53 AM UTC-8, greg=
kh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: =
0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; On Fri, Mar 01, =
2019 at 05:02:25PM +0800, Wentao Cai wrote:
<br>&gt; &gt; Delete the newline at the end of a Kconfig file, to silence t=
he
<br>&gt;=C2=A0&gt; checkpatch warning:
<br>&gt;=C2=A0&gt; WARNING: please write a paragraph that describes the con=
fig symbol
<br>&gt;=C2=A0&gt; fully.
<br>
&gt;=C2=A0<br>&gt;=C2=A0That is not the way to fix this warning :)
<br>
&gt;=C2=A0<br>&gt;=C2=A0You need to actually write a paragraph, not delete =
an empty line.
<br>
&gt;=C2=A0<br></blockquote><div>Hi, greg, I wonder if it is ok to solve thi=
s problem by adding this?<br></div><div><br></div><div><div>Say Y if you wa=
nt to include this driver in the kernel.</div><div>To compile this driver a=
s a module, choose M here.=C2=A0 The module will be called gs_fpgaboot.ko.<=
/div></div><div><br></div><div>Also I have a stupid question. I&#39;ve just=
 reinstall my system, so I can&#39;t revise my previous patches through git=
 log.=C2=A0</div><div>If I want to revise those patches, should I still sen=
d them with a [PATCH vn] version or just with [PATCH]?</div><div><br></div>=
<div>Thanks,</div><div><br></div><div>Wentao</div><div><br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: =
1px #ccc solid;padding-left: 1ex;">&gt;=C2=A0thanks,
<br>
&gt;=C2=A0<br>&gt;=C2=A0greg k-h
<br></blockquote></div>
------=_Part_335_848360681.1552466095996--

------=_Part_334_754734512.1552466095996--


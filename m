X-GM-THRID: 6802713893115265024
Date: Wed, 11 Mar 2020 01:06:34 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <07d7a685-35e7-44d5-ba41-67f9cf7446db@googlegroups.com>
In-Reply-To: <20200311070311.GC3572180@kroah.com>
References: <20200310224405.GA9838@deeUbuntu>
 <20200311070311.GC3572180@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_pcimio: remove
 old unused code
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1133_1614190054.1583913994985"
X-Google-Token: EIq4ovMFEX8bz3F_aIk0
X-Google-IP: 103.240.207.69

------=_Part_1133_1614190054.1583913994985
Content-Type: multipart/alternative; 
	boundary="----=_Part_1134_1636485804.1583913994985"

------=_Part_1134_1636485804.1583913994985
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, 11 March 2020 12:33:18 UTC+5:30, Greg KH wrote:
>
> On Wed, Mar 11, 2020 at 04:14:08AM +0530, Deepak R Varma wrote: 
> > Found multiple #if 0 code blocks that appear to have never been used. 
> > Additinal comments around intended functionality may be introduced 
> > separately. As these commented code blocks do not appear to be 
> > ever useful, they can be removed. 
> > 
> > Signed-off-by: Deepak R Varma <mh12g...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/comedi/drivers/ni_pcimio.c | 48 ---------------------- 
> >  1 file changed, 48 deletions(-) 
>
> Why did you send this same patch twice? 
>
> confused, 
>
> greg k-h 
>

I sent three separate patches for comedi drivers dt2801, dt282x and 
ni_pcimio. Did I do something wrong?  

Deepak.

------=_Part_1134_1636485804.1583913994985
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, 11 March 2020 12:33:18 UTC+5:30, Gre=
g KH  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Wed, Mar 11, 20=
20 at 04:14:08AM +0530, Deepak R Varma wrote:
<br>&gt; Found multiple #if 0 code blocks that appear to have never been us=
ed.
<br>&gt; Additinal comments around intended functionality may be introduced
<br>&gt; separately. As these commented code blocks do not appear to be
<br>&gt; ever useful, they can be removed.
<br>&gt;=20
<br>&gt; Signed-off-by: Deepak R Varma &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"mDAgoWQBAgAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">mh12g...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/comedi/<wbr>drivers/ni_pcimio.c | 48 -------=
---------------
<br>&gt; =C2=A01 file changed, 48 deletions(-)
<br>
<br>Why did you send this same patch twice?
<br>
<br>confused,
<br>
<br>greg k-h
<br></blockquote><div><br></div><div>I sent three separate patches for come=
di drivers dt2801, dt282x and ni_pcimio. Did I do something wrong?=C2=A0 <b=
r></div><div><br></div><div>Deepak.<br></div></div>
------=_Part_1134_1636485804.1583913994985--

------=_Part_1133_1614190054.1583913994985--


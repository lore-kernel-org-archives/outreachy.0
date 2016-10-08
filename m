X-GM-THRID: 6339102117474598912
Date: Sat, 8 Oct 2016 07:50:02 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net
Message-Id: <7d517800-7e2e-48cd-8553-9935c09e3189@googlegroups.com>
In-Reply-To: <20161008143652.GA5434@kroah.com>
References: <20161008143343.GA12126@euri>
 <20161008143652.GA5434@kroah.com>
Subject: Re: [PATCH] Staging: vt6655: Replace byVT3253InitTab_RFMD with
 BYVT3253INITTAB_RFMD
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1438_1244200609.1475938203004"
X-Google-Token: EJqP5L8FNfDVaJ1TThQ0
X-Google-IP: 103.62.68.129

------=_Part_1438_1244200609.1475938203004
Content-Type: multipart/alternative; 
	boundary="----=_Part_1439_164485160.1475938203004"

------=_Part_1439_164485160.1475938203004
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, October 8, 2016 at 8:06:51 PM UTC+5:30, gregkh wrote:
>
> On Sat, Oct 08, 2016 at 08:03:43PM +0530, Varsha Rao wrote: 
> > This patch fixes the checkpatch issue of CamelCase by replacing 
> byVT3253InitTab_RFMD with BYVT3253INITTAB_RFMD. 
>
> Please wrap your changelog comments at 72 columns. 
>
> And why uppercase this variable?  That's horrid to read now, right? 
> Please read Documentation/CodingStyle for how to properly name variables 
> (hint, upper-case-only is for #defines, not variables. 
>

      Yeah, it is.Sorry I will rectify it. 

>
> > 
> > Avoid CamelCase: <byVT3253InitTab_RFMD> 
>
> What does that mean? 
>

      This tells about the checkpatch check which is fixed by this patch.

>
> thanks, 
>
> greg k-h 
>

------=_Part_1439_164485160.1475938203004
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, October 8, 2016 at 8:06:51 PM UTC+5:3=
0, gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sat, Oct 08=
, 2016 at 08:03:43PM +0530, Varsha Rao wrote:
<br>&gt; This patch fixes the checkpatch issue of CamelCase by replacing by=
VT3253InitTab_RFMD with BYVT3253INITTAB_RFMD.
<br>
<br>Please wrap your changelog comments at 72 columns.
<br>
<br>And why uppercase this variable? =C2=A0That&#39;s horrid to read now, r=
ight?
<br>Please read Documentation/CodingStyle for how to properly name variable=
s
<br>(hint, upper-case-only is for #defines, not variables.
<br></blockquote><div><br>=C2=A0 =C2=A0 =C2=A0 Yeah, it is.Sorry I will rec=
tify it. <br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt;=20
<br>&gt; Avoid CamelCase: &lt;byVT3253InitTab_RFMD&gt;
<br>
<br>What does that mean?
<br></blockquote><div><br>=C2=A0 =C2=A0 =C2=A0 This tells about the checkpa=
tch check which is fixed by this patch.<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;p=
adding-left: 1ex;">
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_1439_164485160.1475938203004--

------=_Part_1438_1244200609.1475938203004--


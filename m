X-GM-THRID: 6339082417419059200
Date: Sat, 8 Oct 2016 07:38:36 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net
Message-Id: <53764933-f3f0-44e3-bcae-b97a976074bb@googlegroups.com>
In-Reply-To: <20161008135851.GA3533@kroah.com>
References: <20161008131709.GA489@euri>
 <20161008135851.GA3533@kroah.com>
Subject: Re: [PATCH] Staging: vt6655: Replace dwIoBase by dwiobase
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1419_1271951778.1475937516181"
X-Google-Token: EOyJ5L8FPB1aMqTlS0Y0
X-Google-IP: 103.62.68.129

------=_Part_1419_1271951778.1475937516181
Content-Type: multipart/alternative; 
	boundary="----=_Part_1420_8392728.1475937516181"

------=_Part_1420_8392728.1475937516181
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, October 8, 2016 at 7:28:45 PM UTC+5:30, gregkh wrote:
>
> On Sat, Oct 08, 2016 at 06:47:09PM +0530, Varsha Rao wrote: 
> > This patch fixes the checkpatch issue of CamelCase by replacing dwIoBase 
> with dwiobase. 
>
> why keep the "dw"?  The Linux style is to not use "Hungarian notation" 
> for variables. 
>
> "iobase" is the simplest, don't you think?


       Yes,it is and I will change it.Thanks for your reply.      
 

>
>
> thanks, 
>
> greg k-h 
>

------=_Part_1420_8392728.1475937516181
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, October 8, 2016 at 7:28:45 PM UTC+5:3=
0, gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sat, Oct 08=
, 2016 at 06:47:09PM +0530, Varsha Rao wrote:
<br>&gt; This patch fixes the checkpatch issue of CamelCase by replacing dw=
IoBase with dwiobase.
<br>
<br>why keep the &quot;dw&quot;? =C2=A0The Linux style is to not use &quot;=
Hungarian notation&quot;
<br>for variables.
<br>
<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin: 0;margi=
n-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&quot;iobase&=
quot; is the simplest, don&#39;t you think?</blockquote><div><br>=C2=A0 =C2=
=A0 =C2=A0=C2=A0 Yes,it is and I will change it.Thanks for your reply.=C2=
=A0 =C2=A0 =C2=A0 <br>=C2=A0<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left=
: 1ex;">
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_1420_8392728.1475937516181--

------=_Part_1419_1271951778.1475937516181--


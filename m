X-GM-THRID: 6394764238679703552
Date: Tue, 7 Mar 2017 11:50:26 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: julia.lawall@lip6.fr, sreyamittal5@gmail.com, f.fainelli@gmail.com,
	rjui@broadcom.com, sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com, swarren@wwwdotorg.org,
	lee@kernel.org, eric@anholt.net
Message-Id: <43384264-5884-45c4-a386-dc9e2c7846fa@googlegroups.com>
In-Reply-To: <20170307190609.GA6914@kroah.com>
References: <20170307143056.3252-1-sreyamittal5@gmail.com>
 <alpine.DEB.2.20.1703071653360.3150@hadrien>
 <20170307190609.GA6914@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fix
 alignment with parenthesis
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2779_664021310.1488916226803"
X-Google-Token: EIKe_MUFEQDezjpuBdo0
X-Google-IP: 14.139.82.6

------=_Part_2779_664021310.1488916226803
Content-Type: multipart/alternative; 
	boundary="----=_Part_2780_634819292.1488916226804"

------=_Part_2780_634819292.1488916226804
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, March 8, 2017 at 12:36:16 AM UTC+5:30, gregkh wrote:
>
> On Tue, Mar 07, 2017 at 04:54:07PM +0100, Julia Lawall wrote: 
> > 
> > 
> > On Tue, 7 Mar 2017, Sreya Mittal wrote: 
> > 
> > > Fix the checkpatch issue: 
> > > Alignment should match open parenthesis 
> > > 
> > > Signed-off-by: Sreya Mittal <sreyam...@gmail.com <javascript:>> 
> > > --- 
> > >  drivers/staging/bcm2835-audio/bcm2835-ctl.c | 2 +- 
> > 
> > I don't see this file in staging-testing anymore. 
>
> It moved.  And I think someone else already made this change :( 
>
> Sreya, please rebase your patch and see if it still is needed.  If so, 
> please resend the updated version. 
>

The file exists in drivers/staging/vc04_services/bcm2835-audio without
the change I had made. Should I redo the patch in this file?

Sreya
 

>
> thanks, 
>
> greg k-h 
>

------=_Part_2780_634819292.1488916226804
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, March 8, 2017 at 12:36:16 AM UTC+5:3=
0, gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, Mar 07=
, 2017 at 04:54:07PM +0100, Julia Lawall wrote:
<br>&gt;=20
<br>&gt;=20
<br>&gt; On Tue, 7 Mar 2017, Sreya Mittal wrote:
<br>&gt;=20
<br>&gt; &gt; Fix the checkpatch issue:
<br>&gt; &gt; Alignment should match open parenthesis
<br>&gt; &gt;
<br>&gt; &gt; Signed-off-by: Sreya Mittal &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"PdjEqeC3AQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sreyam...@gmail.com</a>&gt;
<br>&gt; &gt; ---
<br>&gt; &gt; =C2=A0drivers/staging/bcm2835-<wbr>audio/bcm2835-ctl.c | 2 +-
<br>&gt;=20
<br>&gt; I don&#39;t see this file in staging-testing anymore.
<br>
<br>It moved. =C2=A0And I think someone else already made this change :(
<br>
<br>Sreya, please rebase your patch and see if it still is needed. =C2=A0If=
 so,
<br>please resend the updated version.
<br></blockquote><div><br>The file exists in drivers/staging/vc04_services/=
bcm2835-audio without<br>the change I had made. Should I redo the patch in =
this file?<br><br>Sreya<br>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-lef=
t: 1ex;">
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_2780_634819292.1488916226804--

------=_Part_2779_664021310.1488916226803--


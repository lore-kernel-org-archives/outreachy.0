X-GM-THRID: 6394764238679703552
Date: Tue, 7 Mar 2017 12:13:19 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: sreyamittal5@gmail.com, julia.lawall@lip6.fr, f.fainelli@gmail.com,
	rjui@broadcom.com, sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com, swarren@wwwdotorg.org,
	lee@kernel.org, eric@anholt.net
Message-Id: <c8dcf76f-2134-474a-972f-51a7b948e85a@googlegroups.com>
In-Reply-To: <20170307195759.GA25999@kroah.com>
References: <20170307143056.3252-1-sreyamittal5@gmail.com>
 <alpine.DEB.2.20.1703071653360.3150@hadrien>
 <20170307190609.GA6914@kroah.com>
 <43384264-5884-45c4-a386-dc9e2c7846fa@googlegroups.com>
 <20170307195759.GA25999@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fix
 alignment with parenthesis
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2119_1562554871.1488917599430"
X-Google-Token: EN-o_MUFmxekI7OPFUc0
X-Google-IP: 14.139.82.6

------=_Part_2119_1562554871.1488917599430
Content-Type: multipart/alternative; 
	boundary="----=_Part_2120_2036498653.1488917599430"

------=_Part_2120_2036498653.1488917599430
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, March 8, 2017 at 1:28:05 AM UTC+5:30, Greg Kroah-Hartman 
wrote:
>
> On Tue, Mar 07, 2017 at 11:50:26AM -0800, Sreya Mittal wrote: 
> > 
> > 
> > On Wednesday, March 8, 2017 at 12:36:16 AM UTC+5:30, gregkh wrote: 
> > 
> >     On Tue, Mar 07, 2017 at 04:54:07PM +0100, Julia Lawall wrote: 
> >     > 
> >     > 
> >     > On Tue, 7 Mar 2017, Sreya Mittal wrote: 
> >     > 
> >     > > Fix the checkpatch issue: 
> >     > > Alignment should match open parenthesis 
> >     > > 
> >     > > Signed-off-by: Sreya Mittal <sreyam...@gmail.com> 
> >     > > --- 
> >     > >  drivers/staging/bcm2835-audio/bcm2835-ctl.c | 2 +- 
> >     > 
> >     > I don't see this file in staging-testing anymore. 
> > 
> >     It moved.  And I think someone else already made this change :( 
> > 
> >     Sreya, please rebase your patch and see if it still is needed.  If 
> so, 
> >     please resend the updated version. 
> > 
> > 
> > The file exists in drivers/staging/vc04_services/bcm2835-audio without 
> > the change I had made. Should I redo the patch in this file? 
>
> Yes please. 
>

Done :)

Sreya 

------=_Part_2120_2036498653.1488917599430
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, March 8, 2017 at 1:28:05 AM UTC+5:30=
, Greg Kroah-Hartman wrote:<blockquote class=3D"gmail_quote" style=3D"margi=
n: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On =
Tue, Mar 07, 2017 at 11:50:26AM -0800, Sreya Mittal wrote:
<br>&gt;=20
<br>&gt;=20
<br>&gt; On Wednesday, March 8, 2017 at 12:36:16 AM UTC+5:30, gregkh wrote:
<br>&gt;=20
<br>&gt; =C2=A0 =C2=A0 On Tue, Mar 07, 2017 at 04:54:07PM +0100, Julia Lawa=
ll wrote:
<br>&gt; =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 &gt; On Tue, 7 Mar 2017, Sreya Mittal wrote:
<br>&gt; =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 &gt; &gt; Fix the checkpatch issue:
<br>&gt; =C2=A0 =C2=A0 &gt; &gt; Alignment should match open parenthesis
<br>&gt; =C2=A0 =C2=A0 &gt; &gt;
<br>&gt; =C2=A0 =C2=A0 &gt; &gt; Signed-off-by: Sreya Mittal &lt;<a>sreyam.=
..@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 &gt; &gt; ---
<br>&gt; =C2=A0 =C2=A0 &gt; &gt; =C2=A0drivers/staging/bcm2835-<wbr>audio/b=
cm2835-ctl.c | 2 +-
<br>&gt; =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 &gt; I don&#39;t see this file in staging-testing an=
ymore.
<br>&gt;=20
<br>&gt; =C2=A0 =C2=A0 It moved. =C2=A0And I think someone else already mad=
e this change :(
<br>&gt;=20
<br>&gt; =C2=A0 =C2=A0 Sreya, please rebase your patch and see if it still =
is needed. =C2=A0If so,
<br>&gt; =C2=A0 =C2=A0 please resend the updated version.
<br>&gt;=20
<br>&gt;=20
<br>&gt; The file exists in drivers/staging/vc04_services/<wbr>bcm2835-audi=
o without
<br>&gt; the change I had made. Should I redo the patch in this file?
<br>
<br>Yes please.
<br></blockquote><div><br>Done :)<br><br>Sreya <br></div></div>
------=_Part_2120_2036498653.1488917599430--

------=_Part_2119_1562554871.1488917599430--


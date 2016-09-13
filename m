X-GM-THRID: 6329698324214448128
Date: Tue, 13 Sep 2016 02:53:11 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: arnd@arndb.de, namrataashettar@gmail.com, abbotti@mev.co.uk, 
	hsweeten@visionengravers.com, gregkh@linuxfoundation.org, 
	badbuddha91@gmail.com, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org
Message-Id: <e2fdc076-900a-4a25-9e5a-49d693bd3c74@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1609131135160.3355@hadrien>
References: <CAFrQyDErWX1NgsruZtt10hihZR2J3cvK-Q9Zj_dp_GLc_0mLmA@mail.gmail.com> <2284008.DIPsHg5UWl@wuerfel>
 <alpine.DEB.2.10.1609131135160.3355@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: comedi_pcmcia:
 Removes unnecessary blank line
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_397_206517980.1473760391984"
X-Google-Token: EIeZ374FsJBcVwr3u1A0
X-Google-IP: 103.225.101.21

------=_Part_397_206517980.1473760391984
Content-Type: multipart/alternative; 
	boundary="----=_Part_398_1341939769.1473760391985"

------=_Part_398_1341939769.1473760391985
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Yes I realize that this may be wrong.Thank you for your inputs!

 Also,The version of the kernel I am using is : 4.8.0-rc2+

Thanks,
Namrata

On Tuesday, September 13, 2016 at 3:06:06 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Tue, 13 Sep 2016, Arnd Bergmann wrote: 
>
> > On Tuesday, September 13, 2016 11:51:53 AM CEST Namrata A Shettar wrote: 
> > > --- a/drivers/staging/comedi/comedi_pcmcia.c 
> > > +++ b/drivers/staging/comedi/comedi_pcmcia.c 
> > > @@ -18,7 +18,6 @@ 
> > > 
> > >  #include <linux/module.h> 
> > >  #include <linux/kernel.h> 
> > > - 
> > >  #include "comedi_pcmcia.h" 
> > > 
> > >  /** 
> > > 
> > 
> > I would argue that checkpatch is wrong here, it's very common to have 
> > an empty line between the global and the local header files. 
>
> I forwarded this to Joe Perches, and he pointed out that checkpatch 
> doesn't give a warning for this.  Namrata, what version of the kernel are 
> you using? 
>
> julia 
>
>
>
>
------=_Part_398_1341939769.1473760391985
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes I realize that this may be wrong.Thank you for your in=
puts!<br><br>=C2=A0Also,The version of the kernel I am using is : 4.8.0-rc2=
+<br><br>Thanks,<br>Namrata<br><br>On Tuesday, September 13, 2016 at 3:06:0=
6 PM UTC+5:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">
<br>
<br>On Tue, 13 Sep 2016, Arnd Bergmann wrote:
<br>
<br>&gt; On Tuesday, September 13, 2016 11:51:53 AM CEST Namrata A Shettar =
wrote:
<br>&gt; &gt; --- a/drivers/staging/comedi/<wbr>comedi_pcmcia.c
<br>&gt; &gt; +++ b/drivers/staging/comedi/<wbr>comedi_pcmcia.c
<br>&gt; &gt; @@ -18,7 +18,6 @@
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0#include &lt;linux/module.h&gt;
<br>&gt; &gt; =C2=A0#include &lt;linux/kernel.h&gt;
<br>&gt; &gt; -
<br>&gt; &gt; =C2=A0#include &quot;comedi_pcmcia.h&quot;
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0/**
<br>&gt; &gt;
<br>&gt;
<br>&gt; I would argue that checkpatch is wrong here, it&#39;s very common =
to have
<br>&gt; an empty line between the global and the local header files.
<br>
<br>I forwarded this to Joe Perches, and he pointed out that checkpatch
<br>doesn&#39;t give a warning for this. =C2=A0Namrata, what version of the=
 kernel are
<br>you using?
<br>
<br>julia
<br>
<br>
<br><br></blockquote></div>
------=_Part_398_1341939769.1473760391985--

------=_Part_397_206517980.1473760391984--


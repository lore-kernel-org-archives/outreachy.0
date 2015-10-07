X-GM-THRID: 6202672545102036992
X-Received: by 10.68.68.202 with SMTP id y10mr34415146pbt.0.1444200157391;
        Tue, 06 Oct 2015 23:42:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.202 with SMTP id 68ls217214qgx.97.gmail; Tue, 06 Oct
 2015 23:42:36 -0700 (PDT)
X-Received: by 10.13.214.215 with SMTP id y206mr33903664ywd.10.1444200156783;
        Tue, 06 Oct 2015 23:42:36 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22a.google.com (mail-yk0-x22a.google.com. [2607:f8b0:4002:c07::22a])
        by gmr-mx.google.com with ESMTPS id y6si819218ywc.3.2015.10.06.23.42.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 23:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22a as permitted sender) client-ip=2607:f8b0:4002:c07::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22a as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22a.google.com with SMTP id z138so7886675ykd.2
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 23:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SMDMUXpzbarnvrnuvEKyAth/3G3LApo086MtIJWBCik=;
        b=cc0Az+i2pBYdfbCHYdM1np1cmjY62xjgpW2W9W3n4EZe8c7dkBTHnQ6AlM8knUWQkT
         TEaviXgP6zExFN6+nIG74M1LPWY2qnJ0Hp3L4oWNYY3aWyY12eu0yyLry9keVdvkB05x
         YjukwUek8sm3zHBqIt7h0auNkpUwhm4E0unitox8Dm9Pyyzhkj4NmYvGCqmuPr/0s0jW
         um7xkEK+QNhKd7VNP6upZ6WiHnjoPIKGr3e1gchn1vERrBkgDSUTxhvkm+zAyPc5ZEJa
         jd7/cdA4j40xvSCpuBtgBJrLn9k5p3jsmAnBZHf5oFQ7ci72hkmT1kSfdbM5l8mwNigh
         xlhg==
MIME-Version: 1.0
X-Received: by 10.129.154.206 with SMTP id r197mr4799625ywg.195.1444200156669;
 Tue, 06 Oct 2015 23:42:36 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Tue, 6 Oct 2015 23:42:36 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Tue, 6 Oct 2015 23:42:36 -0700 (PDT)
In-Reply-To: <20151007051459.GC4070@sudip-pc>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
	<7b2dd35a1b76b4457bc85272f255b982e6003cfc.1444172066.git.ciorneiioana@gmail.com>
	<20151007051459.GC4070@sudip-pc>
Date: Wed, 7 Oct 2015 09:42:36 +0300
Message-ID: <CAHWJYFk34=Od-DR26wUiW72YLE6EyP8uJ+oT3p-m2cikUhPGKw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 08/10] staging: iio: adc: remove the
 use of CamelCase
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c0b7efa52af5405217e0d01

--94eb2c0b7efa52af5405217e0d01
Content-Type: text/plain; charset=UTF-8

On Oct 7, 2015 8:15 AM, "Sudip Mukherjee" <sudipm.mukherjee@gmail.com>
wrote:
>
> On Wed, Oct 07, 2015 at 01:57:08AM +0300, Ioana Ciornei wrote:
> > Remove the use of CamelCase to follow the kernel naming conventions
> >
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > ---
> >  drivers/staging/iio/adc/ad7192.c      | 12 ++++++------
> >  drivers/staging/iio/adc/ad7192.h      |  2 +-
> >  drivers/staging/iio/adc/ad7280a.c     | 14 +++++++-------
> >  drivers/staging/iio/adc/lpc32xx_adc.c |  6 +++---
> >  4 files changed, 17 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/staging/iio/adc/ad7192.c
b/drivers/staging/iio/adc/ad7192.c
> > index f293dbd..f1d4911 100644
> > --- a/drivers/staging/iio/adc/ad7192.c
> > +++ b/drivers/staging/iio/adc/ad7192.c
> > @@ -118,13 +118,13 @@
> >  /* GPOCON Register Bit Designations (AD7192_REG_GPOCON) */
> >  #define AD7192_GPOCON_BPDSW  BIT(6) /* Bridge power-down switch enable
*/
> >  #define AD7192_GPOCON_GP32EN BIT(5) /* Digital Output P3 and P2 enable
*/
> > -#define AD7192_GPOCON_GP10EN BIT(4) /* Digital Output P1 and P0 enable
*/
> > +#define AD7193_GPOCON_GP10EN BIT(4) /* Digital Output P1 and P0 enable
*/
> Why did you change AD7192_GPOCON_GP10EN to AD7193_GPOCON_GP10EN?
>
> And I donot see any camelcase here, not even in the next few
> conversions.
>

Sorry for that change from 92 to 93. My mistake. I will send a v2.
Regarding the other changes, should I just revert them? Do you consider
there is no point in converting them?

Thanks,

Ioana

--94eb2c0b7efa52af5405217e0d01
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Oct 7, 2015 8:15 AM, &quot;Sudip Mukherjee&quot; &lt;<a href=3D"mailto:s=
udipm.mukherjee@gmail.com">sudipm.mukherjee@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Oct 07, 2015 at 01:57:08AM +0300, Ioana Ciornei wrote:<br>
&gt; &gt; Remove the use of CamelCase to follow the kernel naming conventio=
ns<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@g=
mail.com">ciorneiioana@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 drivers/staging/iio/adc/ad7192.c=C2=A0 =C2=A0 =C2=A0 | 12 +=
+++++------<br>
&gt; &gt;=C2=A0 drivers/staging/iio/adc/ad7192.h=C2=A0 =C2=A0 =C2=A0 |=C2=
=A0 2 +-<br>
&gt; &gt;=C2=A0 drivers/staging/iio/adc/ad7280a.c=C2=A0 =C2=A0 =C2=A0| 14 +=
++++++-------<br>
&gt; &gt;=C2=A0 drivers/staging/iio/adc/lpc32xx_adc.c |=C2=A0 6 +++---<br>
&gt; &gt;=C2=A0 4 files changed, 17 insertions(+), 17 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/i=
io/adc/ad7192.c<br>
&gt; &gt; index f293dbd..f1d4911 100644<br>
&gt; &gt; --- a/drivers/staging/iio/adc/ad7192.c<br>
&gt; &gt; +++ b/drivers/staging/iio/adc/ad7192.c<br>
&gt; &gt; @@ -118,13 +118,13 @@<br>
&gt; &gt;=C2=A0 /* GPOCON Register Bit Designations (AD7192_REG_GPOCON) */<=
br>
&gt; &gt;=C2=A0 #define AD7192_GPOCON_BPDSW=C2=A0 BIT(6) /* Bridge power-do=
wn switch enable */<br>
&gt; &gt;=C2=A0 #define AD7192_GPOCON_GP32EN BIT(5) /* Digital Output P3 an=
d P2 enable */<br>
&gt; &gt; -#define AD7192_GPOCON_GP10EN BIT(4) /* Digital Output P1 and P0 =
enable */<br>
&gt; &gt; +#define AD7193_GPOCON_GP10EN BIT(4) /* Digital Output P1 and P0 =
enable */<br>
&gt; Why did you change AD7192_GPOCON_GP10EN to AD7193_GPOCON_GP10EN?<br>
&gt;<br>
&gt; And I donot see any camelcase here, not even in the next few<br>
&gt; conversions.<br>
&gt;</p>
<p dir=3D"ltr">Sorry for that change from 92 to 93. My mistake. I will send=
 a v2.<br>
Regarding the other changes, should I just revert them? Do you consider the=
re is no point in converting them? </p>
<p dir=3D"ltr">Thanks,</p>
<p dir=3D"ltr">Ioana<br>
</p>

--94eb2c0b7efa52af5405217e0d01--


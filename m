X-GM-THRID: 6400146594222571520
X-Received: by 10.25.153.74 with SMTP id b71mr1482316lfe.23.1490424458152;
        Fri, 24 Mar 2017 23:47:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.51.204 with SMTP id z195ls445350wmz.20.gmail; Fri, 24 Mar
 2017 23:47:37 -0700 (PDT)
X-Received: by 10.28.148.1 with SMTP id w1mr23111wmd.5.1490424457230;
        Fri, 24 Mar 2017 23:47:37 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id b186si37558wme.1.2017.03.24.23.47.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 23:47:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id r36so1050031lfi.0
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 23:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=UuqEulOhGS1thMiXzt/TkE1KiZNjz6IsCuMZ4+Gt6sk=;
        b=HWZulddMRebQS81l0nXkcZIkLCtxAQrfwv5og5AHjwV6xU8TBH6L9MA8pkSfrY2dsD
         68GAtHD+iD58fVbx7q/eL7l9NleKKXN5rr5BuXxpdyhkGhs1QpV8jJcCG9iQyx1fdXVd
         2bKCZp6S9n95HSCdt9rulxBFcJrnMb69XYGU1qNdK9FIJlM+l+JYUMPaeX9m37vr+Afe
         Wv5pBVX6NliZKdtdde1Mp/k9axhRr4tulj5zwSkPH/zNzASUDsH40NBmOyRSBiUadEY6
         LEIEt54Ki41w8vJguNW9CX2Pw1jjQUl+C2T6LFhtl5vbzRjRUal6CavcRhF4MkZyNJ48
         Qfgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=UuqEulOhGS1thMiXzt/TkE1KiZNjz6IsCuMZ4+Gt6sk=;
        b=Iv1beQIiP7snRzC01GcnO0W8cyaSt2l3tjCJu4VJyu0Flfxzeq1WWsgqSvrHSvefAe
         hpqCyK6sMevSHgoi1xNJgiBb+A3sC0E+1O/jKzXB92Z8yVRIUW/mCLJAwuytxCmzsgeV
         Z5wwwikqNVlEER6PcKaV6+BQACbN3c3cIXowaT9GSRYD4v/hrEzFsZY7M/PPfcnRJ+hT
         6pi1CNvZMtpbPozvJX5zEKiU3N9Dv00VP4f9vwW7+U8B3HpQjxGiKFw6neCaemXm4PSi
         uwXujxiIsfjoMGkRKbooIao/gpeHZLfU9dJvjk3fFiAl4HsBO4VP53ZMhL0sxoiMYXmV
         /+kg==
X-Gm-Message-State: AFeK/H2UAWWcyphED8liYG7PEIccypjhlYOlXuNubsrI4VYWk3Hurmg05v2UZlzQcYrfx3OciYyAMYmCbGLfqg==
X-Received: by 10.25.17.153 with SMTP id 25mr6202055lfr.39.1490424456738; Fri,
 24 Mar 2017 23:47:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Fri, 24 Mar 2017 23:47:36 -0700 (PDT)
In-Reply-To: <CAHp75VfD=4BcMV==zKejEPaJm=S6MqxJWrP2PnBhgNH0EQue9g@mail.gmail.com>
References: <20170322023725.GA10711@arushi-HP-Pavilion-Notebook> <CAHp75VfD=4BcMV==zKejEPaJm=S6MqxJWrP2PnBhgNH0EQue9g@mail.gmail.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sat, 25 Mar 2017 12:17:36 +0530
Message-ID: <CA+XqjF_Te49U-NmuB2THHeOXHjt=fN_hkNTXHabtDPXOmuGdyw@mail.gmail.com>
Subject: Re: [PATCH] staging: fbtft: Replace a bit shift by a use of BIT.
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, driverdevel <devel@driverdev.osuosl.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1140379e4f179b054b887cc7

--001a1140379e4f179b054b887cc7
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 9:48 PM, Andy Shevchenko <andy.shevchenko@gmail.com>
wrote:

> On Wed, Mar 22, 2017 at 4:37 AM, Arushi Singhal
> <arushisinghal19971997@gmail.com> wrote:
> > This patch replaces bit shifting on 1 with the BIT(x) macro.
> > This was done with coccinelle:
> > @@
> > constant c;
> > @@
> >
> > -1 << c
> > +BIT(c)
> >
>
> While using BIT() macro is a good idea, you make it inconsistent here.
> There are at least two options:
> - do nothing
> - define _MASK:s with GENMASK() and reuse in the code (looking at the
> code they are masks, not just separate bits).
>

Hi Andy
I somewhat understood my mistake and your views.
But It would be great if you can highlight more for my better understanding.
Thanks
Arushi Singhal

>
>
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_agm1264k-fl.c | 4 ++--
> >  drivers/staging/fbtft/fb_ili9163.c     | 2 +-
> >  drivers/staging/fbtft/fb_ili9325.c     | 2 +-
> >  drivers/staging/fbtft/fb_ssd1289.c     | 2 +-
> >  4 files changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
> b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > index 4ee76dbd30b5..d31deeab69b2 100644
> > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > @@ -369,7 +369,7 @@ static int write_vmem(struct fbtft_par *par, size_t
> offset, size_t len)
> >                         /* select left side (sc0)
> >                          * set addr
> >                          */
> > -                       write_reg(par, 0x00, (1 << 6) | (u8)addr_win.xs);
> > +                       write_reg(par, 0x00, (BIT(6)) | (u8)addr_win.xs);
> >                         write_reg(par, 0x00, (0x17 << 3) | (u8)y);
> >
> >                         /* write bitmap */
> > @@ -392,7 +392,7 @@ static int write_vmem(struct fbtft_par *par, size_t
> offset, size_t len)
> >                         /* select right side (sc1)
> >                          * set addr
> >                          */
> > -                       write_reg(par, 0x01, 1 << 6);
> > +                       write_reg(par, 0x01, BIT(6));
> >                         write_reg(par, 0x01, (0x17 << 3) | (u8)y);
> >
> >                         /* write bitmap */
> > diff --git a/drivers/staging/fbtft/fb_ili9163.c
> b/drivers/staging/fbtft/fb_ili9163.c
> > index 579e17734612..06a5a5f6e33e 100644
> > --- a/drivers/staging/fbtft/fb_ili9163.c
> > +++ b/drivers/staging/fbtft/fb_ili9163.c
> > @@ -194,7 +194,7 @@ static int set_var(struct fbtft_par *par)
> >
> >         /* Colorspcae */
> >         if (par->bgr)
> > -               mactrl_data |= (1 << 2);
> > +               mactrl_data |= (BIT(2));
> >         write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, mactrl_data);
> >         write_reg(par, MIPI_DCS_WRITE_MEMORY_START);
> >         return 0;
> > diff --git a/drivers/staging/fbtft/fb_ili9325.c
> b/drivers/staging/fbtft/fb_ili9325.c
> > index 7189de5ae4b3..ab1267a9cd11 100644
> > --- a/drivers/staging/fbtft/fb_ili9325.c
> > +++ b/drivers/staging/fbtft/fb_ili9325.c
> > @@ -126,7 +126,7 @@ static int init_display(struct fbtft_par *par)
> >         write_reg(par, 0x0013, 0x0000); /* VDV[4:0] for VCOM amplitude */
> >         mdelay(200); /* Dis-charge capacitor power voltage */
> >         write_reg(par, 0x0010, /* SAP, BT[3:0], AP, DSTB, SLP, STB */
> > -               (1 << 12) | (bt << 8) | (1 << 7) | (0x01 << 4));
> > +               (BIT(12)) | (bt << 8) | (BIT(7)) | (BIT(4)));
> >         write_reg(par, 0x0011, 0x220 | vc); /* DC1[2:0], DC0[2:0],
> VC[2:0] */
> >         mdelay(50); /* Delay 50ms */
> >         write_reg(par, 0x0012, vrh); /* Internal reference voltage= Vci;
> */
> > diff --git a/drivers/staging/fbtft/fb_ssd1289.c
> b/drivers/staging/fbtft/fb_ssd1289.c
> > index c603e1516e64..b22a07d79b34 100644
> > --- a/drivers/staging/fbtft/fb_ssd1289.c
> > +++ b/drivers/staging/fbtft/fb_ssd1289.c
> > @@ -47,7 +47,7 @@ static int init_display(struct fbtft_par *par)
> >         write_reg(par, 0x0E, 0x2B00);
> >         write_reg(par, 0x1E, 0x00B7);
> >         write_reg(par, 0x01,
> > -               (1 << 13) | (par->bgr << 11) | (1 << 9) | (HEIGHT - 1));
> > +               (BIT(13)) | (par->bgr << 11) | (BIT(9)) | (HEIGHT - 1));
> >         write_reg(par, 0x02, 0x0600);
> >         write_reg(par, 0x10, 0x0000);
> >         write_reg(par, 0x05, 0x0000);
> > --
> > 2.11.0
> >
>
>
>
> --
> With Best Regards,
> Andy Shevchenko
>

--001a1140379e4f179b054b887cc7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Mar 22, 2017 at 9:48 PM, Andy Shevchenko <span dir=3D"ltr">&lt;=
<a href=3D"mailto:andy.shevchenko@gmail.com" target=3D"_blank">andy.shevche=
nko@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span=
 class=3D"">On Wed, Mar 22, 2017 at 4:37 AM, Arushi Singhal<br>
&lt;<a href=3D"mailto:arushisinghal19971997@gmail.com">arushisinghal1997199=
7@gmail.<wbr>com</a>&gt; wrote:<br>
&gt; This patch replaces bit shifting on 1 with the BIT(x) macro.<br>
&gt; This was done with coccinelle:<br>
&gt; @@<br>
&gt; constant c;<br>
&gt; @@<br>
&gt;<br>
&gt; -1 &lt;&lt; c<br>
&gt; +BIT(c)<br>
&gt;<br>
<br>
</span>While using BIT() macro is a good idea, you make it inconsistent her=
e.<br>
There are at least two options:<br>
- do nothing<br>
- define _MASK:s with GENMASK() and reuse in the code (looking at the<br>
code they are masks, not just separate bits).<br></blockquote><div><br></di=
v><div>Hi Andy<br></div><div>I somewhat understood my mistake and your view=
s.<br></div><div>But It would be great if you can highlight more for my bet=
ter understanding.<br></div><div>Thanks<br></div><div>Arushi Singhal <br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_<wbr>agm1264k-fl.c | 4 ++--<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_<wbr>ili9163.c=C2=A0 =C2=A0 =C2=A0| 2 +=
-<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_<wbr>ili9325.c=C2=A0 =C2=A0 =C2=A0| 2 +=
-<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_<wbr>ssd1289.c=C2=A0 =C2=A0 =C2=A0| 2 +=
-<br>
&gt;=C2=A0 4 files changed, 5 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/fbtft/fb_<wbr>agm1264k-fl.c b/drivers/sta=
ging/fbtft/fb_<wbr>agm1264k-fl.c<br>
&gt; index 4ee76dbd30b5..d31deeab69b2 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_<wbr>agm1264k-fl.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_<wbr>agm1264k-fl.c<br>
&gt; @@ -369,7 +369,7 @@ static int write_vmem(struct fbtft_par *par, size_=
t offset, size_t len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0/* select left side (sc0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 * set addr<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0write_reg(par, 0x00, (1 &lt;&lt; 6) | (u8)addr_win.xs);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0write_reg(par, 0x00, (BIT(6)) | (u8)addr_win.xs);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0write_reg(par, 0x00, (0x17 &lt;&lt; 3) | (u8)y);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0/* write bitmap */<br>
&gt; @@ -392,7 +392,7 @@ static int write_vmem(struct fbtft_par *par, size_=
t offset, size_t len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0/* select right side (sc1)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 * set addr<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0write_reg(par, 0x01, 1 &lt;&lt; 6);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0write_reg(par, 0x01, BIT(6));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0write_reg(par, 0x01, (0x17 &lt;&lt; 3) | (u8)y);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0/* write bitmap */<br>
&gt; diff --git a/drivers/staging/fbtft/fb_<wbr>ili9163.c b/drivers/staging=
/fbtft/fb_<wbr>ili9163.c<br>
&gt; index 579e17734612..06a5a5f6e33e 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_<wbr>ili9163.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_<wbr>ili9163.c<br>
&gt; @@ -194,7 +194,7 @@ static int set_var(struct fbtft_par *par)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Colorspcae */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (par-&gt;bgr)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mactrl_data |=
=3D (1 &lt;&lt; 2);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mactrl_data |=
=3D (BIT(2));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, MIPI_DCS_SET_ADDRESS_M=
ODE, mactrl_data);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, MIPI_DCS_WRITE_MEMORY_=
START);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; diff --git a/drivers/staging/fbtft/fb_<wbr>ili9325.c b/drivers/staging=
/fbtft/fb_<wbr>ili9325.c<br>
&gt; index 7189de5ae4b3..ab1267a9cd11 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_<wbr>ili9325.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_<wbr>ili9325.c<br>
&gt; @@ -126,7 +126,7 @@ static int init_display(struct fbtft_par *par)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x0013, 0x0000); /* VD=
V[4:0] for VCOM amplitude */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mdelay(200); /* Dis-charge capacitor =
power voltage */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x0010, /* SAP, BT[3:0=
], AP, DSTB, SLP, STB */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 12=
) | (bt &lt;&lt; 8) | (1 &lt;&lt; 7) | (0x01 &lt;&lt; 4));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(BIT(12)) | (b=
t &lt;&lt; 8) | (BIT(7)) | (BIT(4)));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x0011, 0x220 | vc); /=
* DC1[2:0], DC0[2:0], VC[2:0] */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mdelay(50); /* Delay 50ms */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x0012, vrh); /* Inter=
nal reference voltage=3D Vci; */<br>
&gt; diff --git a/drivers/staging/fbtft/fb_<wbr>ssd1289.c b/drivers/staging=
/fbtft/fb_<wbr>ssd1289.c<br>
&gt; index c603e1516e64..b22a07d79b34 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_<wbr>ssd1289.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_<wbr>ssd1289.c<br>
&gt; @@ -47,7 +47,7 @@ static int init_display(struct fbtft_par *par)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x0E, 0x2B00);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x1E, 0x00B7);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x01,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(1 &lt;&lt; 13=
) | (par-&gt;bgr &lt;&lt; 11) | (1 &lt;&lt; 9) | (HEIGHT - 1));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(BIT(13)) | (p=
ar-&gt;bgr &lt;&lt; 11) | (BIT(9)) | (HEIGHT - 1));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x02, 0x0600);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x10, 0x0000);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_reg(par, 0x05, 0x0000);<br>
&gt; --<br>
&gt; 2.11.0<br>
&gt;<br>
<br>
<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
With Best Regards,<br>
Andy Shevchenko<br>
</font></span></blockquote></div><br></div></div>

--001a1140379e4f179b054b887cc7--


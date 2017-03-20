X-GM-THRID: 6399195765741191168
X-Received: by 10.25.201.198 with SMTP id z189mr3375818lff.15.1490014521776;
        Mon, 20 Mar 2017 05:55:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.131.70 with SMTP id f67ls1024434wmd.20.canary-gmail; Mon,
 20 Mar 2017 05:55:20 -0700 (PDT)
X-Received: by 10.28.4.148 with SMTP id 142mr151957wme.14.1490014520585;
        Mon, 20 Mar 2017 05:55:20 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id l138si891816wmg.0.2017.03.20.05.55.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 05:55:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id v2so10196180lfi.2
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 05:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=nEMRMCVk3I60DJOR1SpUntOgyiAOK5U0EGTU6DX6Ybg=;
        b=l+dJb8y3Y/ilypdqsfnlQdopIaZRnjWuhGSE/vFpKhvFnMJ+SD/gRQ44rrucTLEG0Q
         i3zUQ/P6v96KsbPMaLc8++cNE1x7xRUjZTJvNKdVK1g+1MhDrCX2EDS/e8Gj+OYVcBkO
         xCbsnLFhhhXsO4GDKSCSiYtAqVsqVMUg+IO2jCJkmaMCa+NQWU96llV7yQaxSLhEACVA
         bLRWWT/VfF6d0EMCKrgCB8uab6h51/keqZbbFOdAK86g4S4R+9YdYkymHFJxyBLqpnPY
         JmC74S7fqEfc/eBzc8iSXMeU4iwjz/KDSueVagTVpbXyrcqZGbmeiVfW7dZQfFGccaMl
         LH+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=nEMRMCVk3I60DJOR1SpUntOgyiAOK5U0EGTU6DX6Ybg=;
        b=FBNiCQe/wxMRWaYY3B/n6M/+Fs5YmegQmonl3wHc+MhD82v5AdPadnR2vu7Rrw8cSC
         sS8BH+a96vxjG4Xp0td7MV+JgtmuvLs0nj3DSMxtzwvrbfUfH20khA5LrnV0O4LjKbde
         KMQ7X7UxSP9L7pqUhTA8OpOGYn3u3PINha7yBye0LrlIfdweb6jZokfWQo3vCAVXnFHZ
         KW4+C6M3bw2U93SX0uuWjkUBHQ4d/iIcNv5pi1tniHznalpCWkeid2A9jMKCWeF5n674
         /rUbEbICOV8GcW1Z7R13lbwsH4dojFf2ILxM649pTk5cjkuYmMSzo7UxfdvR/j4byoaa
         ZRnQ==
X-Gm-Message-State: AFeK/H2+KiajqwUanp1M73bQYNH3HURekCfjKFhosnnTk8ltQo216HCcYashmeOGH4GVPkKYxiE+HANzWRyH5A==
X-Received: by 10.46.0.148 with SMTP id e20mr9620739lji.41.1490014520023; Mon,
 20 Mar 2017 05:55:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Mon, 20 Mar 2017 05:55:19 -0700 (PDT)
In-Reply-To: <20170320122817.GG4395@mwanda>
References: <20170319154920.GA12736@arushi-HP-Pavilion-Notebook> <20170320122817.GG4395@mwanda>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Mon, 20 Mar 2017 18:25:19 +0530
Message-ID: <CA+XqjF-5cp0erq34KSdWexLaaumbWO9p2iA-CFiCsaF8uXsCZg@mail.gmail.com>
Subject: Re: [PATCH v4] staging: sm750fb: Code readability is improved
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, driverdevel <devel@driverdev.osuosl.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, Teddy Wang <teddy.wang@siliconmotion.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1142bb402d2410054b290a6e

--001a1142bb402d2410054b290a6e
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 20, 2017 at 5:58 PM, Dan Carpenter <dan.carpenter@oracle.com>
wrote:

> On Sun, Mar 19, 2017 at 09:19:20PM +0530, Arushi Singhal wrote:
> > New variables are added to make the code more readable.
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  changes in v4
> >  -try to make the code much more readable.
> >  - defined the variable at the top of a block.
> > ---
> >  drivers/staging/sm750fb/ddk750_mode.c | 57
> +++++++++++++++++++----------------
> >  1 file changed, 31 insertions(+), 26 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_mode.c
> b/drivers/staging/sm750fb/ddk750_mode.c
> > index eea5aef2956f..6517e770e0a7 100644
> > --- a/drivers/staging/sm750fb/ddk750_mode.c
> > +++ b/drivers/staging/sm750fb/ddk750_mode.c
> > @@ -76,38 +76,43 @@ static int programModeRegisters(mode_parameter_t
> *pModeParam, struct pll_value *
> >  {
> >       int ret = 0;
> >       int cnt = 0;
> > -     unsigned int tmp, reg;
> > +     unsigned int tmp, reg, temp;
>
> Let's not have "tmp" and "temp" both.  Generally "tmp" is better because
> you can't confuse it with temperature.
>

Hi Dan
I have not added the tmp variable.
So is it good to use any other variable like "a" instead of temp.
Thanks
Arushi

>
> >
> >       if (pll->clockType == SECONDARY_PLL) {
> >               /* programe secondary pixel clock */
> >               poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
> > -             poke32(CRT_HORIZONTAL_TOTAL,
> > -                    (((pModeParam->horizontal_total - 1) <<
> > -                      CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> > -                     CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
> > -                    ((pModeParam->horizontal_display_end - 1) &
> > -                     CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
> > -
> > -             poke32(CRT_HORIZONTAL_SYNC,
> > -                    ((pModeParam->horizontal_sync_width <<
> > -                      CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> > -                     CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
> > -                    ((pModeParam->horizontal_sync_start - 1) &
> > -                     CRT_HORIZONTAL_SYNC_START_MASK));
> >
> > -             poke32(CRT_VERTICAL_TOTAL,
> > -                    (((pModeParam->vertical_total - 1) <<
> > -                      CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
> > -                     CRT_VERTICAL_TOTAL_TOTAL_MASK) |
> > -                    ((pModeParam->vertical_display_end - 1) &
> > -                     CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
> > +             temp = (pModeParam->horizontal_total - 1) <<
> > +                             CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT;
> > +             temp = temp & CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
>
>
> These two lines are really part of the same thing and they should be
> done together.
>
>                 tmp = ((pModeParam->horizontal_total - 1) <<
>                        CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
>                       CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
>
> > +             temp = temp | ((pModeParam->horizontal_display_end - 1) &
> > +                             CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK);
>
>                 tmp |= (pModeParam->horizontal_display_end - 1) &
>                        CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
>
> Use |=.  Remove the extra parenthesis.
>
> regards,
> dan carpenter
>
>

--001a1142bb402d2410054b290a6e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Mar 20, 2017 at 5:58 PM, Dan Carpenter <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:dan.carpenter@oracle.com" target=3D"_blank">dan.carpenter@o=
racle.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><span class=3D"gmail-">On Sun, Mar 19, 2017 at 09:19:20PM +0530,=
 Arushi Singhal wrote:<br>
&gt; New variables are added to make the code more readable.<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 changes in v4<br>
&gt;=C2=A0 -try to make the code much more readable.<br>
&gt;=C2=A0 - defined the variable at the top of a block.<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/sm750fb/<wbr>ddk750_mode.c | 57 ++++++++++++++++=
+++-----------<wbr>-----<br>
&gt;=C2=A0 1 file changed, 31 insertions(+), 26 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/sm750fb/<wbr>ddk750_mode.c b/drivers/stag=
ing/sm750fb/<wbr>ddk750_mode.c<br>
&gt; index eea5aef2956f..6517e770e0a7 100644<br>
&gt; --- a/drivers/staging/sm750fb/<wbr>ddk750_mode.c<br>
&gt; +++ b/drivers/staging/sm750fb/<wbr>ddk750_mode.c<br>
&gt; @@ -76,38 +76,43 @@ static int programModeRegisters(mode_<wbr>paramete=
r_t *pModeParam, struct pll_value *<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int cnt =3D 0;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0unsigned int tmp, reg;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0unsigned int tmp, reg, temp;<br>
<br>
</span>Let&#39;s not have &quot;tmp&quot; and &quot;temp&quot; both.=C2=A0 =
Generally &quot;tmp&quot; is better because<br>
you can&#39;t confuse it with temperature.<br></blockquote><div><br><div>Hi=
 Dan<br></div><div>I have not added the tmp variable.<br></div>So is it goo=
d to use any other variable like &quot;a&quot; instead of temp.<br></div><d=
iv>Thanks<br></div><div>Arushi <br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
<div><div class=3D"gmail-h5"><br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pll-&gt;clockType =3D=3D SECONDARY_PLL) =
{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* programe seco=
ndary pixel clock */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_PLL_C=
TRL, sm750_format_pll_reg(pll));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_HORIZONTAL=
_TOTAL,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 (((pModeParam-&gt;horizontal_<wbr>total - 1) &lt;&lt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>SHIFT) &amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>MASK) |<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 ((pModeParam-&gt;horizontal_<wbr>display_end - 1) &amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0CRT_HORIZONTAL_TOTAL_DISPLAY_<wbr>END_MASK));<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_HORIZONTAL=
_SYNC,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 ((pModeParam-&gt;horizontal_sync_<wbr>width &lt;&lt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 CRT_HORIZONTAL_SYNC_WIDTH_<wbr>SHIFT) &amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0CRT_HORIZONTAL_SYNC_WIDTH_<wbr>MASK) |<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 ((pModeParam-&gt;horizontal_sync_<wbr>start - 1) &amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0CRT_HORIZONTAL_SYNC_START_<wbr>MASK));<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_VERTICAL_T=
OTAL,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 (((pModeParam-&gt;vertical_total - 1) &lt;&lt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 CRT_VERTICAL_TOTAL_TOTAL_<wbr>SHIFT) &amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0CRT_VERTICAL_TOTAL_TOTAL_MASK) |<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 ((pModeParam-&gt;vertical_<wbr>display_end - 1) &amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0CRT_VERTICAL_TOTAL_DISPLAY_<wbr>END_MASK));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp =3D (pModeParam-=
&gt;horizontal_total - 1) &lt;&lt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>SHIFT;<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp =3D temp &amp; C=
RT_HORIZONTAL_TOTAL_TOTAL_<wbr>MASK;<br>
<br>
<br>
</div></div>These two lines are really part of the same thing and they shou=
ld be<br>
done together.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tmp =3D ((pModePara=
m-&gt;horizontal_total - 1) &lt;&lt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>SHIFT) &amp;<br>
<span class=3D"gmail-">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>MASK;<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp =3D temp | ((pMo=
deParam-&gt;horizontal_<wbr>display_end - 1) &amp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_DISPLAY_<wbr>END_MA=
SK);<br>
<br>
</span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tmp |=3D (pM=
odeParam-&gt;horizontal_<wbr>display_end - 1) &amp;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0CRT_HORIZONTAL_TOTAL_DISPLAY_<wbr>END_MASK;<br>
<br>
Use |=3D.=C2=A0 Remove the extra parenthesis.<br>
<br>
regards,<br>
dan carpenter<br>
<br>
</blockquote></div><br></div></div>

--001a1142bb402d2410054b290a6e--


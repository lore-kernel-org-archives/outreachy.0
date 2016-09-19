X-GM-THRID: 6332017798578962432
X-Received: by 10.46.33.163 with SMTP id h35mr642330lji.22.1474290450310;
        Mon, 19 Sep 2016 06:07:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.135 with SMTP id v129ls206306wmf.3.canary; Mon, 19 Sep
 2016 06:07:29 -0700 (PDT)
X-Received: by 10.28.152.6 with SMTP id a6mr510869wme.23.1474290449331;
        Mon, 19 Sep 2016 06:07:29 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id 82si1427814wmg.3.2016.09.19.06.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 06:07:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id s64so8366464lfs.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 06:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1vTJ/xlefYZi3Y8Jp6TfJV33QGt+2QPz2OeuFk5iFqg=;
        b=SPadplcV9CAiQI9yIACB0ixVy/ywqa2S2h7rVokGAGPDB9dMsytWApiKVSM5Mc5WkA
         fSfn9Trh6t2Vevj1OsT8ULJ09bDcYHWp8OknaEN24s6IxXK/O0gc1OQsy1baslq7Meb3
         QUP1e+iAVaACkH9ezbI61iZGigMi0B+3Uzqq/KThHb0IyRrQhMPswcUczIuWHv2mkQGP
         Wey/FwM+ET03WZvTgo6y0/DQixow1EdsAXT8ImseQJkOnGNgfeKjVdyVWAT/BKVmtTwt
         0Z9e/9dBpFlDPG5PsE9DkaX1cvw1pE5u2jWa9uJRNv/raOJnqu7wnhXNuu3294nE0Tux
         pmSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1vTJ/xlefYZi3Y8Jp6TfJV33QGt+2QPz2OeuFk5iFqg=;
        b=f5KJJi3Cgb1cozCRu2KNwvtsDCL7Nq76Au+RtRPm7RZk4BRnJrzgs6mxZszx8t1yrQ
         7R9tpQhI5SJ/Y5bzcCTeNMpBZm5tl02eJBwTB4Ts3ASF4LXdFwTwtpxWO7I4vhL/CLY1
         YCel6m2n1WsetPO3rhPXnvRtDbyu2w7fMphV04yPHA4TSUmz1ExoEwe41scJJCIXEfkg
         Bxkdghv+/BGQjJ+anKP6omKhG+BFeON24raaI29ES7Wz+9c4VNfF1GDyfitfpMsSEUg3
         JI4+sTllx5K6ohbvwFGjRZq/YFDhSzV3Dp6pbi+hdlBbYOlfALfZQed9w4XVxT31jICv
         jqhg==
X-Gm-Message-State: AE9vXwOWWQmClu0VUCmKgyDTSP5eVEBanlwxMEsFlWDVT08SjdnN1fzLsj97U/HedpRYH++0yiNy1FHLYfxwHQ==
X-Received: by 10.46.32.4 with SMTP id g4mr10700161ljg.69.1474290449041; Mon,
 19 Sep 2016 06:07:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.59.103 with HTTP; Mon, 19 Sep 2016 06:07:28 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609191424280.3203@hadrien>
References: <20160919122255.GA11414@fireworks> <alpine.DEB.2.10.1609191424280.3203@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Mon, 19 Sep 2016 16:07:28 +0300
Message-ID: <CALta04xHapK9dbAArSiMPQRfEUNhjwuAwdcu4VqQ-JedG+DT7w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: ade7758_ring:
 Match alignment with open parenthesis
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1142bed282cfbe053cdbfe69

--001a1142bed282cfbe053cdbfe69
Content-Type: text/plain; charset=UTF-8

Hi,

Thank you for your advice.

I used the script get_maintainer.pl and there are several
maintainers for this driver. It is enough to put a single
maintainer on cc, right?

Also, should I create a second version to make the
commit message clearer?

Georgiana

On 19 September 2016 at 15:26, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Mon, 19 Sep 2016, Georgiana Rodica Chelu wrote:
>
> > This patch indents the lines to match alignment with the open
> parenthesis.
> > Also, it organizes the parameters on a single line, in case the
> > modifications do not break the rule of 80 characters per line.
>
> The patch looks like it improves the readability of the code.  The commit
> message could be more concise though.  Use the imperative.  It is not
> necessary to say "This patch", since it is clear what is being discussed.
> So the first sentence could be, for example, "Indent lines to match..."
>
> Also, I guess there is some maintainer for this driver.  You should send
> patches to tha maintainer too.  See the Submit a patch section of the
> tutorial to see the suggested call to get_maintainer.pl to find who to
> also send the patch to.
>
> julia
>
> >
> > Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> > ---
> >  drivers/staging/iio/meter/ade7758_ring.c | 10 +++-------
> >  1 file changed, 3 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/iio/meter/ade7758_ring.c
> b/drivers/staging/iio/meter/ade7758_ring.c
> > index a6b76d4..57c213d 100644
> > --- a/drivers/staging/iio/meter/ade7758_ring.c
> > +++ b/drivers/staging/iio/meter/ade7758_ring.c
> > @@ -38,18 +38,14 @@ static int ade7758_write_waveform_type(struct
> device *dev, unsigned int type)
> >       int ret;
> >       u8 reg;
> >
> > -     ret = ade7758_spi_read_reg_8(dev,
> > -                     ADE7758_WAVMODE,
> > -                     &reg);
> > +     ret = ade7758_spi_read_reg_8(dev, ADE7758_WAVMODE, &reg);
> >       if (ret)
> >               goto out;
> >
> >       reg &= ~0x1F;
> >       reg |= type & 0x1F;
> >
> > -     ret = ade7758_spi_write_reg_8(dev,
> > -                     ADE7758_WAVMODE,
> > -                     reg);
> > +     ret = ade7758_spi_write_reg_8(dev, ADE7758_WAVMODE, reg);
> >  out:
> >       return ret;
> >  }
> > @@ -94,7 +90,7 @@ static int ade7758_ring_preenable(struct iio_dev
> *indio_dev)
> >                                indio_dev->masklength);
> >
> >       ade7758_write_waveform_type(&indio_dev->dev,
> > -             indio_dev->channels[channel].address);
> > +                                 indio_dev->channels[channel].address);
> >
> >       return 0;
> >  }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20160919122255.GA11414%40fireworks.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a1142bed282cfbe053cdbfe69
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>Thank you for yo=
ur advice. <br><br></div>I used the script <a href=3D"http://get_maintainer=
.pl">get_maintainer.pl</a> and there are several<br></div>maintainers for t=
his driver. It is enough to put a single<br>maintainer on cc, right?<br><br=
>Also, should I create a second version to make the<br>commit message clear=
er?<br><br></div><div>Georgiana<br></div></div></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On 19 September 2016 at 15:26, Julia La=
wall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=
=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">On Mon, 19 Sep 2016, Georgiana Rodica Chelu =
wrote:<br>
<br>
&gt; This patch indents the lines to match alignment with the open parenthe=
sis.<br>
&gt; Also, it organizes the parameters on a single line, in case the<br>
&gt; modifications do not break the rule of 80 characters per line.<br>
<br>
</span>The patch looks like it improves the readability of the code.=C2=A0 =
The commit<br>
message could be more concise though.=C2=A0 Use the imperative.=C2=A0 It is=
 not<br>
necessary to say &quot;This patch&quot;, since it is clear what is being di=
scussed.<br>
So the first sentence could be, for example, &quot;Indent lines to match...=
&quot;<br>
<br>
Also, I guess there is some maintainer for this driver.=C2=A0 You should se=
nd<br>
patches to tha maintainer too.=C2=A0 See the Submit a patch section of the<=
br>
tutorial to see the suggested call to <a href=3D"http://get_maintainer.pl" =
rel=3D"noreferrer" target=3D"_blank">get_maintainer.pl</a> to find who to<b=
r>
also send the patch to.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Signed-off-by: Georgiana Rodica Chelu &lt;<a href=3D"mailto:georgiana.=
chelu93@gmail.com">georgiana.chelu93@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/meter/<wbr>ade7758_ring.c | 10 +++-------<br=
>
&gt;=C2=A0 1 file changed, 3 insertions(+), 7 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/meter/<wbr>ade7758_ring.c b/drivers/s=
taging/iio/meter/<wbr>ade7758_ring.c<br>
&gt; index a6b76d4..57c213d 100644<br>
&gt; --- a/drivers/staging/iio/meter/<wbr>ade7758_ring.c<br>
&gt; +++ b/drivers/staging/iio/meter/<wbr>ade7758_ring.c<br>
&gt; @@ -38,18 +38,14 @@ static int ade7758_write_waveform_type(<wbr>struct=
 device *dev, unsigned int type)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 reg;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0ret =3D ade7758_spi_read_reg_8(dev,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ADE7758_WAVMODE,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0&amp;reg);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D ade7758_spi_read_reg_8(dev, ADE7758_WAVMO=
DE, &amp;reg);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0reg &amp;=3D ~0x1F;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0reg |=3D type &amp; 0x1F;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0ret =3D ade7758_spi_write_reg_8(dev,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ADE7758_WAVMODE,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0reg);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D ade7758_spi_write_reg_8(dev, ADE7758_WAVM=
ODE, reg);<br>
&gt;=C2=A0 out:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 }<br>
&gt; @@ -94,7 +90,7 @@ static int ade7758_ring_preenable(struct iio_dev *in=
dio_dev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 indio_dev-&gt;masklength);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ade7758_write_waveform_type(&amp;<wbr>indio_=
dev-&gt;dev,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0indio_dev-&gt;channel=
s[channel].<wbr>address);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0indio_dev-&gt;channels[cha=
nnel].<wbr>address);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160919122255.GA11414%40fireworks" rel=3D=
"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/outre=
achy-kernel/<wbr>20160919122255.GA11414%<wbr>40fireworks</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a1142bed282cfbe053cdbfe69--


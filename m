X-GM-THRID: 6336889298052186112
X-Received: by 10.13.214.3 with SMTP id y3mr1301332ywd.174.1475422588652;
        Sun, 02 Oct 2016 08:36:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.40 with SMTP id 37ls2584803otr.33.gmail; Sun, 02 Oct
 2016 08:36:28 -0700 (PDT)
X-Received: by 10.129.101.215 with SMTP id z206mr3987219ywb.86.1475422588310;
        Sun, 02 Oct 2016 08:36:28 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id p193si1618236ywe.6.2016.10.02.08.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:36:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id n66so9199877qkf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 08:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=g4NVk/TfR0yTEw9oQm+T06y8OhXgK83poglpPEGHbfE=;
        b=xrnu+84TpqBWDs6Pfj4jNgwOaSZeVBZTPW3cOm4gizUYdUeIFmRs3IQmC2lmTvwG6f
         8UBTKPY8X7hUnTztHO5yY5B+UZEpI/8XwN4PXU1xbQWPSiTDen0BhY0DbAlpvfcYFSwV
         veCBmJmYQBo03iUiW7VgfDU6DK+tOv/DaYi4TaFROTDUE2ak9wuEmoKo7neqKZe5RmIr
         b90E3ONZ+pafz7rNqyDqqtH2MkLd5t3FzBkTJyc89m5FLZ8pvJxK07dG/b6i5aE7UwK6
         qM4/ixpqfl3xnHYNYJ3CYXsPtMxo3IYN2eaxyzUYM2Vl8xE2qGfvFNL8Clyehre9tG/N
         aR8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=g4NVk/TfR0yTEw9oQm+T06y8OhXgK83poglpPEGHbfE=;
        b=L15EftGKCPcf8RALTqOqDOLAbAfWB7sO9ZEJAVTX8Ef0CV/eqOiSC8WyI0bApQXhWF
         +7oKEiJoRXtDYNy2Btd+PO+ycLC6zA4k8/dLbzZaDAM5DXK855ERzKsINTcjPQNLAsNb
         iRyTR+AY3dUBsUVch4SyFgInW7G2zH5aGcBKFxXS9yP1ZpUkvlBXSP10IqYqRwQJ0jYe
         s2hsZTt73WJ2vMxKjcNIgfvhMrAh8VK+sk6tvrVvE0GwD1+PDjDHg9mm8wdnDnmgCHmr
         oDuhk7O2gLu8Tt2xueDLImnIOdUP6zXSSTq9n4YzJbQBS7HXNqYHVfbTPD6nBLItH+46
         uQuQ==
X-Gm-Message-State: AA6/9RkmfcWgGnPdLC+dq6tl7rpTWuY6fOcKvRPWos3P13dGQjeZv5QM8pi8HHrfyNy/V6sya86KWEQC9KKgog==
X-Received: by 10.55.65.70 with SMTP id o67mr6464889qka.305.1475422587680;
 Sun, 02 Oct 2016 08:36:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.171.92 with HTTP; Sun, 2 Oct 2016 08:36:27 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1610021729380.3327@hadrien>
References: <20161002152635.GA4163@life-desktop> <alpine.DEB.2.10.1610021729380.3327@hadrien>
From: Anchal Jain <anchalj109@gmail.com>
Date: Sun, 2 Oct 2016 21:06:27 +0530
Message-ID: <CAAbeOStiOFD5gOQ_m6Fb7ZabMT6Sh-6YAsOp2jbrFOw-ReLTww@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] staging: iio: cdc: ad7152: Add
 blank line after
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/alternative; boundary=001a114abc7e3b7d87053de3976c

--001a114abc7e3b7d87053de3976c
Content-Type: text/plain; charset=UTF-8

yes,

I used the get_maintainer command but In CC I need to add maintainers only
or everyone which listed there?

On Sun, Oct 2, 2016 at 9:02 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 2 Oct 2016, Anchal Jain wrote:
>
> > declarations to increase readability
> > Reply-To:
> >
> > Add a blank line after a function declaration because local variable
> > declarations should be seprated from the function's statments by a blank
> line
> > to increase the readability of a code.
>
> The log message is not formatted properly.  It looks like a newline ended
> up in the subject line, and the Reply-to is not needed.
>
> There are people who should be on the CC list who are not.  Are you using
> the get_maintainer command shown in the Submit a patch section of the
> tutorial?
>
> julia
>
> >
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > ---
> >  drivers/staging/iio/cdc/ad7152.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/
> ad7152.c
> > index 1962052..f9767e9 100644
> > --- a/drivers/staging/iio/cdc/ad7152.c
> > +++ b/drivers/staging/iio/cdc/ad7152.c
> > @@ -134,6 +134,7 @@ static inline ssize_t ad7152_start_calib(struct
> device *dev,
> >       mutex_unlock(&indio_dev->mlock);
> >       return len;
> >  }
> > +
> >  static ssize_t ad7152_start_offset_calib(struct device *dev,
> >                                        struct device_attribute *attr,
> >                                        const char *buf,
> > @@ -142,6 +143,7 @@ static ssize_t ad7152_start_offset_calib(struct
> device *dev,
> >       return ad7152_start_calib(dev, attr, buf, len,
> >                                 AD7152_CONF_MODE_OFFS_CAL);
> >  }
> > +
> >  static ssize_t ad7152_start_gain_calib(struct device *dev,
> >                                      struct device_attribute *attr,
> >                                      const char *buf,
> > @@ -317,6 +319,7 @@ out:
> >       mutex_unlock(&indio_dev->mlock);
> >       return ret;
> >  }
> > +
> >  static int ad7152_read_raw(struct iio_dev *indio_dev,
> >                          struct iio_chan_spec const *chan,
> >                          int *val, int *val2,
> > @@ -470,6 +473,7 @@ static const struct iio_chan_spec ad7152_channels[]
> = {
> >               BIT(IIO_CHAN_INFO_SCALE),
> >       }
> >  };
> > +
> >  /*
> >   * device probe and remove
> >   */
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20161002152635.GA4163%40life-desktop.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114abc7e3b7d87053de3976c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>yes,<br><br></div><div>I used the get_maintainer comm=
and but In CC I need to add maintainers only or everyone which listed there=
?<br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Oct 2, 2016 at 9:02 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
<br>
On Sun, 2 Oct 2016, Anchal Jain wrote:<br>
<br>
&gt; declarations to increase readability<br>
&gt; Reply-To:<br>
&gt;<br>
&gt; Add a blank line after a function declaration because local variable<b=
r>
&gt; declarations should be seprated from the function&#39;s statments by a=
 blank line<br>
&gt; to increase the readability of a code.<br>
<br>
</span>The log message is not formatted properly.=C2=A0 It looks like a new=
line ended<br>
up in the subject line, and the Reply-to is not needed.<br>
<br>
There are people who should be on the CC list who are not.=C2=A0 Are you us=
ing<br>
the get_maintainer command shown in the Submit a patch section of the<br>
tutorial?<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail.com"=
>anchalj109@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/cdc/<wbr>ad7152.c | 4 ++++<br>
&gt;=C2=A0 1 file changed, 4 insertions(+)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/cdc/<wbr>ad7152.c b/drivers/staging/i=
io/cdc/<wbr>ad7152.c<br>
&gt; index 1962052..f9767e9 100644<br>
&gt; --- a/drivers/staging/iio/cdc/<wbr>ad7152.c<br>
&gt; +++ b/drivers/staging/iio/cdc/<wbr>ad7152.c<br>
&gt; @@ -134,6 +134,7 @@ static inline ssize_t ad7152_start_calib(struct de=
vice *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;indio_dev-&gt;<wbr>mlock);=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return len;<br>
&gt;=C2=A0 }<br>
&gt; +<br>
&gt;=C2=A0 static ssize_t ad7152_start_offset_calib(<wbr>struct device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struc=
t device_attribute *attr,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const=
 char *buf,<br>
&gt; @@ -142,6 +143,7 @@ static ssize_t ad7152_start_offset_calib(<wbr>stru=
ct device *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return ad7152_start_calib(dev, attr, buf, le=
n,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AD7152_CONF_MODE_OFFS_CAL);=
<br>
&gt;=C2=A0 }<br>
&gt; +<br>
&gt;=C2=A0 static ssize_t ad7152_start_gain_calib(struct device *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct devic=
e_attribute *attr,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const char *=
buf,<br>
&gt; @@ -317,6 +319,7 @@ out:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;indio_dev-&gt;<wbr>mlock);=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 }<br>
&gt; +<br>
&gt;=C2=A0 static int ad7152_read_raw(struct iio_dev *indio_dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 struct iio_chan_spec const *chan,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 int *val, int *val2,<br>
&gt; @@ -470,6 +473,7 @@ static const struct iio_chan_spec ad7152_channels[=
] =3D {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BIT(IIO_CHAN_INF=
O_SCALE),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 };<br>
&gt; +<br>
&gt;=C2=A0 /*<br>
&gt;=C2=A0 =C2=A0* device probe and remove<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt; --<br>
&gt; 1.9.1<br>
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
gle.com/d/msgid/outreachy-kernel/20161002152635.GA4163%40life-desktop" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/ou=
treachy-kernel/<wbr>20161002152635.GA4163%40life-<wbr>desktop</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a114abc7e3b7d87053de3976c--


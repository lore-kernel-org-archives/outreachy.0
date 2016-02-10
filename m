X-GM-THRID: 6249319551203278848
X-Received: by 10.129.49.18 with SMTP id x18mr954980ywx.37.1455070579059;
        Tue, 09 Feb 2016 18:16:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.7 with SMTP id g7ls133310qgg.49.gmail; Tue, 09 Feb 2016
 18:16:18 -0800 (PST)
X-Received: by 10.129.80.3 with SMTP id e3mr35005851ywb.23.1455070578503;
        Tue, 09 Feb 2016 18:16:18 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x22b.google.com (mail-ob0-x22b.google.com. [2607:f8b0:4003:c01::22b])
        by gmr-mx.google.com with ESMTPS id mu6si80951igb.1.2016.02.09.18.16.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 18:16:18 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22b as permitted sender) client-ip=2607:f8b0:4003:c01::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22b as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22b.google.com with SMTP id wb13so8531129obb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 18:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SnAuC7c32ycu9G6lZJDyPHLwMJlWzVon0WcL/OA1KT4=;
        b=n5gLNAEkHW5kSsN7TkQDV1RaA85UQ8bj0gg6zxdnos9WB4wxRg51jN3tiWTwgFDGHs
         TLWflK+RS+ClQOSIdZRMOJGw7E16O5yIVlJtCtwn5/mfJ6xkyZiWyl0F3vQ2jB0jpIrv
         uBWXbloxlfMrHhKDwtW9X9A8RyCOWkCt0jjB9y/3n3oaaTFcSV/SQkl3eC8XXcQPgb9z
         PdNcw3pzmMKopzakJ+Bgx1A7jkN+hc4H/Lfezg0hWufixEH4Hq6Eh2lCo1xgFPwjZ/A1
         z7Qxhn0F9dJ+bNrHf9G54tsJIms2suFSS8cnQ/OXhICqqh5ahWe+eU3huGP5Sq7u5d+A
         mByg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=SnAuC7c32ycu9G6lZJDyPHLwMJlWzVon0WcL/OA1KT4=;
        b=cPARo3c63KHw/+4T3/ZXKu4NSak01waToQUjTwwl607Vu3NalT68ramgVc+1uNaU1y
         +r9uc8/Fz/0TiBsZI6cMbuXr4AjRKtpfYf6UVXXrTM8s7HkUmet0vzCG2m5i3a6oRQUA
         58h6CSktysReB+jMdvN9Dkn63lD7IlT5VDD9mot9RpUTvgcZef0ywIZWmGIAmquiA+cr
         yDzxT/gcuIK5ogX4+obeKuWumAbhF5ZlAnlFGqacHMJ7kusmmrTJfnnY09i7PU4m4yVH
         yNIViT2eLnf2WxWzsg3w1K3goSXGMMdApGsF2diiDUzH/OBvwb4YAAhRLvyrXhKweRoH
         OzlA==
X-Gm-Message-State: AG10YOSTMYqBbIwFCvEwzVuSwQ4nhyPk91h8aF1gLoFl2oE9jb1QmAXs1pkLe5vIMZybtx/t9Cq9F8zv+YZPnw==
MIME-Version: 1.0
X-Received: by 10.60.233.193 with SMTP id ty1mr12212940oec.0.1455070578318;
 Tue, 09 Feb 2016 18:16:18 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Tue, 9 Feb 2016 18:16:18 -0800 (PST)
In-Reply-To: <20160210015245.GA19273@kroah.com>
References: <20160209205055.GA8154@janani-Inspiron-3521>
	<20160210015245.GA19273@kroah.com>
Date: Tue, 9 Feb 2016 21:16:18 -0500
Message-ID: <CANnt6XnmcvqmJuD-5V5u6O3nENmxe_3Ehsuak6T8mneejhg2mg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Remove unneeded pointer
 casts in function arguments
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1136af70f1a6fb052b6104c5

--001a1136af70f1a6fb052b6104c5
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 9, 2016 at 8:52 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Feb 09, 2016 at 03:50:56PM -0500, Janani Ravichandran wrote:
> > Remove pointer casts in function arguments as they are not required.
> > This patch removes all such casts found in the driver iio by the
> > following coccinelle patch.
> > @@
> > type t;
> > expression e;
> > identifier f;
> > @@
> >
> >   f(...,
> > - (t *)
> >   e,
> >   ...)
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/iio/accel/adis16240_core.c      |  2 +-
> >  drivers/staging/iio/accel/lis3l02dq_core.c      |  4 ++--
> >  drivers/staging/iio/accel/sca3000_core.c        |  2 +-
> >  drivers/staging/iio/impedance-analyzer/ad5933.c | 12 ++++++------
> >  drivers/staging/iio/light/tsl2583.c             |  4 ++--
> >  drivers/staging/iio/light/tsl2x7x_core.c        |  8 ++++----
> >  drivers/staging/iio/meter/ade7854-spi.c         |  4 ++--
> >  drivers/staging/iio/resolver/ad2s1210.c         |  4 ++--
> >  8 files changed, 20 insertions(+), 20 deletions(-)
>
> Please always test-build your patches, this one blows up the build by
> adding a ton of warnings :(
>
I'm really sorry, I must have missed it. Will take care from next time.

Thanks.
Janani.

--001a1136af70f1a6fb052b6104c5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Feb 9, 2016 at 8:52 PM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Tue, Feb 09, 2016 at 03:50:56PM -0500, Janani Ravichandran wrot=
e:<br>
&gt; Remove pointer casts in function arguments as they are not required.<b=
r>
&gt; This patch removes all such casts found in the driver iio by the<br>
&gt; following coccinelle patch.<br>
&gt; @@<br>
&gt; type t;<br>
&gt; expression e;<br>
&gt; identifier f;<br>
&gt; @@<br>
&gt;<br>
&gt;=C2=A0 =C2=A0f(...,<br>
&gt; - (t *)<br>
&gt;=C2=A0 =C2=A0e,<br>
&gt;=C2=A0 =C2=A0...)<br>
&gt;<br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/accel/adis16240_core.c=C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/iio/accel/lis3l02dq_core.c=C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 4 ++--<br>
&gt;=C2=A0 drivers/staging/iio/accel/sca3000_core.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/iio/impedance-analyzer/ad5933.c | 12 ++++++-----=
-<br>
&gt;=C2=A0 drivers/staging/iio/light/tsl2583.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 4 ++--<br>
&gt;=C2=A0 drivers/staging/iio/light/tsl2x7x_core.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 8 ++++----<br>
&gt;=C2=A0 drivers/staging/iio/meter/ade7854-spi.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 4 ++--<br>
&gt;=C2=A0 drivers/staging/iio/resolver/ad2s1210.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 4 ++--<br>
&gt;=C2=A0 8 files changed, 20 insertions(+), 20 deletions(-)<br>
<br>
</span>Please always test-build your patches, this one blows up the build b=
y<br>
adding a ton of warnings :(<br></blockquote><div>I&#39;m really sorry, I mu=
st have missed it. Will take care from next time.<br><br></div><div>Thanks.=
<br></div><div>Janani.<br></div></div><br></div></div>

--001a1136af70f1a6fb052b6104c5--


X-GM-THRID: 205981220864
X-Received: by 10.112.45.197 with SMTP id p5mr3993788lbm.18.1424209941522;
        Tue, 17 Feb 2015 13:52:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.9 with SMTP id bc9ls379926lab.101.gmail; Tue, 17 Feb
 2015 13:52:21 -0800 (PST)
X-Received: by 10.152.26.74 with SMTP id j10mr3874075lag.10.1424209940993;
        Tue, 17 Feb 2015 13:52:20 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com. [209.85.215.48])
        by gmr-mx.google.com with ESMTPS id mv2si2152665lbc.0.2015.02.17.13.52.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 13:52:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 209.85.215.48 as permitted sender) client-ip=209.85.215.48;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 209.85.215.48 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by labgf13 with SMTP id gf13so38498191lab.9
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 13:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=dLbuvLr1WvyeiKjx7ZstcjNVOLscpTLHL9gIJxP2gEw=;
        b=M+CgVUdtjtpCKwIqthQJrFkxe4CM06tAaGxklCfFccbuqBqGvuQOSQ4skjhwMgWBHN
         owJdwhj7BOkgWHkWt9f13AKBDMHMOIHVEBD+IeEbpjPNyup2JHkfkQkoPgJcEXdzGmQs
         p8NbeW3f2PaJXcVHDthxgae+OLXeLbTZ4D7qGX8HmclmAWiBPOX29ZstraqY+V5Q8bZ+
         VZjNcFaVrSrhp14qLPuSzShlXDrFC7RFO6tEparcZ4rV+bLKUvE5N+YrH53y5752PNmM
         WfCuevJYwSwBOFFEehwINCpzlt5ud1cqDfSDtLjln3Sqo5MljP3hPaf+jpuvPSVf8xaG
         xGEw==
MIME-Version: 1.0
X-Received: by 10.152.29.66 with SMTP id i2mr31235378lah.64.1424209940841;
 Tue, 17 Feb 2015 13:52:20 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Tue, 17 Feb 2015 13:52:20 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502172227300.2306@localhost6.localdomain6>
References: <1424204282-31960-1-git-send-email-ksenija.stanojevic@gmail.com>
	<alpine.DEB.2.02.1502172227300.2306@localhost6.localdomain6>
Date: Tue, 17 Feb 2015 22:52:20 +0100
Message-ID: <CAL7P5jKiTvGSxTrJE7uApKy7Z+EnVZH2x-VRRcPqWYDquqViwg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: vino: Replace
 printk() and dprintk() with dev_dbg().
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0160bac09c0beb050f4fb785

--089e0160bac09c0beb050f4fb785
Content-Type: text/plain; charset=UTF-8

I removed variables KERN_ERR and KERN_INFO
 and added device argument to dev_dbg in line 230, I don't know where else
to put that argument.

On Tue, Feb 17, 2015 at 10:27 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Tue, 17 Feb 2015, Ksenija Stanojevic wrote:
>
> > Making variants of existing macros is against kernel coding style. This
> > patch removes all definitions made by macro dprinkt() and replaces them
> > with dev_dbg().
> >
> > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > ---
>
> What change is made for v2?
>
> julia
>
> >  drivers/staging/media/vino/saa7191.c | 58
> ++++++++++++++++--------------------
> >  1 file changed, 26 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/staging/media/vino/saa7191.c
> b/drivers/staging/media/vino/saa7191.c
> > index 087acab..2aa68c6 100644
> > --- a/drivers/staging/media/vino/saa7191.c
> > +++ b/drivers/staging/media/vino/saa7191.c
> > @@ -33,13 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi
> >");
> >  MODULE_LICENSE("GPL");
> >
> >
> > -/* #define SAA7191_DEBUG */
> >
> > -#ifdef SAA7191_DEBUG
> > -#define dprintk(x...) printk("SAA7191: " x);
> > -#else
> > -#define dprintk(x...)
> > -#endif
> >
> >  #define SAA7191_SYNC_COUNT   30
> >  #define SAA7191_SYNC_DELAY   100     /* milliseconds */
> > @@ -116,7 +110,7 @@ static int saa7191_read_status(struct v4l2_subdev
> *sd, u8 *value)
> >
> >       ret = i2c_master_recv(client, value, 1);
> >       if (ret < 0) {
> > -             printk(KERN_ERR "SAA7191: saa7191_read_status(): read
> failed\n");
> > +             dev_dbg("saa7191_read_status(): read failed\n");
> >               return ret;
> >       }
> >
> > @@ -147,7 +141,7 @@ static int saa7191_write_block(struct v4l2_subdev
> *sd,
> >
> >       ret = i2c_master_send(client, data, length);
> >       if (ret < 0) {
> > -             printk(KERN_ERR "SAA7191: saa7191_write_block(): "
> > +             dev_dbg("saa7191_write_block(): "
> >                      "write failed\n");
> >               return ret;
> >       }
> > @@ -230,9 +224,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd,
> v4l2_std_id norm)
> >
> >       decoder->norm = norm;
> >
> > -     dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
> > +     dev_dbg(&sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
> >               stdc, chcv);
> > -     dprintk("norm: %llx\n", norm);
> > +     dev_dbg("norm: %llx\n", norm);
> >
> >       return 0;
> >  }
> > @@ -241,21 +235,21 @@ static int saa7191_wait_for_signal(struct
> v4l2_subdev *sd, u8 *status)
> >  {
> >       int i = 0;
> >
> > -     dprintk("Checking for signal...\n");
> > +     dev_dbg("Checking for signal...\n");
> >
> >       for (i = 0; i < SAA7191_SYNC_COUNT; i++) {
> >               if (saa7191_read_status(sd, status))
> >                       return -EIO;
> >
> >               if (((*status) & SAA7191_STATUS_HLCK) == 0) {
> > -                     dprintk("Signal found\n");
> > +                     dev_dbg("Signal found\n");
> >                       return 0;
> >               }
> >
> >               msleep(SAA7191_SYNC_DELAY);
> >       }
> >
> > -     dprintk("No signal\n");
> > +     dev_dbg("No signal\n");
> >
> >       return -EBUSY;
> >  }
> > @@ -269,7 +263,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd,
> v4l2_std_id *norm)
> >       v4l2_std_id old_norm = decoder->norm;
> >       int err = 0;
> >
> > -     dprintk("SAA7191 extended signal auto-detection...\n");
> > +     dev_dbg("SAA7191 extended signal auto-detection...\n");
> >
> >       *norm &= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
> >       stdc &= ~SAA7191_STDC_SECS;
> > @@ -301,13 +295,13 @@ static int saa7191_querystd(struct v4l2_subdev
> *sd, v4l2_std_id *norm)
> >
> >       if (status & SAA7191_STATUS_FIDT) {
> >               /* 60Hz signal -> NTSC */
> > -             dprintk("60Hz signal: NTSC\n");
> > +             dev_dbg("60Hz signal: NTSC\n");
> >               *norm &= V4L2_STD_NTSC;
> >               return 0;
> >       }
> >
> >       /* 50Hz signal */
> > -     dprintk("50Hz signal: Trying PAL...\n");
> > +     dev_dbg("50Hz signal: Trying PAL...\n");
> >
> >       /* try PAL first */
> >       err = saa7191_s_std(sd, V4L2_STD_PAL);
> > @@ -322,19 +316,19 @@ static int saa7191_querystd(struct v4l2_subdev
> *sd, v4l2_std_id *norm)
> >
> >       /* not 50Hz ? */
> >       if (status & SAA7191_STATUS_FIDT) {
> > -             dprintk("No 50Hz signal\n");
> > +             dev_dbg("No 50Hz signal\n");
> >               saa7191_s_std(sd, old_norm);
> >               *norm = V4L2_STD_UNKNOWN;
> >               return 0;
> >       }
> >
> >       if (status & SAA7191_STATUS_CODE) {
> > -             dprintk("PAL\n");
> > +             dev_dbg("PAL\n");
> >               *norm &= V4L2_STD_PAL;
> >               return saa7191_s_std(sd, old_norm);
> >       }
> >
> > -     dprintk("No color detected with PAL - Trying SECAM...\n");
> > +     dev_dbg("No color detected with PAL - Trying SECAM...\n");
> >
> >       /* no color detected ? -> try SECAM */
> >       err = saa7191_s_std(sd, V4L2_STD_SECAM);
> > @@ -349,19 +343,19 @@ static int saa7191_querystd(struct v4l2_subdev
> *sd, v4l2_std_id *norm)
> >
> >       /* not 50Hz ? */
> >       if (status & SAA7191_STATUS_FIDT) {
> > -             dprintk("No 50Hz signal\n");
> > +             dev_dbg("No 50Hz signal\n");
> >               *norm = V4L2_STD_UNKNOWN;
> >               goto out;
> >       }
> >
> >       if (status & SAA7191_STATUS_CODE) {
> >               /* Color detected -> SECAM */
> > -             dprintk("SECAM\n");
> > +             dev_dbg("SECAM\n");
> >               *norm &= V4L2_STD_SECAM;
> >               return saa7191_s_std(sd, old_norm);
> >       }
> >
> > -     dprintk("No color detected with SECAM - Going back to PAL.\n");
> > +     dev_dbg("No color detected with SECAM - Going back to PAL.\n");
> >       *norm = V4L2_STD_UNKNOWN;
> >
> >  out:
> > @@ -372,30 +366,30 @@ static int saa7191_autodetect_norm(struct
> v4l2_subdev *sd)
> >  {
> >       u8 status;
> >
> > -     dprintk("SAA7191 signal auto-detection...\n");
> > +     dev_dbg("SAA7191 signal auto-detection...\n");
> >
> > -     dprintk("Reading status...\n");
> > +     dev_dbg("Reading status...\n");
> >
> >       if (saa7191_read_status(sd, &status))
> >               return -EIO;
> >
> > -     dprintk("Checking for signal...\n");
> > +     dev_dbg("Checking for signal...\n");
> >
> >       /* no signal ? */
> >       if (status & SAA7191_STATUS_HLCK) {
> > -             dprintk("No signal\n");
> > +             dev_dbg("No signal\n");
> >               return -EBUSY;
> >       }
> >
> > -     dprintk("Signal found\n");
> > +     dev_dbg("Signal found\n");
> >
> >       if (status & SAA7191_STATUS_FIDT) {
> >               /* 60hz signal -> NTSC */
> > -             dprintk("NTSC\n");
> > +             dev_dbg("NTSC\n");
> >               return saa7191_s_std(sd, V4L2_STD_NTSC);
> >       } else {
> >               /* 50hz signal -> PAL */
> > -             dprintk("PAL\n");
> > +             dev_dbg("PAL\n");
> >               return saa7191_s_std(sd, V4L2_STD_PAL);
> >       }
> >  }
> > @@ -606,18 +600,18 @@ static int saa7191_probe(struct i2c_client *client,
> >
> >       err = saa7191_write_block(sd, sizeof(initseq), initseq);
> >       if (err) {
> > -             printk(KERN_ERR "SAA7191 initialization failed\n");
> > +             dev_dbg("SAA7191 initialization failed\n");
> >               return err;
> >       }
> >
> > -     printk(KERN_INFO "SAA7191 initialized\n");
> > +     dev_dbg("SAA7191 initialized\n");
> >
> >       decoder->input = SAA7191_INPUT_COMPOSITE;
> >       decoder->norm = V4L2_STD_PAL;
> >
> >       err = saa7191_autodetect_norm(sd);
> >       if (err && (err != -EBUSY))
> > -             printk(KERN_ERR "SAA7191: Signal auto-detection failed\n");
> > +             dev_dbg("SAA7191: Signal auto-detection failed\n");
> >
> >       return 0;
> >  }
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1424204282-31960-1-git-send-email-ksenija.stanojevic%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--089e0160bac09c0beb050f4fb785
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I removed variables KERN_ERR and KERN_INFO<br></div>=
=C2=A0and added device argument to dev_dbg in line 230, I don&#39;t know wh=
ere else to put that argument.<br></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Tue, Feb 17, 2015 at 10:27 PM, Julia Lawall <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">=
julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><span class=3D"">On Tue, 17 Feb 2015, Ksenija Stanojevic wrote:<br>
<br>
&gt; Making variants of existing macros is against kernel coding style. Thi=
s<br>
&gt; patch removes all definitions made by macro dprinkt() and replaces the=
m<br>
&gt; with dev_dbg().<br>
&gt;<br>
&gt; Signed-off-by: Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanoj=
evic@gmail.com">ksenija.stanojevic@gmail.com</a>&gt;<br>
&gt; ---<br>
<br>
</span>What change is made for v2?<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 drivers/staging/media/vino/saa7191.c | 58 ++++++++++++++++------=
--------------<br>
&gt;=C2=A0 1 file changed, 26 insertions(+), 32 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/me=
dia/vino/saa7191.c<br>
&gt; index 087acab..2aa68c6 100644<br>
&gt; --- a/drivers/staging/media/vino/saa7191.c<br>
&gt; +++ b/drivers/staging/media/vino/saa7191.c<br>
&gt; @@ -33,13 +33,7 @@ MODULE_AUTHOR(&quot;Mikael Nousiainen &lt;<a href=
=3D"mailto:tmnousia@cc.hut.fi">tmnousia@cc.hut.fi</a>&gt;&quot;);<br>
&gt;=C2=A0 MODULE_LICENSE(&quot;GPL&quot;);<br>
&gt;<br>
&gt;<br>
&gt; -/* #define SAA7191_DEBUG */<br>
&gt;<br>
&gt; -#ifdef SAA7191_DEBUG<br>
&gt; -#define dprintk(x...) printk(&quot;SAA7191: &quot; x);<br>
&gt; -#else<br>
&gt; -#define dprintk(x...)<br>
&gt; -#endif<br>
&gt;<br>
&gt;=C2=A0 #define SAA7191_SYNC_COUNT=C2=A0 =C2=A030<br>
&gt;=C2=A0 #define SAA7191_SYNC_DELAY=C2=A0 =C2=A0100=C2=A0 =C2=A0 =C2=A0/*=
 milliseconds */<br>
&gt; @@ -116,7 +110,7 @@ static int saa7191_read_status(struct v4l2_subdev =
*sd, u8 *value)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D i2c_master_recv(client, value, 1);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;SAA7191: saa7191_read_status(): read failed\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;saa7191=
_read_status(): read failed\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; @@ -147,7 +141,7 @@ static int saa7191_write_block(struct v4l2_subdev =
*sd,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D i2c_master_send(client, data, length=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;SAA7191: saa7191_write_block(): &quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;saa7191=
_write_block(): &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;write failed\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -230,9 +224,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, v=
4l2_std_id norm)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0decoder-&gt;norm =3D norm;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;ctl3: %02x stdc: %02x chcv: %02x\n&=
quot;, ctl3,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&amp;sd-&gt;dev, &quot;ctl3: %02x stdc: %=
02x chcv: %02x\n&quot;, ctl3,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0stdc, chcv);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;norm: %llx\n&quot;, norm);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;norm: %llx\n&quot;, norm);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt; @@ -241,21 +235,21 @@ static int saa7191_wait_for_signal(struct v4l2_s=
ubdev *sd, u8 *status)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int i =3D 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;Checking for signal...\n&quot;);<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;Checking for signal...\n&quot;);<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; SAA7191_SYNC_COUNT; i++=
) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (saa7191_read=
_status(sd, status))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return -EIO;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (((*status) &=
amp; SAA7191_STATUS_HLCK) =3D=3D 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dprintk(&quot;Signal found\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dev_dbg(&quot;Signal found\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msleep(SAA7191_S=
YNC_DELAY);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;No signal\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;No signal\n&quot;);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return -EBUSY;<br>
&gt;=C2=A0 }<br>
&gt; @@ -269,7 +263,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd=
, v4l2_std_id *norm)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0v4l2_std_id old_norm =3D decoder-&gt;norm;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int err =3D 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;SAA7191 extended signal auto-detect=
ion...\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;SAA7191 extended signal auto-detect=
ion...\n&quot;);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*norm &amp;=3D V4L2_STD_NTSC | V4L2_STD_PAL =
| V4L2_STD_SECAM;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0stdc &amp;=3D ~SAA7191_STDC_SECS;<br>
&gt; @@ -301,13 +295,13 @@ static int saa7191_querystd(struct v4l2_subdev *=
sd, v4l2_std_id *norm)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (status &amp; SAA7191_STATUS_FIDT) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* 60Hz signal -=
&gt; NTSC */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dprintk(&quot;60Hz si=
gnal: NTSC\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;60Hz si=
gnal: NTSC\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*norm &amp;=3D V=
4L2_STD_NTSC;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* 50Hz signal */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;50Hz signal: Trying PAL...\n&quot;)=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;50Hz signal: Trying PAL...\n&quot;)=
;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* try PAL first */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D saa7191_s_std(sd, V4L2_STD_PAL);<br>
&gt; @@ -322,19 +316,19 @@ static int saa7191_querystd(struct v4l2_subdev *=
sd, v4l2_std_id *norm)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* not 50Hz ? */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (status &amp; SAA7191_STATUS_FIDT) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dprintk(&quot;No 50Hz=
 signal\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;No 50Hz=
 signal\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0saa7191_s_std(sd=
, old_norm);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*norm =3D V4L2_S=
TD_UNKNOWN;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (status &amp; SAA7191_STATUS_CODE) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dprintk(&quot;PAL\n&q=
uot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;PAL\n&q=
uot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*norm &amp;=3D V=
4L2_STD_PAL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return saa7191_s=
_std(sd, old_norm);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;No color detected with PAL - Trying=
 SECAM...\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;No color detected with PAL - Trying=
 SECAM...\n&quot;);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* no color detected ? -&gt; try SECAM */<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D saa7191_s_std(sd, V4L2_STD_SECAM);<b=
r>
&gt; @@ -349,19 +343,19 @@ static int saa7191_querystd(struct v4l2_subdev *=
sd, v4l2_std_id *norm)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* not 50Hz ? */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (status &amp; SAA7191_STATUS_FIDT) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dprintk(&quot;No 50Hz=
 signal\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;No 50Hz=
 signal\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*norm =3D V4L2_S=
TD_UNKNOWN;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (status &amp; SAA7191_STATUS_CODE) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Color detecte=
d -&gt; SECAM */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dprintk(&quot;SECAM\n=
&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;SECAM\n=
&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*norm &amp;=3D V=
4L2_STD_SECAM;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return saa7191_s=
_std(sd, old_norm);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;No color detected with SECAM - Goin=
g back to PAL.\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;No color detected with SECAM - Goin=
g back to PAL.\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*norm =3D V4L2_STD_UNKNOWN;<br>
&gt;<br>
&gt;=C2=A0 out:<br>
&gt; @@ -372,30 +366,30 @@ static int saa7191_autodetect_norm(struct v4l2_s=
ubdev *sd)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 status;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;SAA7191 signal auto-detection...\n&=
quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;SAA7191 signal auto-detection...\n&=
quot;);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;Reading status...\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;Reading status...\n&quot;);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (saa7191_read_status(sd, &amp;status))<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EIO;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;Checking for signal...\n&quot;);<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;Checking for signal...\n&quot;);<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* no signal ? */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (status &amp; SAA7191_STATUS_HLCK) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dprintk(&quot;No sign=
al\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;No sign=
al\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EBUSY;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0dprintk(&quot;Signal found\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;Signal found\n&quot;);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (status &amp; SAA7191_STATUS_FIDT) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* 60hz signal -=
&gt; NTSC */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dprintk(&quot;NTSC\n&=
quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;NTSC\n&=
quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return saa7191_s=
_std(sd, V4L2_STD_NTSC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* 50hz signal -=
&gt; PAL */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dprintk(&quot;PAL\n&q=
uot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;PAL\n&q=
uot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return saa7191_s=
_std(sd, V4L2_STD_PAL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 }<br>
&gt; @@ -606,18 +600,18 @@ static int saa7191_probe(struct i2c_client *clie=
nt,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D saa7191_write_block(sd, sizeof(inits=
eq), initseq);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;SAA7191 initialization failed\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;SAA7191=
 initialization failed\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return err;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0printk(KERN_INFO &quot;SAA7191 initialized\n&quot=
;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;SAA7191 initialized\n&quot;);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0decoder-&gt;input =3D SAA7191_INPUT_COMPOSIT=
E;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0decoder-&gt;norm =3D V4L2_STD_PAL;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D saa7191_autodetect_norm(sd);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &amp;&amp; (err !=3D -EBUSY))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;SAA7191: Signal auto-detection failed\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(&quot;SAA7191=
: Signal auto-detection failed\n&quot;);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1424204282-31960-1-git-send-email-ksenija.=
stanojevic%40gmail.com" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/1424204282-31960-1-git-send-email-ksenija.stanojevic%40gm=
ail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e0160bac09c0beb050f4fb785--


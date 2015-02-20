X-GM-THRID: 612983898112
X-Received: by 10.180.182.44 with SMTP id eb12mr1563892wic.4.1424424109079;
        Fri, 20 Feb 2015 01:21:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls256071lac.92.gmail; Fri, 20 Feb
 2015 01:21:48 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr1097627lbb.17.1424424108576;
        Fri, 20 Feb 2015 01:21:48 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x234.google.com (mail-lb0-x234.google.com. [2a00:1450:4010:c04::234])
        by gmr-mx.google.com with ESMTPS id xl7si2844242lbb.1.2015.02.20.01.21.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 01:21:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::234 as permitted sender) client-ip=2a00:1450:4010:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::234 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x234.google.com with SMTP id z11so5058957lbi.8
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 01:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=uKPqhYJsVZIi1JV6H75RCZubnDbmqqRyamWyVMC5ry8=;
        b=hJ1lzXX8BhS47gfyOE1GDjFHrqKSiZ9rStWW73yHuLGMH7MwYkWPOx7BWie/VgXjec
         6LnDdwowXBr5SM3NItQ0vnXJeYdKQP3MAV5pZwo6lfQ36Jl4ntlKF4xE0NxVmVX9AP9d
         1Y9oQe2m2grVjFckgxNsERSBi1QOg322eqS18bf8NeglCGhEKPxnU/9pUGCgvo880Qor
         Z25THgvwBKU7pmzoM2+hezjw06Or/cxJR6Z1qZ96RPFp23iJkBPk9CwM+IWwggtncPa7
         MsmtvQSQT2RkOc1En8NtDFtc23y0L36DHoZiCb6VUS+MkxLT3hz95X/BQKdranhOS2j1
         bHBQ==
MIME-Version: 1.0
X-Received: by 10.112.126.162 with SMTP id mz2mr7539775lbb.51.1424424108406;
 Fri, 20 Feb 2015 01:21:48 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Fri, 20 Feb 2015 01:21:48 -0800 (PST)
In-Reply-To: <6147170.92TzAG2Bsj@wuerfel>
References: <1424369068-6070-1-git-send-email-ksenija.stanojevic@gmail.com>
	<6147170.92TzAG2Bsj@wuerfel>
Date: Fri, 20 Feb 2015 10:21:48 +0100
Message-ID: <CAL7P5jKjQPYvyJD2RDSV8rTFxMCaM0zjMNCXy_oEtqYEpWm2GA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: media: vino: Replace
 printk() and dprintk() with dev_dbg()
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c373dcfecab1050f8194b7

--001a11c373dcfecab1050f8194b7
Content-Type: text/plain; charset=UTF-8

I based it on staging-next, like in a tutorial

On Fri, Feb 20, 2015 at 10:15 AM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Thursday 19 February 2015 19:04:28 Ksenija Stanojevic wrote:
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
> > +             dev_dbg(sd->dev, "saa7191_read_status(): read failed\n");
> >               return ret;
> >       }
> >
>
> Please make sure you use the correct printk level here: This was KERN_ERR,
> so it should be converted to dev_err(), not dev_dbg().
>
> > @@ -606,18 +600,18 @@ static int saa7191_probe(struct i2c_client *client,
> >
> >       err = saa7191_write_block(sd, sizeof(initseq), initseq);
> >       if (err) {
> > -             printk(KERN_ERR "SAA7191 initialization failed\n");
> > +             dev_dbg(sd->dev, "SAA7191 initialization failed\n");
> >               return err;
> >       }
>
> Same here and another one further down.
>
> > -     printk(KERN_INFO "SAA7191 initialized\n");
> > +     dev_dbg(sd->dev, "SAA7191 initialized\n");
> >
> >       decoder->input = SAA7191_INPUT_COMPOSITE;
> >       decoder->norm = V4L2_STD_PAL;
> >
>
> This one should be dev_info.
>
> The rest looks good.
>
> One more thing: I could not find this driver in linux-next, which tree
> did you base this patch on?
>
>         Arnd
>

--001a11c373dcfecab1050f8194b7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I based it on staging-next, like in a tutorial</div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Feb 20, 2015 at=
 10:15 AM, Arnd Bergmann <span dir=3D"ltr">&lt;<a href=3D"mailto:arnd@arndb=
.de" target=3D"_blank">arnd@arndb.de</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><span class=3D"">On Thursday 19 February 2015 19:04:28 Ks=
enija Stanojevic wrote:<br>
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
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(sd-&gt;dev, &=
quot;saa7191_read_status(): read failed\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
<br>
</span>Please make sure you use the correct printk level here: This was KER=
N_ERR,<br>
so it should be converted to dev_err(), not dev_dbg().<br>
<span class=3D""><br>
&gt; @@ -606,18 +600,18 @@ static int saa7191_probe(struct i2c_client *clie=
nt,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D saa7191_write_block(sd, sizeof(inits=
eq), initseq);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;SAA7191 initialization failed\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(sd-&gt;dev, &=
quot;SAA7191 initialization failed\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return err;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
</span>Same here and another one further down.<br>
<span class=3D""><br>
&gt; -=C2=A0 =C2=A0 =C2=A0printk(KERN_INFO &quot;SAA7191 initialized\n&quot=
;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0dev_dbg(sd-&gt;dev, &quot;SAA7191 initialized\n&q=
uot;);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0decoder-&gt;input =3D SAA7191_INPUT_COMPOSIT=
E;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0decoder-&gt;norm =3D V4L2_STD_PAL;<br>
&gt;<br>
<br>
</span>This one should be dev_info.<br>
<br>
The rest looks good.<br>
<br>
One more thing: I could not find this driver in linux-next, which tree<br>
did you base this patch on?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br>
</font></span></blockquote></div><br></div>

--001a11c373dcfecab1050f8194b7--


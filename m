X-GM-THRID: 6199177214450204672
X-Received: by 10.68.206.106 with SMTP id ln10mr9106133pbc.5.1443720006288;
        Thu, 01 Oct 2015 10:20:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.42 with SMTP id 39ls1040539qgo.70.gmail; Thu, 01 Oct
 2015 10:20:05 -0700 (PDT)
X-Received: by 10.129.46.204 with SMTP id u195mr8736220ywu.47.1443720005566;
        Thu, 01 Oct 2015 10:20:05 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-ig0-x22b.google.com (mail-ig0-x22b.google.com. [2607:f8b0:4001:c05::22b])
        by gmr-mx.google.com with ESMTPS id a11si307968igv.3.2015.10.01.10.20.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 10:20:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) client-ip=2607:f8b0:4001:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c05::22b as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22b.google.com with SMTP id kq10so348038igb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 10:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=7RFtJ8eTM+LfaF31lYAW9yWiBs7SLgia21r+CR3lcvI=;
        b=eqrYBnLhC1KmStsg5FadT7t/B2QSyeqRchWfsdYuoJyUScrTflvahZDaKT51RiukL3
         ONMTibccxHPhMGwt4NLk7fxUU4BTCdj/K/ZfsWYLj7TGuVqhfYT81ziMMCW1Fyhitcay
         RZOEn2XJLmz9alEN9EPZTZYq9C7hDx1NKuFIDeo/bA8hrlSprsIHr1gVcueYzS3sOnlz
         tKAQRL4h1Qlnkgs75Y0xrcCKcpFF0VptxCQ4r3JAxICCmF9d1Gj0TLt5DEIueHz1HnCA
         t41bso4uEdA2hd2pBruU+kN33qNc/8W0gNgz2jVSvd5F0T/O4IvoxlzEdkPaxhe8kpO6
         ZSxQ==
MIME-Version: 1.0
X-Received: by 10.50.3.37 with SMTP id 5mr4818138igz.96.1443720005232; Thu, 01
 Oct 2015 10:20:05 -0700 (PDT)
Received: by 10.64.155.6 with HTTP; Thu, 1 Oct 2015 10:20:05 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1509292336300.2031@localhost6.localdomain6>
References: <1443562269-42782-1-git-send-email-cristina.moraru09@gmail.com>
	<alpine.DEB.2.02.1509292336300.2031@localhost6.localdomain6>
Date: Thu, 1 Oct 2015 20:20:05 +0300
Message-ID: <CAGZ2q2xorgTj7_uVxUQp7xPz7QupThm3L-N=fgrsBB_h35syQg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging:iio/accel: Fixed checkpatch.pl warnings
From: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e013c6e9a11400305210e4243

--089e013c6e9a11400305210e4243
Content-Type: text/plain; charset=UTF-8

I understand. Thank you for the feedback


Cristina

2015-09-30 0:39 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:

> For the subject line, check git log --oneline filename.c to see what is
> commonly used.  For example, I see Staging: iio: accel: or just Staging:
> iio:.
>
> For the rest of the subject line, say something more specific to what you
> did.  Checkpatch does a lot of things, and fixing each one should really
> be a separate patch.
>
> On Tue, 29 Sep 2015, Cristina Moraru wrote:
>
> > 'Block comments use a trailing */ on a separate line' Warnings
>
> The commit message should be in the imperative.  In your case, it could be
> "Move final */ to the next line, in accordance with the suggestion of
> checkpatch".
>
> julia
>
> > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> > ---
> >  drivers/staging/iio/accel/lis3l02dq_ring.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/iio/accel/lis3l02dq_ring.c
> b/drivers/staging/iio/accel/lis3l02dq_ring.c
> > index b892f2c..1a0651c 100644
> > --- a/drivers/staging/iio/accel/lis3l02dq_ring.c
> > +++ b/drivers/staging/iio/accel/lis3l02dq_ring.c
> > @@ -195,7 +195,8 @@ __lis3l02dq_write_data_ready_config(struct iio_dev
> *indio_dev, bool state)
> >       /* Enable requested */
> >       } else if (state && !currentlyset) {
> >               /* If not set, enable requested
> > -              * first disable all events */
> > +              * first disable all events
> > +              */
> >               ret = lis3l02dq_disable_all_events(indio_dev);
> >               if (ret < 0)
> >                       goto error_ret;
> > @@ -255,7 +256,8 @@ static int lis3l02dq_trig_try_reen(struct
> iio_trigger *trig)
> >       int i;
> >
> >       /* If gpio still high (or high again)
> > -      * In theory possible we will need to do this several times */
> > +      * In theory possible we will need to do this several times
> > +      */
> >       for (i = 0; i < 5; i++)
> >               if (gpio_get_value(st->gpio))
> >                       lis3l02dq_read_all(indio_dev, NULL);
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
> https://groups.google.com/d/msgid/outreachy-kernel/1443562269-42782-1-git-send-email-cristina.moraru09%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--089e013c6e9a11400305210e4243
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I understand. Thank you for the feedback<br><br><br><=
/div>Cristina<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">2015-09-30 0:39 GMT+03:00 Julia Lawall <span dir=3D"ltr">&lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">For the subject line, check =
git log --oneline filename.c to see what is<br>
commonly used.=C2=A0 For example, I see Staging: iio: accel: or just Stagin=
g:<br>
iio:.<br>
<br>
For the rest of the subject line, say something more specific to what you<b=
r>
did.=C2=A0 Checkpatch does a lot of things, and fixing each one should real=
ly<br>
be a separate patch.<br>
<span class=3D""><br>
On Tue, 29 Sep 2015, Cristina Moraru wrote:<br>
<br>
&gt; &#39;Block comments use a trailing */ on a separate line&#39; Warnings=
<br>
<br>
</span>The commit message should be in the imperative.=C2=A0 In your case, =
it could be<br>
&quot;Move final */ to the next line, in accordance with the suggestion of<=
br>
checkpatch&quot;.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09=
@gmail.com">cristina.moraru09@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/accel/lis3l02dq_ring.c | 6 ++++--<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/accel/lis3l02dq_ring.c b/drivers/stag=
ing/iio/accel/lis3l02dq_ring.c<br>
&gt; index b892f2c..1a0651c 100644<br>
&gt; --- a/drivers/staging/iio/accel/lis3l02dq_ring.c<br>
&gt; +++ b/drivers/staging/iio/accel/lis3l02dq_ring.c<br>
&gt; @@ -195,7 +195,8 @@ __lis3l02dq_write_data_ready_config(struct iio_dev=
 *indio_dev, bool state)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Enable requested */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (state &amp;&amp; !currentlyset) {=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* If not set, e=
nable requested<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * first disable all =
events */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * first disable all =
events<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D lis3l02d=
q_disable_all_events(indio_dev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto error_ret;<br>
&gt; @@ -255,7 +256,8 @@ static int lis3l02dq_trig_try_reen(struct iio_trig=
ger *trig)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int i;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* If gpio still high (or high again)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 * In theory possible we will need to do this sev=
eral times */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * In theory possible we will need to do this sev=
eral times<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; 5; i++)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (gpio_get_val=
ue(st-&gt;gpio))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0lis3l02dq_read_all(indio_dev, NULL);<br>
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
gle.com/d/msgid/outreachy-kernel/1443562269-42782-1-git-send-email-cristina=
.moraru09%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.=
google.com/d/msgid/outreachy-kernel/1443562269-42782-1-git-send-email-crist=
ina.moraru09%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e013c6e9a11400305210e4243--


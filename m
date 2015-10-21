X-GM-THRID: 6207856013446479872
X-Received: by 10.129.84.198 with SMTP id i189mr6631764ywb.32.1445415555976;
        Wed, 21 Oct 2015 01:19:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.214 with SMTP id 80ls669002qgj.64.gmail; Wed, 21 Oct
 2015 01:19:15 -0700 (PDT)
X-Received: by 10.140.151.198 with SMTP id 189mr6599751qhx.11.1445415555458;
        Wed, 21 Oct 2015 01:19:15 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-io0-x229.google.com (mail-io0-x229.google.com. [2607:f8b0:4001:c06::229])
        by gmr-mx.google.com with ESMTPS id hx4si1469658igb.0.2015.10.21.01.19.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 01:19:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) client-ip=2607:f8b0:4001:c06::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x229.google.com with SMTP id l68so49430712iol.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 01:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=WnjFyHTQVnsWy2XRBJq/jx1/CJe00qiwgdbFwvEAWNQ=;
        b=BGicVXrCPBxoq61zWa+BCKxxbAD0d/y6nYmUI8in3x2TtzAdnahKXXVVJeH+F9D9NY
         76tu+So/eK1PaXK+f2l6myKGT+eYZqM/37fzaBGeumppUWJqyw+GwRA4iIa/LUH4IMKN
         2aYEDlkSvJv3Vl4+NzPwQEo+WIgabBsAMH6DzQVoxs8YKEyddVCnHIIm3x5l3CgpsbAN
         HOyfkRiyOaWCx+y2WDBBpnnCZOOqQ0I7WO76tCcfgz2CymHID3jXiCmKWbI5RPOcAhY8
         9kOM+2OLYRKb+QMqg3pUqB62V8crDQqAIv+cPcb3fs2msbEUTmyJ7SUtnPSzjeJ88uIT
         zLrQ==
MIME-Version: 1.0
X-Received: by 10.107.165.131 with SMTP id o125mr8162564ioe.94.1445415555305;
 Wed, 21 Oct 2015 01:19:15 -0700 (PDT)
Received: by 10.64.230.131 with HTTP; Wed, 21 Oct 2015 01:19:15 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510211003070.2588@hadrien>
References: <1445379022-14114-1-git-send-email-cristina.moraru09@gmail.com>
	<alpine.DEB.2.10.1510211003070.2588@hadrien>
Date: Wed, 21 Oct 2015 11:19:15 +0300
Message-ID: <CAGZ2q2zs65X6SPcDWHSO+GiyUsdtVr1FX4nbJFKRG=ttWEBZJQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Add error code handling
From: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1141c83aba212305229908ce

--001a1141c83aba212305229908ce
Content-Type: text/plain; charset=UTF-8

2015-10-21 11:05 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:

> On Wed, 21 Oct 2015, Cristina Moraru wrote:
>
> > The function adis16060_spi_read can return negative values
> > which must be caught and handled.
>
> The comment doesn't completely describe the changes performed in the
> patch.  That is, the patch has an impact on the call to
> adis16060_spi_write too, but that isn't mentioned.
>
> It is better for the label to reflect what is done at the destination, so
> something like out_unlock could work here.  Just from the code shown in
> the patch, error_ret seems a little strange, because the return just above
> it is clearly indicating an error too.
>
> julia
>
>
For the label name I chose another label found in file but it's true that
it does not describe
completely the current situation. I will change it accordingly.


Thanks for the feedback,
Cristina



> >
> > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> > ---
> >  drivers/staging/iio/gyro/adis16060_core.c | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/iio/gyro/adis16060_core.c
> b/drivers/staging/iio/gyro/adis16060_core.c
> > index 80783e7..fb02bed 100644
> > --- a/drivers/staging/iio/gyro/adis16060_core.c
> > +++ b/drivers/staging/iio/gyro/adis16060_core.c
> > @@ -89,11 +89,13 @@ static int adis16060_read_raw(struct iio_dev
> *indio_dev,
> >               /* Take the iio_dev status lock */
> >               mutex_lock(&indio_dev->mlock);
> >               ret = adis16060_spi_write(indio_dev, chan->address);
> > -             if (ret < 0) {
> > -                     mutex_unlock(&indio_dev->mlock);
> > -                     return ret;
> > -             }
> > +             if (ret < 0)
> > +                     goto error_ret;
> > +
> >               ret = adis16060_spi_read(indio_dev, &tval);
> > +             if (ret < 0)
> > +                     goto error_ret;
> > +
> >               mutex_unlock(&indio_dev->mlock);
> >               *val = tval;
> >               return IIO_VAL_INT;
> > @@ -108,6 +110,10 @@ static int adis16060_read_raw(struct iio_dev
> *indio_dev,
> >       }
> >
> >       return -EINVAL;
> > +
> > +error_ret:
> > +     mutex_unlock(&indio_dev->mlock);
> > +     return ret;
> >  }
> >
> >  static const struct iio_info adis16060_info = {
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
> https://groups.google.com/d/msgid/outreachy-kernel/1445379022-14114-1-git-send-email-cristina.moraru09%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a1141c83aba212305229908ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2015-10-21 11:05 GMT+03:00 Julia Lawall <span dir=3D"ltr">&lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Wed, 21 =
Oct 2015, Cristina Moraru wrote:<br>
<br>
&gt; The function adis16060_spi_read can return negative values<br>
&gt; which must be caught and handled.<br>
<br>
</span>The comment doesn&#39;t completely describe the changes performed in=
 the<br>
patch.=C2=A0 That is, the patch has an impact on the call to<br>
adis16060_spi_write too, but that isn&#39;t mentioned.<br>
<br>
It is better for the label to reflect what is done at the destination, so<b=
r>
something like out_unlock could work here.=C2=A0 Just from the code shown i=
n<br>
the patch, error_ret seems a little strange, because the return just above<=
br>
it is clearly indicating an error too.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>For the label name I chose another label found in file but it=
&#39;s true that it does not describe</div><div>completely the current situ=
ation. I will change it accordingly.=C2=A0</div><div><br></div><div><br></d=
iv><div>Thanks for the feedback,</div><div>Cristina</div><div><br></div><di=
v>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div cla=
ss=3D"h5">
&gt;<br>
&gt; Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09=
@gmail.com">cristina.moraru09@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/gyro/adis16060_core.c | 14 ++++++++++----<br=
>
&gt;=C2=A0 1 file changed, 10 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/stagi=
ng/iio/gyro/adis16060_core.c<br>
&gt; index 80783e7..fb02bed 100644<br>
&gt; --- a/drivers/staging/iio/gyro/adis16060_core.c<br>
&gt; +++ b/drivers/staging/iio/gyro/adis16060_core.c<br>
&gt; @@ -89,11 +89,13 @@ static int adis16060_read_raw(struct iio_dev *indi=
o_dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Take the iio_=
dev status lock */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_lock(&amp;=
indio_dev-&gt;mlock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D adis1606=
0_spi_write(indio_dev, chan-&gt;address);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0mutex_unlock(&amp;indio_dev-&gt;mlock);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return ret;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0goto error_ret;<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D adis1606=
0_spi_read(indio_dev, &amp;tval);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0goto error_ret;<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&am=
p;indio_dev-&gt;mlock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*val =3D tval;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IIO_VAL_I=
NT;<br>
&gt; @@ -108,6 +110,10 @@ static int adis16060_read_raw(struct iio_dev *ind=
io_dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
&gt; +<br>
&gt; +error_ret:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;indio_dev-&gt;mlock);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static const struct iio_info adis16060_info =3D {<br>
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
gle.com/d/msgid/outreachy-kernel/1445379022-14114-1-git-send-email-cristina=
.moraru09%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.=
google.com/d/msgid/outreachy-kernel/1445379022-14114-1-git-send-email-crist=
ina.moraru09%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a1141c83aba212305229908ce--


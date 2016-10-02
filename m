X-GM-THRID: 6335430862293696512
X-Received: by 10.13.211.198 with SMTP id v189mr4428866ywd.22.1475420857703;
        Sun, 02 Oct 2016 08:07:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.30 with SMTP id j30ls3279088ioi.30.gmail; Sun, 02 Oct
 2016 08:07:37 -0700 (PDT)
X-Received: by 10.66.7.41 with SMTP id g9mr4844599paa.114.1475420856984;
        Sun, 02 Oct 2016 08:07:36 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id 63si1661027ywe.1.2016.10.02.08.07.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:07:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id n66so9174683qkf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 08:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=x4HoWX2RI/Z0BGxBDRKVuDYFSVoYZnaahoxgSKHi9Nc=;
        b=NMRngVbSt2xGeTuH0pusMHnmSCA5IIJ+pGxTdUZ2Oc+/nvEXyExebPI8OqDMub6eIo
         RMLza56siCRojlaiA+1nhIQfmacdWvupceCnqfpeKxpyQx3YxRlJAA0YweGqJOote5pd
         v63/FOKwWMjBCsZZR4xeFVRIB5GTLGYU8P/7/wj30kPXQUkOTpRw21CrqSRG/82qzvYG
         RsFnUgPQBEgpUSI6iVB8nTAlUy2eseqEsG98Z0DugO9kPvw4vJvV94VWGK2gCPuX8NGz
         mSLQu7ZaD9MhmMGyNLEKunYHNUrkwH/QmFKmoKNZkyMUdwyLNJwLv3KeKWQcUNIi4Ij9
         RqTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=x4HoWX2RI/Z0BGxBDRKVuDYFSVoYZnaahoxgSKHi9Nc=;
        b=X2jT+1zT5rfq1Be/fZSYXX6UU5x7yQ7B/a//DLZ/tHprfAVHdinsZShd4+Owln10u5
         A7G30vhJwQDLyRSf/vC6ZUmkw4kMNkRChfPVBIIeQVjfsfNghhq0QUdEbHnbFuuhn/t/
         Azq99Kr2erRF/YNU+DFWpHukm21q5IsTGx1uyKG/OsgGQ6J7tf2nihqr2pCYcmqn2DfE
         DcLYFH/0vBWlqEtgcRqb4wpdtCnLKhzJIjLYC2Yqk2DHwTU6hS7E/BFCl7WqvsuvsBe8
         T1BnZMjV8bk4W1ptQiaufgDSiX/Zg+/Bvb7JHY9r0PJqjqOHFU3zKUcfv11LFowYMX1i
         dOMw==
X-Gm-Message-State: AA6/9RlYWqXDITicaK74sigaeMGaMqrTTLGEOdYfWw0Aj4JcTWV2rjkitupzxLMwlP2olUbz9h/Ey7bsGIiX0g==
X-Received: by 10.55.65.70 with SMTP id o67mr6377784qka.305.1475420856748;
 Sun, 02 Oct 2016 08:07:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.171.92 with HTTP; Sun, 2 Oct 2016 08:07:36 -0700 (PDT)
In-Reply-To: <288d488e-6526-af21-eb6c-f7ee040f3168@kernel.org>
References: <20160928181518.GA14365@life-desktop> <288d488e-6526-af21-eb6c-f7ee040f3168@kernel.org>
From: Anchal Jain <anchalj109@gmail.com>
Date: Sun, 2 Oct 2016 20:37:36 +0530
Message-ID: <CAAbeOSv9B7fTLx1+eJsnfTVbNm5=0e79W4O0eZQnXQ51u1Bjhg@mail.gmail.com>
Subject: Re: [PATCH v2] staging: iio: gyro: add comment to mutex
To: Jonathan Cameron <jic23@kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, knaack.h@gmx.de, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Content-Type: multipart/alternative; boundary=001a114abc7e0f94d2053de3302d

--001a114abc7e0f94d2053de3302d
Content-Type: text/plain; charset=UTF-8

>If Greg has already picked this up I don't really care
>but it is kind of obvious that buf_lock protects
>buf, so I'm not going to bother applying it.
>
>Dealing with check patch warnings is often an exercise
>in trying to find the right balance between 'fixing'
>them all and deciding that some of them are 'silly'.
>
>Now, if you were to give kernel doc comments to the
>whole of that structure (which does contain the rather
>less ob then
>that would to my mind be a worthwhile stepvious pair of spi device
structures)
>(and would get rid of this warning along the way!)

Thank you, For informing me...
But, Seriously I am too confused what should I do and what not because

Repeatedly send the same patchis not a good idea because
I am not learning new things
and I don't  know what is obvious for you guys.
I do not know about this code that's how it works in the  kernel and
why is here I am just a beginner. On some basic knowledge of C,
I am trying to assume the things may be this code is working that
thing or other
and according to check patch, I am trying to solve bugs.

So, if the check patch shows that kind of problem then what should I do
because this not first time with me to waste my time on that silly things.

Thank you,

Anchal

On Sat, Oct 1, 2016 at 7:05 PM, Jonathan Cameron <jic23@kernel.org> wrote:

> On 28/09/16 19:15, Anchal Jain wrote:
> > Fix the checkpatch.pl issues:
> > CHECK: struct mutex definition without comment
> >
> Nitpick of the day, only one blank line here.
> >
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> Have to say this isn't one of the greatest warnings from
> checkpatch.
>
> If Greg has already picked this up I don't really care
> but it is kind of obvious that buf_lock protects
> buf, so I'm not going to bother applying it.
>
> Dealing with check patch warnings is often an exercise
> in trying to find the right balance between 'fixing'
> them all and deciding that some of them are 'silly'.
>
> Now, if you were to give kernel doc comments to the
> whole of that structure (which does contain the rather
> less obvious pair of spi device structures) then
> that would to my mind be a worthwhile step
> (and would get rid of this warning along the way!)
>
> Thanks,
>
> Jonathan
> > ---
> >  drivers/staging/iio/gyro/adis16060_core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/iio/gyro/adis16060_core.c
> b/drivers/staging/iio/gyro/adis16060_core.c
> > index ab816a2..96230b6 100644
> > --- a/drivers/staging/iio/gyro/adis16060_core.c
> > +++ b/drivers/staging/iio/gyro/adis16060_core.c
> > @@ -33,7 +33,7 @@
> >  struct adis16060_state {
> >       struct spi_device               *us_w;
> >       struct spi_device               *us_r;
> > -     struct mutex                    buf_lock;
> > +     struct mutex                    buf_lock; /* protect transfer
> buffers */
> >
> >       u8 buf[3] ____cacheline_aligned;
> >  };
> >
>
>

--001a114abc7e0f94d2053de3302d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt;If Greg has already picked this up I don&#39;t re=
ally care<br>&gt;but it is kind of obvious that buf_lock protects<br>&gt;bu=
f, so I&#39;m not going to bother applying it.<br>&gt;<br>&gt;Dealing with =
check patch warnings is often an exercise<br>&gt;in trying to find the righ=
t balance between &#39;fixing&#39;<br>&gt;them all and deciding that some o=
f them are &#39;silly&#39;.<br>&gt;<br>&gt;Now, if you were to give kernel =
doc comments to the<br>&gt;whole of that structure (which does contain the =
rather<br>&gt;less ob then<br>&gt;that would to my mind be a worthwhile ste=
pvious pair of spi device structures)<br>&gt;(and would get rid of this war=
ning along the way!)<br><br></div><div>Thank you, For informing me...<br></=
div><div>But, Seriously I am too confused what should I do and what not bec=
ause <br><pre style=3D"text-align:left;height:108px" id=3D"gmail-tw-target-=
text" class=3D"gmail-tw-data-text gmail-tw-ta gmail-tw-text-medium" dir=3D"=
ltr"><span lang=3D"en">Repeatedly send the same patch</span><span style=3D"=
font-family:arial,helvetica,sans-serif"><font size=3D"2">is not a good idea=
 because <br>I am not learning new things<br>and I don&#39;t =C2=A0know wha=
t is obvious for you guys. <br>I do not know about this code that&#39;s how=
 it works in the  kernel and <br>why is here I am just a beginner. On some =
basic knowledge of C, <br>I am trying to assume the things may be this code=
 is working that thing or other <br>and according to check patch, I am tryi=
ng to solve bugs.</font></span><br></pre>So, if the check patch shows that =
kind of problem then what should I do <br>because this not first time with =
me to waste my time on that silly things. <br><br></div><div>Thank you,<br>=
<br></div><div>Anchal<br></div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Sat, Oct 1, 2016 at 7:05 PM, Jonathan Cameron <span =
dir=3D"ltr">&lt;<a href=3D"mailto:jic23@kernel.org" target=3D"_blank">jic23=
@kernel.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span c=
lass=3D"">On 28/09/16 19:15, Anchal Jain wrote:<br>
&gt; Fix the <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"=
_blank">checkpatch.pl</a> issues:<br>
&gt; CHECK: struct mutex definition without comment<br>
&gt;<br>
</span>Nitpick of the day, only one blank line here.<br>
&gt;<br>
&gt; Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail.com"=
>anchalj109@gmail.com</a>&gt;<br>
Have to say this isn&#39;t one of the greatest warnings from<br>
checkpatch.<br>
<br>
If Greg has already picked this up I don&#39;t really care<br>
but it is kind of obvious that buf_lock protects<br>
buf, so I&#39;m not going to bother applying it.<br>
<br>
Dealing with check patch warnings is often an exercise<br>
in trying to find the right balance between &#39;fixing&#39;<br>
them all and deciding that some of them are &#39;silly&#39;.<br>
<br>
Now, if you were to give kernel doc comments to the<br>
whole of that structure (which does contain the rather<br>
less obvious pair of spi device structures) then<br>
that would to my mind be a worthwhile step<br>
(and would get rid of this warning along the way!)<br>
<br>
Thanks,<br>
<br>
Jonathan<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/gyro/<wbr>adis16060_core.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/gyro/<wbr>adis16060_core.c b/drivers/=
staging/iio/gyro/<wbr>adis16060_core.c<br>
&gt; index ab816a2..96230b6 100644<br>
&gt; --- a/drivers/staging/iio/gyro/<wbr>adis16060_core.c<br>
&gt; +++ b/drivers/staging/iio/gyro/<wbr>adis16060_core.c<br>
&gt; @@ -33,7 +33,7 @@<br>
&gt;=C2=A0 struct adis16060_state {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct spi_device=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0*us_w;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct spi_device=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0*us_r;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct mutex=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf_lock;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct mutex=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf_lock; /* protect transfer buffers */=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 buf[3] ____cacheline_aligned;<br>
&gt;=C2=A0 };<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div>

--001a114abc7e0f94d2053de3302d--


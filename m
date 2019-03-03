X-GM-THRID: 6664078765132349440
X-Received: by 2002:a67:8395:: with SMTP id f143mr9511464vsd.15.1551622653385;
        Sun, 03 Mar 2019 06:17:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e3d1:: with SMTP id k17ls2983291vsm.0.gmail; Sun, 03 Mar
 2019 06:17:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqz/we+DMEY8hj6+Z+KKyhFQ7awA5BqqLqLKbrGLghfZwFTwkgoPqK2malXY/3s6J1anjK8j
X-Received: by 2002:a67:8093:: with SMTP id b141mr9730438vsd.37.1551622652610;
        Sun, 03 Mar 2019 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551622652; cv=none;
        d=google.com; s=arc-20160816;
        b=ABoUN50b9rOGEBBglr9WhEBTzuKSHagPWGzJbTrum3kp7oKuz6SqmHtoXhiqwWzVFo
         HJar8QUMUVi0JvzzP8wwgPjnd85zcwZg9OEzc9v3B7SEcf2wZdqLjF6zFvmo6KdNDr4S
         1mqnWHvsnrJtZNo65o1MAZy0/S3+sDjF2o3ldbBzjIDvWxzR/8eNzsgRIA8KVrRUCFHj
         p/3MxY64+wwfzqSbzk4SRqllJeyV6qEMYlRa/3KLf45H02U8n+Sy97GlWUp6GJtVUSqD
         PROIhmA24CWHeih6nquuvKEqw/a+7PqdqkpP6VH4ozg0Snz5dEOmIpsQrK/NGpxZYx4c
         oauA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=piRLacbIpSqT2uQZRFMlRN4NBn2xyCK+sz7pultHYBU=;
        b=lM2o2aFTMyzkGP1byORXWmLrYViIIiAXRKDQ7rRrrvhjGuXCdC5EHgUqRRTLACHf/R
         BMv9OJ6ioxZ7LSnj3MNf6VS2tCaOm4KwnZ4J1DzGDpsr7q3xHZwrG96kuMp5F5XP/YdI
         oyTo3GuwOpTBAKnoUmKE5EFCGyA/OrHbvciI3tVI47QXU0jb0QBD/3nFSK5BjqjVsze+
         vS45MpvYS/Bz30mV6DpQU6jE9SOSGlO25j2kT+n2sImE2YcdfwtC290Wqxfbt2tqTobG
         gMuhPXm5NfPB4EBhpVIHeTjmbc//0//pnLmx3N+GDzoBgJrcRHpjSM0q5o2noAtvGpTb
         veMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aMb2Ns1N;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id s73si216862vkd.1.2019.03.03.06.17.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aMb2Ns1N;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id m9so1438551qkl.4
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 06:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=piRLacbIpSqT2uQZRFMlRN4NBn2xyCK+sz7pultHYBU=;
        b=aMb2Ns1N82B2nXXxM03Mf6v/XVRNYB62+erNKowE4tD8HrcZXZNDp+AZWn1wFw701b
         y/VaQW2U9+xBfrcXpIHljOPQSr86N7TupWDwoGXdyWRvW+8u65FHkQKc2hTfKmOvx1wg
         4PjA1sTPOgCm1671SXcu3bM6Fs/YdZ7vWwnzF5gobdQuyEfcc2Eatq0HKYeiXVUZQncZ
         A8QLk/4nZ6PzxlTJuIX8vELCz70wjbStwKYgi92lXzV/WA4JExh4l91LKZdE9TCzT3Lm
         pqlJmOuH8T1X/AL7WnSfzAQW/uyPkE29MxpzZUc0sWhYVRzaN2zhpiPmW1Q31dZif+OZ
         dXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=piRLacbIpSqT2uQZRFMlRN4NBn2xyCK+sz7pultHYBU=;
        b=Zw5vgyjBZLsTTb4kRtNc9uabu8+h2LALICpYd7TmRq3axlCRTW2Mrd9K1Nj2t1fQOA
         tDrB/zpVP/ul4GQt8DjXfo2iZQfkX3zFanGIFiYIcQHBW+nzLsEBoo+x0IxvNj9sosiZ
         zo3iI5tCJk1JGvjZbSh6u53e/1wTY4BOpGyZ4h0BJi9bZJ4j0KPGhAyJIYfOpIAdfFBf
         owS3BagzPntGU6h0dD2zotu5hdQ/6hzZ64iTvd1CoKVp0vA0nDM4u3NQEi3YwBPB2Osl
         RvpBtRZfABZ4tNCKgJKxjVUkQraofXgGmb3lpNfk24rOnd3C6sfyU4PEm6Px8luKkeQO
         4N9w==
X-Gm-Message-State: APjAAAVAUYcrOFz26drUzsiuODkM5bc2FNTfQYVR7kupFwtNbCceTgv9
	+Sj/JmtqHB6w9MeTsjuSJ8axqc/jjy2gmKuXTdk=
X-Received: by 2002:a37:7885:: with SMTP id t127mr10083532qkc.109.1551622652116;
 Sun, 03 Mar 2019 06:17:32 -0800 (PST)
MIME-Version: 1.0
References: <20190303082902.GA16698@bhagyashri-Lenovo-G570> <20190303083430.GA30460@kroah.com>
In-Reply-To: <20190303083430.GA30460@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Sun, 3 Mar 2019 19:46:55 +0530
Message-ID: <CAOMPgjgN1WroEoqpDA-s1t5NVDrDJDtKCMDD=_JgAEeHh7g6dw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Replace udelay to usleep_range
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000000144570583314db0"

--0000000000000144570583314db0
Content-Type: text/plain; charset="UTF-8"

Hi,
I have gone through "Documentation/timers/timers-howto.txt", It is
mentioned that we can put 10us-20us gap between min_range and max_range. In
above situation `udelay(20)` our min_range is 20 and max_range is 30.

I was not aware of the situation that we need to test it on hardware.

Thanks
Bhagyashri

On Sun, Mar 3, 2019 at 2:04 PM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Sun, Mar 03, 2019 at 01:59:02PM +0530, Bhagyashri Dighole wrote:
> > Replace udelay to usleep_range function call with 10 microsecond range.
> > Detected by checkpatch.pl "CHECK: usleep_range is preferred over
> udelay".
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_agm1264k-fl.c |  2 +-
> >  drivers/staging/fbtft/fb_ra8875.c      |  4 ++--
> >  drivers/staging/fbtft/fb_tinylcd.c     |  2 +-
> >  drivers/staging/fbtft/fb_upd161704.c   | 18 +++++++++---------
> >  drivers/staging/fbtft/fb_watterott.c   |  4 ++--
> >  5 files changed, 15 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
> b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > index 8f27bd8..b2d19b1 100644
> > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
> >       dev_dbg(par->info->device, "%s()\n", __func__);
> >
> >       gpiod_set_value(par->gpio.reset, 0);
> > -     udelay(20);
> > +     usleep_range(20, 30);
>
> How do you know that 30 is an acceptable value here?
>
> Making this kind of change is tricky if you do not have the hardware
> involved, as you are changing the functionality of the driver.  Look up
> why checkpatch is asking you to make this change, perhaps that reason is
> not relevant for these devices?
>
> I can't take this type of change without testing on the hardware itself,
> sorry.
>
> greg k-h
>

--0000000000000144570583314db0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div>I hav=
e gone through &quot;Documentation/timers/timers-howto.txt&quot;, It is men=
tioned that we can put 10us-20us gap between min_range and max_range. In ab=
ove situation `udelay(20)` our min_range <span class=3D"gmail-pln"></span><=
span class=3D"gmail-pun"></span>is 20 and max_range is 30.</div><div><br></=
div><div>I was not aware of the situation that we need to test it on hardwa=
re.</div><div><br></div><div>Thanks</div><div>Bhagyashri<br></div></div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Sun, Mar 3, 2019 at 2:04 PM Greg Kroah-Hartman &lt;<a href=3D"mailto:=
gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">On Sun, Mar 03, 2019 =
at 01:59:02PM +0530, Bhagyashri Dighole wrote:<br>
&gt; Replace udelay to usleep_range function call with 10 microsecond range=
.<br>
&gt; Detected by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=
=3D"_blank">checkpatch.pl</a> &quot;CHECK: usleep_range is preferred over u=
delay&quot;.<br>
&gt; <br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_agm1264k-fl.c |=C2=A0 2 +-<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_ra8875.c=C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 =
++--<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_tinylcd.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 2 =
+-<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_upd161704.c=C2=A0 =C2=A0| 18 +++++++++-=
--------<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_watterott.c=C2=A0 =C2=A0|=C2=A0 4 ++--<=
br>
&gt;=C2=A0 5 files changed, 15 insertions(+), 15 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/=
fbtft/fb_agm1264k-fl.c<br>
&gt; index 8f27bd8..b2d19b1 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_agm1264k-fl.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c<br>
&gt; @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dev_dbg(par-&gt;info-&gt;device, &quot;%s()\=
n&quot;, __func__);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0gpiod_set_value(par-&gt;gpio.reset, 0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0udelay(20);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0usleep_range(20, 30);<br>
<br>
How do you know that 30 is an acceptable value here?<br>
<br>
Making this kind of change is tricky if you do not have the hardware<br>
involved, as you are changing the functionality of the driver.=C2=A0 Look u=
p<br>
why checkpatch is asking you to make this change, perhaps that reason is<br=
>
not relevant for these devices?<br>
<br>
I can&#39;t take this type of change without testing on the hardware itself=
,<br>
sorry.<br>
<br>
greg k-h<br>
</blockquote></div>

--0000000000000144570583314db0--


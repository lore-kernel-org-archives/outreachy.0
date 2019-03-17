X-GM-THRID: 6669419489146175488
X-Received: by 2002:a1c:4e0c:: with SMTP id g12mr833661wmh.9.1552847931479;
        Sun, 17 Mar 2019 11:38:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6c01:: with SMTP id h1ls1755303wmc.13.gmail; Sun, 17 Mar
 2019 11:38:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwq8qwOlZp6ZhC7N6kjqSO6gvrCuS8OnimE6XEYCC+x5ZQ9+vvEXMUPbUORn4l8/M+rB7S0
X-Received: by 2002:a1c:200e:: with SMTP id g14mr826190wmg.13.1552847930496;
        Sun, 17 Mar 2019 11:38:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552847930; cv=none;
        d=google.com; s=arc-20160816;
        b=Q3gpfj0sLLX+WjLKZcSKouE3w3wcW9vY/VGvSByoltLzKttZ6lYpoGLWDnFT1uZw2/
         +RDw0agvAiQdx57ebTrv7HuQfGiJIjRKKD7bDdAOZV/OfeqX6FKsffmayt8c0WTBOYAH
         WYRbvGERwiCiYBZwuR4r4cQ9JCzAa7NgWsoyahw5f+DnsL52S9x5VRztZw8N++KleYze
         Sz3SsordB4Z/ZgnvDUdAzs2SVlT35wm1hQ+bowr815hiP+Ffq1nnce0uuyrIkdXJGU9L
         B3zKbMv8dMbnZaN0U34Wb82grnLUzSjZgZh4M7GjLMwPRkuDx/RV3csdgnO76mf1NzqC
         roIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AZjrrQ0gOrYpXE/IHCFnCPACqxIQ/Rr1C274KmVbfnQ=;
        b=dBSPZOU2tqK8py9DVhn0/j0t12HosWb+cRL9MgO9i+0k0MuSEzT80WycuSDq+cGEEH
         j5Fm7A/m/Zi+eNrM6kAeQXaTDrlzn3p0rHY0xIaDeczCZRU6v+IdgZH9HnJLnvoXZ27F
         A+nMrHcnAfV9fKMN4xK+neTkWlf55ts8jSaFydhMWVvAQlwaPsaMxYitm5eVBHby/isj
         FmGsclydmVdd8XVHTwJcKTDSXARk/Po/JcJERtGRVZAUuFGzqOEsdL0G+pA1KxGSDxPw
         M8ub5a4LQfflgh5RDE3BdBeIUkRnRZnsa8vEeL2u9VbALnTn/6BgaVJl5FFEsxRtnF2B
         vr+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WDimog83;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id y84si419021wmd.0.2019.03.17.11.38.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 11:38:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WDimog83;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x133.google.com with SMTP id u21so156976lfu.2
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 11:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AZjrrQ0gOrYpXE/IHCFnCPACqxIQ/Rr1C274KmVbfnQ=;
        b=WDimog8331aAKGTJ4x0+9fsXXXBVNNxy4ChqsWDJLtNHPbA2zpOJjP6lj6S5EADW5H
         693+O8rPXOt4OukwEnP8RR0XDXynCgwObkIUwlhgadT6nzglPsAt6LpRK5Md5oJu3GeO
         TTaIlE5RbfbyHum2l9S3eT9osJaaCC7WSoHDqaYKzzuxSd34aKxQrwkhRQAnQeV09Ev+
         S8HdAanaxyzdWHurkWYPoPyMuxP5mvV+J2L67t/GSHH1StrJsgKgEdzLqSnSv6H4RMV7
         fmOSnbppGs1scR1lQoPjsA9Xeu1WyFwe+KaLZJo0GIcSXbdOcQSe4pVOpcIl2UCfeLLJ
         /v3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AZjrrQ0gOrYpXE/IHCFnCPACqxIQ/Rr1C274KmVbfnQ=;
        b=PuLdAQ3vcUmeewnbYYwFThRP4bR9UPxyt2TasRenB5hdbRuB1ZXOksGKjrcYDFHLpZ
         0lR5DkVZUYtLVEgZm2GnKaH4HbQ7V55LmbznZqqcHTu5puI9JMXDS3ZIsXam6EaP4Qjl
         938tzmnfibaFoh/+JI+WCr+NQmAl6lB/tnpLE4Nd0uQ+o49VufcKjEwVngH1vtsC1qpA
         q352AolDUlPWP8O1ZfnCfeMgRCtU6OW8u3f4KhPq1OoJi0Zm4izol75VorvzCtKVaTNV
         grXnE0o/NxBswQczwMq0KvVJs8+Nxv9PMekpWRjTd+cLEaZMljsv/ZIwAyDyViX1V7va
         kYhQ==
X-Gm-Message-State: APjAAAWZ3gL+adePr+Fcz/vXJ/87HtFOa9qm4+zrFdK8KNLVH6A7/Au+
	x+8ruaLZDpUsdYuqVo3+VycL1BNrUcT3dOnXWu1hjQ==
X-Received: by 2002:a19:9e0d:: with SMTP id h13mr7530812lfe.51.1552847930292;
 Sun, 17 Mar 2019 11:38:50 -0700 (PDT)
MIME-Version: 1.0
References: <1552845213-12653-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <20190317182210.GB3482@kroah.com>
In-Reply-To: <20190317182210.GB3482@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Mon, 18 Mar 2019 00:08:38 +0530
Message-ID: <CANTOzWGV5QatNq_RKks_6GFT2DspBErEo7aig-MvkLD8bT5F5A@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: greybus: adding ()
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000467c6e05844e95da"

--000000000000467c6e05844e95da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

okay, no problem at all.
Thank you!

payal

On Sun, 17 Mar 2019 at 23:52, Greg KH <greg@kroah.com> wrote:

> On Sun, Mar 17, 2019 at 11:23:33PM +0530, Payal Kshirsagar wrote:
> > Parenthesis added to macro argument =E2=80=98gcam=E2=80=99 as (gcam)
> > to avoid precedence issues
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/greybus/camera.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/greybus/camera.c
> b/drivers/staging/greybus/camera.c
> > index 615c8e7..b1670b8 100644
> > --- a/drivers/staging/greybus/camera.c
> > +++ b/drivers/staging/greybus/camera.c
> > @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info
> *gb_camera_get_format_info(u16 gb_fmt)
> >
> >  #define GB_CAMERA_MAX_SETTINGS_SIZE  8192
> >
> > -#define gcam_dbg(gcam, format...)    dev_dbg(&gcam->bundle->dev, forma=
t)
> > -#define gcam_info(gcam, format...)   dev_info(&gcam->bundle->dev,
> format)
> > -#define gcam_err(gcam, format...)    dev_err(&gcam->bundle->dev, forma=
t)
> > +#define gcam_dbg(gcam, format...)    dev_dbg(&(gcam)->bundle->dev,
> format)
> > +#define gcam_info(gcam, format...)   dev_info(&(gcam)->bundle->dev,
> format)
> > +#define gcam_err(gcam, format...)    dev_err(&(gcam)->bundle->dev,
> format)
>
> I don't know why checkpatch.pl keeps getting this one wrong, but no,
> this is not needed at all.
>
> sorry,
>
> greg k-h
>

--000000000000467c6e05844e95da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>okay, no problem at all.</div><div>Thank you!</div><d=
iv><br></div><div>payal<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sun, 17 Mar 2019 at 23:52, Greg KH &lt;=
<a href=3D"mailto:greg@kroah.com">greg@kroah.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On Sun, Mar 17, 2019 at 11:=
23:33PM +0530, Payal Kshirsagar wrote:<br>
&gt; Parenthesis added to macro argument =E2=80=98gcam=E2=80=99 as (gcam)<b=
r>
&gt; to avoid precedence issues<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/greybus/camera.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybu=
s/camera.c<br>
&gt; index 615c8e7..b1670b8 100644<br>
&gt; --- a/drivers/staging/greybus/camera.c<br>
&gt; +++ b/drivers/staging/greybus/camera.c<br>
&gt; @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_=
get_format_info(u16 gb_fmt)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 #define GB_CAMERA_MAX_SETTINGS_SIZE=C2=A0 8192<br>
&gt;=C2=A0 <br>
&gt; -#define gcam_dbg(gcam, format...)=C2=A0 =C2=A0 dev_dbg(&amp;gcam-&gt;=
bundle-&gt;dev, format)<br>
&gt; -#define gcam_info(gcam, format...)=C2=A0 =C2=A0dev_info(&amp;gcam-&gt=
;bundle-&gt;dev, format)<br>
&gt; -#define gcam_err(gcam, format...)=C2=A0 =C2=A0 dev_err(&amp;gcam-&gt;=
bundle-&gt;dev, format)<br>
&gt; +#define gcam_dbg(gcam, format...)=C2=A0 =C2=A0 dev_dbg(&amp;(gcam)-&g=
t;bundle-&gt;dev, format)<br>
&gt; +#define gcam_info(gcam, format...)=C2=A0 =C2=A0dev_info(&amp;(gcam)-&=
gt;bundle-&gt;dev, format)<br>
&gt; +#define gcam_err(gcam, format...)=C2=A0 =C2=A0 dev_err(&amp;(gcam)-&g=
t;bundle-&gt;dev, format)<br>
<br>
I don&#39;t know why <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" ta=
rget=3D"_blank">checkpatch.pl</a> keeps getting this one wrong, but no,<br>
this is not needed at all.<br>
<br>
sorry,<br>
<br>
greg k-h<br>
</blockquote></div>

--000000000000467c6e05844e95da--


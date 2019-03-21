X-GM-THRID: 6670717697091698688
X-Received: by 2002:a2e:9e0d:: with SMTP id e13mr86547ljk.21.1553153313849;
        Thu, 21 Mar 2019 00:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:63c4:: with SMTP id s65ls578021lje.12.gmail; Thu, 21 Mar
 2019 00:28:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5xvUn2ewi8tNjbxlwaW0cNPqSTjqok2wDl4JI/NAx90j1uIxQz/iASJs3Dl0ZQdy9IzOj
X-Received: by 2002:a2e:9995:: with SMTP id w21mr87582lji.16.1553153312801;
        Thu, 21 Mar 2019 00:28:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553153312; cv=none;
        d=google.com; s=arc-20160816;
        b=A/iwCENco74t7lENiXe6Qn8sH2FZ9w/eWeQB7hsjGPUm0mExfMqT0LZ+fo8zb1cTeM
         OTSGXgwkw5z98DfzL+NSHVWkgDW69WBkomrongrH+KgvG8SeRtEngYxKPmoAoZoFyeMx
         LJLcb4vuWIJugoLcKJUJyrp0iKDgZUM5E0ebM5vuc/89tvVQu2gKgvIRyPe0iOdP3eUB
         aK1smT50X902EjUPf9xDcMbUci9sv1U+lGhl1Lvtp/dSYc7MgFJupz2o2ewsOLho9Em4
         2hlxra+SPhgei/6NLofjRV55DFRf/LXb+6oUotuj6MYC09wZnF4zbVDODgZC6UJvHrow
         lIeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+UDGpnTxkEet0yOci+PnD7eoxGqaqok/ae7KpetO4r8=;
        b=xC29Cag0eF/KYbi13PV5Tj5xU0db4/8wB836qPpqrcdJX9/HgERx18eiZ9RizSMZ8r
         gnUYQwqmJxYdhE8k1PvFjoxEcZnVhWhzVnu3yH5KlYYe7TEnsAkc15Zl+t2/x1ruoBL7
         NL0SYDgCVosDsfWO+GvO+lcJYZ4KfDrtgMlzLYxXSzfTgFxCrJD3Efb1KPhqDH2m0mLY
         zTXZknthie3ldeeCZ+i+JfNaPO6l0XgSwiiWmi9CimJtTPFgHGvy2osgQ8JmJh6KOXjk
         Fbp/6I+gp4hbxLfV9uWkbYZy2+CW8KR7DqqkINkD71OJq3L2tgpoNOltAvhwMY7Uy/fA
         Ncqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SnjAZnQE;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id 19si144678lje.4.2019.03.21.00.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:28:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SnjAZnQE;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x234.google.com with SMTP id k8so4440207lja.8
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 00:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+UDGpnTxkEet0yOci+PnD7eoxGqaqok/ae7KpetO4r8=;
        b=SnjAZnQEF0uqsEIH0Ob4xJTgco9sAH8r9ccrqhoBLO+qX7h+J/8OOkyEjQnEBSgfy4
         ZII0nh6DNqCDko9QehCHi2YLRqASR3NP+ufdlA80F1Onj4FChCjIbJ/I/ohU5x4EcGaq
         1/Zl5SLDkdLirS040QU+uNIE5st7G8R+LB8hZxvJtY6FTfrGfKfA/UVIVqj0SsxoYH5i
         QfkXAoF02y63r60b4U+sdD6kb1QcWN2+Fg5CkQLHCpqLS0bx+FAZZMCK0q8LWGmvdrvz
         AMTsl3H8jny6STaIj8UYxMjiWlntpbeL5fUHXONDvuXQIABOExskrVbBothkmR5c5wLS
         4O4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+UDGpnTxkEet0yOci+PnD7eoxGqaqok/ae7KpetO4r8=;
        b=L7GZ0Ebz8KGBpFRxb8ovTOyMuk8z+/rxKr5ygcqu/uSN/wbati04l6cvzo0zxhbO4v
         jeGz8cZznPVQ84+vNayU9YxGVbxrRqG5yIIBQh+NU5OcAsNGQr03CYehjcAT1YnlkB8b
         Oad0dG8OGlUZeEhCFJz1j4pKNvWJWbJlvtt3Es8IbsOGfXftVN1linK2NQ3wVJ1M7pq8
         oarnNi+Y0vlREvl2NKcO8HbME243ln0R6cFou48IofCfeqerJHoCZJZ3zjlIs4JMmI/T
         FZmy+QwxOoMWmyJeRKFEqOiDy52Z8//4XnaW4esCkFxFWIinJEe2iZ9JI4VoMZq+07yv
         7lXA==
X-Gm-Message-State: APjAAAVe21BxIO3aNRigZ1/PItLUESCQWMWc1YRM0ITwcb8Kzp6r9Omv
	mVenVYTjX2ca4tAxgnckyP0mXobIRSqyrSCn9Q4=
X-Received: by 2002:a2e:924c:: with SMTP id v12mr1121861ljg.185.1553153312651;
 Thu, 21 Mar 2019 00:28:32 -0700 (PDT)
MIME-Version: 1.0
References: <1553147475-6907-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190321071831.GC28171@kroah.com>
In-Reply-To: <20190321071831.GC28171@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Thu, 21 Mar 2019 12:58:20 +0530
Message-ID: <CANTOzWFqLBHenLo_AkdnNnMW=kV1=VDCHaR1CG4M9bDTcQ1WzQ@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: sm750fb: avoid camelcase
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007b7cd0058495afea"

--0000000000007b7cd0058495afea
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar 2019 at 12:49, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 21, 2019 at 11:21:15AM +0530, Payal Kshirsagar wrote:
> > Eliminate camelcase to meet the style.
>
> Meet what style?
>
> okay, I will mention it.

> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_mode.c | 94
> +++++++++++++++++------------------
> >  1 file changed, 47 insertions(+), 47 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_mode.c
> b/drivers/staging/sm750fb/ddk750_mode.c
> > index 4dac691..5dfa87d 100644
> > --- a/drivers/staging/sm750fb/ddk750_mode.c
> > +++ b/drivers/staging/sm750fb/ddk750_mode.c
> > @@ -13,13 +13,13 @@
> >   * HW only supports 7 predefined pixel clocks, and clock select is
> >   * in bit 29:27 of Display Control register.
> >   */
> > -static unsigned long displayControlAdjust_SM750LE(struct mode_parameter
> *pModeParam,
> > -                                               unsigned long
> dispControl)
> > +static unsigned long display_control_adjust_SM750LE(struct
> mode_parameter *p_mode_param,
> > +                                                 unsigned long
> disp_control)
>
> Try doing only one type of fix per patch.
>
> One to fix up structure fields, and then another one for function names.
> Putting them all together makes it very hard to review.  This should be
> a patch series for this type of fix.
>
> okay, i will make a patch series for the same.
thanking payal.

thanks,
>
> greg k-h
>

--0000000000007b7cd0058495afea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Mar 2019 at 12:49, Greg KH=
 &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Thu, Mar 21, 2019 at 11:21:15AM +0530, Payal Kshirsagar wrote:<br>
&gt; Eliminate camelcase to meet the style.<br>
<br>
Meet what style?<br>
<br></blockquote><div>okay, I will mention it.=C2=A0 <br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/sm750fb/ddk750_mode.c | 94 +++++++++++++++++----=
--------------<br>
&gt;=C2=A0 1 file changed, 47 insertions(+), 47 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/s=
m750fb/ddk750_mode.c<br>
&gt; index 4dac691..5dfa87d 100644<br>
&gt; --- a/drivers/staging/sm750fb/ddk750_mode.c<br>
&gt; +++ b/drivers/staging/sm750fb/ddk750_mode.c<br>
&gt; @@ -13,13 +13,13 @@<br>
&gt;=C2=A0 =C2=A0* HW only supports 7 predefined pixel clocks, and clock se=
lect is<br>
&gt;=C2=A0 =C2=A0* in bit 29:27 of Display Control register.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt; -static unsigned long displayControlAdjust_SM750LE(struct mode_paramet=
er *pModeParam,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0unsigned long dispControl)<br>
&gt; +static unsigned long display_control_adjust_SM750LE(struct mode_param=
eter *p_mode_param,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long disp_control)<br>
<br>
Try doing only one type of fix per patch.<br>
<br>
One to fix up structure fields, and then another one for function names.<br=
>
Putting them all together makes it very hard to review.=C2=A0 This should b=
e<br>
a patch series for this type of fix.<br>
<br></blockquote><div>okay, i will make a patch series for the same.</div><=
div>thanking payal.</div><div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--0000000000007b7cd0058495afea--


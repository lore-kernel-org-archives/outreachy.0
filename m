X-GM-THRID: 6664981263437266944
X-Received: by 2002:a37:317:: with SMTP id 23mr9468682qkd.58.1552031695696;
        Thu, 07 Mar 2019 23:54:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3192:: with SMTP id h18ls368648qte.8.gmail; Thu, 07 Mar
 2019 23:54:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqxIpTNyHyhoOy4ux5bk9xKqFm7PrLCi3YIWqReP/zbgImdmrJyQysnqleFl82FDw+CoHH69
X-Received: by 2002:ac8:25a7:: with SMTP id e36mr9860355qte.9.1552031695213;
        Thu, 07 Mar 2019 23:54:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552031695; cv=none;
        d=google.com; s=arc-20160816;
        b=BeAEGhCIIm9l2D3Tf0f/3cmsCQS4NYrdhKKXHLnAF0QA6U6h4S2/q6cRPehQGhy/Mx
         Kp0B/UvsaPha96u062l99a8O8imaignrufo4ZxIFnAfl+iSyGNxEoQVkGs0ZAnJ3Ccvc
         87xN0KirZ1fO4/xVU2cuesN8gJmDEvbemXwv9lnnwTjr1tI0K/Lk0ShghxrS+TaBum3P
         lvv1QFA/DMefl88dNNfE9jUFK/mDyLgi4G3ZlMlRLco+jBMXOr9X26/6gKOPCnjdvp4J
         moh0UKTKQOhk6t2ussW/p+884bSx3k/DJ16Isk13hCy8qWEafVxgRyXwY1Am9Axm61cc
         AyLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3fUARCoLu7tgfnteaRrxvD3YVIhSVCH+2xX857zGKBQ=;
        b=wDSrySZ8MO8zDfojciUEhY3Rnj96Cz4HOjDFGW9/MDD9uyYtj2YeNYZ9vFuvzkucNN
         9ewBHC4I271wnf8+Dt1GHsJPLr3X0+UV6d/VFyoRyowZ7IEay33vsJTTXU2/LHJpawmz
         2kGcYgk1+UeA7s4Iudy78NbwaQx4Mv2elFi9cSIDxKrgrWeQSgV/gKkBPMxfAFfZ8sUR
         W97UXzOHuQWs+55Nqtk6Dh4mrz1g5V4CPOhgVKjMQ1d8nyRaj4r9VXzqPTJOwjaRsmhb
         etoVl1N7Ensm/fdo0gqtGtmC0lc7gj1bnWNluRbX9Rdi5LUhi7ayUkLJbBicinPz0JyY
         kBEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rjuyPNxI;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id 27si36468qtp.1.2019.03.07.23.54.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:54:55 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rjuyPNxI;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id f11so3026220qti.7
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 23:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3fUARCoLu7tgfnteaRrxvD3YVIhSVCH+2xX857zGKBQ=;
        b=rjuyPNxIGZnwtqquX7ChNqfkxmF7EyUqdWrMfXTnYsw5BIGb+VkVENUs9Xe8qB20P6
         xYXiJ4uyx/5i/UR4YQi0zimSz3c9vsPk9mf9y/Q3kQREsTjBXKt3O9kT00nMV8XHcXLz
         sB6RVj6HHs3Q8cEbp/uLt2auE2wS+nkcgR5RHKeVWOXtG6sen4/vFvbW6b4dr5CZ4x2c
         5QGOoLe5al6eCAjUvI+WMpvSB9y/3pgjoYtCVrnRh9WxXSj2hzei5ETDiSug5T5bhaIP
         vZATvs66PvsaeCc7kVeNLP6Crt+KXrNeM5W8LwLadxNyiO9X2Y4okDPWUSV0TScp6sPl
         2Ifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3fUARCoLu7tgfnteaRrxvD3YVIhSVCH+2xX857zGKBQ=;
        b=cglxhxkQOCIAfnKXWSStmFlSxgWwa5e2GpQED3pNicL7weOCUM5p42RXPm/AcEfch/
         RJMn3YMu8aD37Ny+9ULfeDkISOJgm9QgYHYuD/rV1xnYv3kROSRtmgdnlXeqzuY57My+
         QKNlQLLxW6dFLq1Bx/+BbnSHRVObm2qCnmVL0InzuYUR9sYDpVOivhK3qEpCNjIujhMN
         QNEXV0I5bIAGNb9G3SKjwWgKMXLv4G40gsqCPm5snLb1YKyHWsbPlCSdhapzJBUktU1j
         vPii5uOlpuJhpWGH8MTqbP9wHYCWQxdUfovY2NmH3Yjgjqod2bkGPVxMqHZgCLlwngO9
         1Inw==
X-Gm-Message-State: APjAAAWomm4DBEGF5dFvlgn6us74S2uo1YL/LXuwunOBOIB+3qKkfUCA
	4SvmA5t/E6ctU83nCj3FhDs7BT0PqF6vKoXPfmZ1vKg+
X-Received: by 2002:aed:3c0f:: with SMTP id t15mr13896397qte.282.1552031694861;
 Thu, 07 Mar 2019 23:54:54 -0800 (PST)
MIME-Version: 1.0
References: <20190308065424.GA7942@bhagyashri-Lenovo-G570> <20190308065854.GA6875@kroah.com>
 <CAOMPgjhrBxq96-We_5fHqaZZHxqxVhpuBwCYKAncOCq7XS5ksA@mail.gmail.com> <20190308074125.GB16279@kroah.com>
In-Reply-To: <20190308074125.GB16279@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Fri, 8 Mar 2019 13:24:18 +0530
Message-ID: <CAOMPgjiA-=G7VCKdvDSUVwck+GdDwMPrQzFiekOm6kv28mop_w@mail.gmail.com>
Subject: Re: [PATCH v5] staging: fbtft: convert a macro to a function.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000da3a040583908954"

--000000000000da3a040583908954
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 8, 2019 at 1:11 PM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Fri, Mar 08, 2019 at 12:58:24PM +0530, Bhagyashri Dighole wrote:
> > On Fri, Mar 8, 2019 at 12:28 PM Greg Kroah-Hartman <
> > gregkh@linuxfoundation.org> wrote:
> >
> > > On Fri, Mar 08, 2019 at 12:24:24PM +0530, Bhagyashri Dighole wrote:
> > > > Convert a macro to an inline function to improve type safety and make
> > > > the code simpler.
> > > >
> > > > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > > > ---
> > > > Changes in v5:
> > > >   -- Add space on both the side of operator.
> > > >
> > > > Changes in v4:
> > > >   -- Modify log messages.
> > > >
> > > > Changes in v3:
> > > >   -- Change the subject line according to log messages.
> > > >   -- Remove extra spaces.
> > > >
> > > > Changes in v2:
> > > >   -- Make the converion from macro to inline function
> > > >
> > > >  drivers/staging/fbtft/fb_watterott.c | 15 +++++----------
> > > >  1 file changed, 5 insertions(+), 10 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/fbtft/fb_watterott.c
> > > b/drivers/staging/fbtft/fb_watterott.c
> > > > index 0a5206d..7ee8a83 100644
> > > > --- a/drivers/staging/fbtft/fb_watterott.c
> > > > +++ b/drivers/staging/fbtft/fb_watterott.c
> > > > @@ -90,15 +90,10 @@ static int write_vmem(struct fbtft_par *par,
> size_t
> > > offset, size_t len)
> > > >       return 0;
> > > >  }
> > > >
> > > > -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> > > > -                        (((c) & 000600) >> 6) |\
> > > > -                        (((c) & 0x001C) >> 2))
> > > > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> > > > -                        (((c) & 000700) >> 6) |\
> > > > -                        (((c) & 0x0018) >> 3))
> > > > -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> > > > -                        (((c) & 000700) >> 5) |\
> > > > -                        (((c) & 0x001C) >> 2))
> > > > +inline int rgb565_to_rgb332(u16 c)
> > > > +{
> > > > +     return ((c & 0xE000) >> 8) | ((c & 000700) >> 6) | ((c &
> 0x0018)
> > > >> 3);
> > > > +}
> > >
> > > You also deleted 2 unused macros here, making this patch do multiple
> > > things, and you didn't describe it in the changelog text :(
> > >
> > > This should be 2 separate patches, one to remove the unused macros, and
> > > one to turn the macro that is used, into an inline function.
> > >
> >
> > Patch one : to remove the unused macros is added in staging tree.
> > I thought i need to send only second patch.
>
> That is correct, but you sent both patches squished together here :)
>
> That means this patch itself would not even apply :(
>

I was on another branch, so first patch changes was not reflected.

>
> thanks,
>
> greg k-h
>

--000000000000da3a040583908954
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 8, 2019 at 1:11 PM Greg K=
roah-Hartman &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linux=
foundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On Fri, Mar 08, 2019 at 12:58:24PM +0530, Bhagyashri Dighole =
wrote:<br>
&gt; On Fri, Mar 8, 2019 at 12:28 PM Greg Kroah-Hartman &lt;<br>
&gt; <a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh=
@linuxfoundation.org</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; On Fri, Mar 08, 2019 at 12:24:24PM +0530, Bhagyashri Dighole wrot=
e:<br>
&gt; &gt; &gt; Convert a macro to an inline function to improve type safety=
 and make<br>
&gt; &gt; &gt; the code simpler.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digh=
olebhagyashri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&=
gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; Changes in v5:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0-- Add space on both the side of operator.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Changes in v4:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0-- Modify log messages.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Changes in v3:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0-- Change the subject line according to log mess=
ages.<br>
&gt; &gt; &gt;=C2=A0 =C2=A0-- Remove extra spaces.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Changes in v2:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0-- Make the converion from macro to inline funct=
ion<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 drivers/staging/fbtft/fb_watterott.c | 15 +++++-------=
---<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 5 insertions(+), 10 deletions(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/staging/fbtft/fb_watterott.c<br>
&gt; &gt; b/drivers/staging/fbtft/fb_watterott.c<br>
&gt; &gt; &gt; index 0a5206d..7ee8a83 100644<br>
&gt; &gt; &gt; --- a/drivers/staging/fbtft/fb_watterott.c<br>
&gt; &gt; &gt; +++ b/drivers/staging/fbtft/fb_watterott.c<br>
&gt; &gt; &gt; @@ -90,15 +90,10 @@ static int write_vmem(struct fbtft_par *=
par, size_t<br>
&gt; &gt; offset, size_t len)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; -#define RGB565toRGB323(c) ((((c) &amp; 0xE000) &gt;&gt; 8) =
|\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000600) &gt;&gt; 6) |\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x001C) &gt;&gt; 2))<br>
&gt; &gt; &gt; -#define RGB565toRGB332(c) ((((c) &amp; 0xE000) &gt;&gt; 8) =
|\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; 6) |\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x0018) &gt;&gt; 3))<br>
&gt; &gt; &gt; -#define RGB565toRGB233(c) ((((c) &amp; 0xC000) &gt;&gt; 8) =
|\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; 5) |\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x001C) &gt;&gt; 2))<br>
&gt; &gt; &gt; +inline int rgb565_to_rgb332(u16 c)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return ((c &amp; 0xE000) &gt;&gt; 8) | =
((c &amp; 000700) &gt;&gt; 6) | ((c &amp; 0x0018)<br>
&gt; &gt; &gt;&gt; 3);<br>
&gt; &gt; &gt; +}<br>
&gt; &gt;<br>
&gt; &gt; You also deleted 2 unused macros here, making this patch do multi=
ple<br>
&gt; &gt; things, and you didn&#39;t describe it in the changelog text :(<b=
r>
&gt; &gt;<br>
&gt; &gt; This should be 2 separate patches, one to remove the unused macro=
s, and<br>
&gt; &gt; one to turn the macro that is used, into an inline function.<br>
&gt; &gt;<br>
&gt; <br>
&gt; Patch one : to remove the unused macros is added in staging tree.<br>
&gt; I thought i need to send only second patch.<br>
<br>
That is correct, but you sent both patches squished together here :)<br>
<br>
That means this patch itself would not even apply :(<br></blockquote><div><=
br></div><div>I was on another branch, so first patch changes was not refle=
cted.<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--000000000000da3a040583908954--


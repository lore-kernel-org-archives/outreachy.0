X-GM-THRID: 6664981263437266944
X-Received: by 2002:a9f:310a:: with SMTP id m10mr10919701uab.17.1552025133078;
        Thu, 07 Mar 2019 22:05:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls1906810vsc.3.gmail; Thu, 07 Mar
 2019 22:05:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqynscgwDobtZZFAEBske0B7Llw8dKkAwCgYSwsDnOhr1tM9xOdzaIQo0tYxN2DKSYGfAm+R
X-Received: by 2002:a67:ad14:: with SMTP id t20mr11226351vsl.21.1552025132469;
        Thu, 07 Mar 2019 22:05:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552025132; cv=none;
        d=google.com; s=arc-20160816;
        b=OFS9LE25HK3fCWwQMOs+vkKVbkpgjRrJJ6oI50MUHkj8QunUBnikBoeaLGNonPrPGn
         NfNqCOAUmi7/odBR4UAoWzNY/QX6bWzITpgb4u2IdGEB1a6n7w5DjjyuQW5hmhvCRRvI
         sDYLhxZJJmFxup9CfiQRZuimSyWXAAW29ul7DaE1gYVlHwrAEhXOCTEvas2uLyk/sGlg
         Rnjklyem4du7caVqsnhyzhH58sl7sDbCuMinAwak6SqU7mSGlMtKOULo12OFm97Q+z47
         cbHcczWiaqtlqMe9Y+36JwDr2kJqmXu15xcE6EAc8/ny2tSamOOa2TmwMjcy1OygHAto
         V0SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nnR2GwLj9eUnnu4uCLNEpOFi9MrFUHUKWfvEgYE2PJM=;
        b=gY5CvQ+ZRcZrmEl8fOVH9MojfPwt6S51pUwCDG1w/RRymxU1SnDFMdzC3iTR8l+urx
         KpqOmjerYZB4nwgkslgklztwuNtd+ufiI67rp5B66pbpYfhwjKh2lwiZ9NdXCatThCXy
         FVK6gt+UzYs/RnB2MOciwxQridfOIdIfaiOsaiYyHYumLnTwbnHnxLZpOD5aB3NT2/9M
         4SPt++WKFhkJSwDDgQJmu+u+7OBNyjiG3bpMVu2iRHP4oLalV6rASDnA7H/gGWFVAAuk
         FIGgfJgTgwUNC32OIGP1/qCY3epQbKLOhG8yMkfFk7blq9si+j9ifUJtXXTPbEfCwsyT
         yk+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vMBIlJZz;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com. [2607:f8b0:4864:20::831])
        by gmr-mx.google.com with ESMTPS id s73si390866vkd.1.2019.03.07.22.05.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 22:05:32 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) client-ip=2607:f8b0:4864:20::831;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vMBIlJZz;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x831.google.com with SMTP id d18so20053989qtg.12
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 22:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nnR2GwLj9eUnnu4uCLNEpOFi9MrFUHUKWfvEgYE2PJM=;
        b=vMBIlJZzOMBfeMaGFftQuqFRo41pe46YfO3dmVLsYqcnv6uyy5KwhuVHIN8re6i/A3
         q+ROakQzls8ZRf6+M/Mpn4A9qnR7jsTM2+ibTKWeCpLGlUnSABafVfYtop+GSVxW5AdQ
         2sXhZLPbEJ7c/oCBBUcUW3KKaOzpkNNpTXcSkO5jpeBWS6Rb1Kg1zS5WjHNJkZTksGVt
         kDVt+1FNqROrIxZ9hEH2Igvj3o0bAWBbdjs4Eh3j5jXoax3o/14oq+kr7V18E5BELl93
         4xYbzZveRvg6PSaBfXSSFJr0tusdnTPWjbzK1vE7+PCEFrbmlPwnbrflxSeIdDzIrhjM
         O6Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nnR2GwLj9eUnnu4uCLNEpOFi9MrFUHUKWfvEgYE2PJM=;
        b=ZynIcWCZWiVXY6pAUacLd2YeU6HXuNtjAsrgnthsJQZlgfy5iXVzA8EKZYuQcqGAyU
         22bucy6JzwDTae/viqK/HPYZNQKqKZc/Z7IIVl+dE33ZE+f7eLyZfFnZTg1Mxjd9xFAF
         NnlZ9kwFkP8EQA2ZZDhFIBv6GkLsIt2uyyMlkndXsJUlwzrj5memRDOIQP5hLHvDFplI
         74g8IBxYGTzbKE9tq2B84IwagrSR1EjAN053jDv8U91JmRGe2cdjPoyC6q4sn8o8HImA
         cwLcPWlDVe+zpXzAzfZ5yYja1s7Yr5iiUAAFSc1rzA43Rggw6888WBg2H6Y3t/ZiP4v2
         0prQ==
X-Gm-Message-State: APjAAAV4LZ8t+l9vwlrtJg/DP8NdYvFIezOSXokfcMDOUgY+bDn3Vzkh
	tknpp2wMBOcDGUiaLs1w9WzgpuoE2B4NW7i0Gk+9dg==
X-Received: by 2002:a0c:d1a7:: with SMTP id e36mr14009116qvh.127.1552025132100;
 Thu, 07 Mar 2019 22:05:32 -0800 (PST)
MIME-Version: 1.0
References: <20190306111512.GA11718@bhagyashri-Lenovo-G570> <20190307193050.GA16807@kroah.com>
In-Reply-To: <20190307193050.GA16807@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Fri, 8 Mar 2019 11:35:02 +0530
Message-ID: <CAOMPgjgKXCwp80uTW2P7W0kbUYwRKpM6N3QKXnYERM_LxM5Bsw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] staging: fbtft: convert a macro to a function.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000ae70fa05838f0232"

--000000000000ae70fa05838f0232
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 8, 2019 at 1:00 AM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Wed, Mar 06, 2019 at 04:45:12PM +0530, Bhagyashri Dighole wrote:
> > Convert a macro to an inline function to improve type safety and make
> > the code simpler.
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> > Changes in v4:
> >   -- Modify log messages.
> >
> > Changes in v3:
> >   -- Change the subject line according to log messages.
> >   -- Remove extra spaces.
> >
> > Changes in v2:
> >   -- Make the converion from macro to inline function
> >
> >  drivers/staging/fbtft/fb_watterott.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_watterott.c
> b/drivers/staging/fbtft/fb_watterott.c
> > index 502d67f..40e5427 100644
> > --- a/drivers/staging/fbtft/fb_watterott.c
> > +++ b/drivers/staging/fbtft/fb_watterott.c
> > @@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t
> offset, size_t len)
> >       return 0;
> >  }
> >
> > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> > -                        (((c) & 000700) >> 6) |\
> > -                        (((c) & 0x0018) >> 3))
> > +inline int rgb565_to_rgb332(u16 c)
> > +{
> > +     return ((c & 0xE000) >> 8)| ((c & 000700) >> 6)| ((c & 0x0018) >>
> 3);
>
> Odd placement of '|' right?  checkpatch.pl didn't complain about this?
>

Yes, checkpatch.pl complain about it, but as per the suggestion i got,
I need to skip one space because line is about to reach 80 characters.

>
> Please put a space on both sides of that operator.
>
> thanks,
>
> greg k-h
>

--000000000000ae70fa05838f0232
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 8, 2019 at 1:00 AM Greg K=
roah-Hartman &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linux=
foundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On Wed, Mar 06, 2019 at 04:45:12PM +0530, Bhagyashri Dighole =
wrote:<br>
&gt; Convert a macro to an inline function to improve type safety and make<=
br>
&gt; the code simpler.<br>
&gt; <br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v4:<br>
&gt;=C2=A0 =C2=A0-- Modify log messages.<br>
&gt; <br>
&gt; Changes in v3:<br>
&gt;=C2=A0 =C2=A0-- Change the subject line according to log messages.<br>
&gt;=C2=A0 =C2=A0-- Remove extra spaces.<br>
&gt; <br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0-- Make the converion from macro to inline function<br>
&gt; <br>
&gt;=C2=A0 drivers/staging/fbtft/fb_watterott.c | 9 +++++----<br>
&gt;=C2=A0 1 file changed, 5 insertions(+), 4 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fb=
tft/fb_watterott.c<br>
&gt; index 502d67f..40e5427 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_watterott.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_watterott.c<br>
&gt; @@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t=
 offset, size_t len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; -#define RGB565toRGB332(c) ((((c) &amp; 0xE000) &gt;&gt; 8) |\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; 6) |\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 (((c) &amp; 0x0018) &gt;&gt; 3))<br>
&gt; +inline int rgb565_to_rgb332(u16 c)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ((c &amp; 0xE000) &gt;&gt; 8)| ((c &amp; 0=
00700) &gt;&gt; 6)| ((c &amp; 0x0018) &gt;&gt; 3);<br>
<br>
Odd placement of &#39;|&#39; right?=C2=A0 <a href=3D"http://checkpatch.pl" =
rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> didn&#39;t complain =
about this?<br></blockquote><div><br></div><div>Yes, <a href=3D"http://chec=
kpatch.pl">checkpatch.pl</a> complain about it, but as per the suggestion i=
 got,</div><div>I need to skip one space because line is about to reach 80 =
characters. <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Please put a space on both sides of that operator.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--000000000000ae70fa05838f0232--


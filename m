X-GM-THRID: 6664981263437266944
X-Received: by 2002:aa7:8841:: with SMTP id k1mr6424795pfo.63.1552030571988;
        Thu, 07 Mar 2019 23:36:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4554:: with SMTP id s81ls3851298pfa.3.gmail; Thu, 07 Mar
 2019 23:36:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqycMUh2IhBPfuEgVXK8vfDR0nO8zEhDA2kIYLwa7vrfZkv05rLfGP0XA3fkIahG+Gsnf2h3
X-Received: by 2002:a62:52c7:: with SMTP id g190mr6497497pfb.68.1552030571203;
        Thu, 07 Mar 2019 23:36:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552030571; cv=none;
        d=google.com; s=arc-20160816;
        b=m784VT2ZhbNLKlWnCc/2OsYTu99V7TB9+jmkKyElxKBHcq4EMNiLrIyjj07MTiaOTr
         seZzdZSspfogeoZzrxy2CD8kaqljaH+7NAmunxI7v727qo+GwpS5R0TqHhIyEOmPEpKt
         mMKnrbru0gNcm65+zHTqvWbub/lEoZdKpIer/2u5H4wksVg9j+q1L5mqrexbWLuuxty3
         iqNESEyrA7ni0L7+LINOBb4PnatdeVIiWSnir6VnQriEmOL8KxLmP8Ij5ntEHAA+Ulm2
         CLwvRgpinWubTzrtpG4Gh2y+iVtLJ9zezCfHG2d0dIsSGZXVRcy1CGkj+onU+lJXeoxY
         PA+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2BrUVd0u99ghtaiUzcgiNxoZKIi+O/Ort96kbRdhKbM=;
        b=jWSgxNxQ2CYE2TkerI47GaJOwZJQvKzS3RMDUR5NilAcssiK/4t57eMLG+2Z5j/KdC
         4DZTD6lyOXzbzbbAf5yDlABasB9qtI8rD1m2uBfPP/14dkvKKBPe6XMa9wQXGmHgqjVc
         /KqbNGd53wYnTi1pYHFj09cGLcIZZ/U9K449aZvqyf7Aa6aRcfUmkLV/phLaz6aqteQ3
         APfsu3puf6leCUw1Ia4ZVHVP9dfmoAT/1A5PCgsd32dX39Clq+BCV3GimMbQP2pHNgZG
         k1t8I3v/+wuDb/nlZRsEzFzps74RBj+9Okr9mkkunmfma9mnKSBTg87P/ZKGspajf3Zx
         otBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=npDSOzNa;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id g83si473910pfg.5.2019.03.07.23.36.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:36:11 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=npDSOzNa;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x733.google.com with SMTP id h28so10652484qkk.7
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 23:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2BrUVd0u99ghtaiUzcgiNxoZKIi+O/Ort96kbRdhKbM=;
        b=npDSOzNaQMEiM4m83kMSMhx23HBfZYn+wU2wrhEa7jrOVWbwC/MLck5rUsvFRnLbgA
         W44K8CYgNS5wJqqx/Ql4UaWhzZLdMH7bbb5tA6ySgrzw7+F9PJ4lt33939785B2lTaXo
         lTV+QOkbpx+317GqfSpQpcsW4erUC18zSK7h7nk2xnixAVVsrASaN8ulIsPSWSMLFDCd
         R/WC+gCKzz4BoZO41L+xafH3k67V70vOb8P7oQbGaguTytStY9XlOACgUOgaShm2oV0+
         0boHXzw1gai9H2w0jRjc9/3/4abYp+L8hW2UVbYdPtLRMhIQejj7z+Vy3Kvpap4okaDU
         h+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2BrUVd0u99ghtaiUzcgiNxoZKIi+O/Ort96kbRdhKbM=;
        b=kGMsJ92RBcnQ18SekRHwridoTotnc8k8Ghr06+KUwrCZUXI1Fy7jvxfUJwa8UBWUZ3
         PsF1l+NaZW4MlsdJCk5Dfp0niLHLvKWuRHhWUEBVGtwlgOvchxLpeekuRMi5O8SpK1aY
         8ek32sTP/4mVDAMytSs9VuBpCC5tWMhMiPbv2B9svYA1SOuakJZZBhb2DzzGvGGmEDzU
         g2r1ZMTEOoIX3iQz+GeaPBg7KnEbWj0oUZ2GcaTLns1+WTvOQZbPuI3cGCZT4CKqwc05
         Uwk2AAGnuGF8uKmt4TRaqdJXvLsWmI8LHYxD93baAIkdkhP66UwP3CuiNHOtOBfOTnTM
         M8Jg==
X-Gm-Message-State: APjAAAVLOZRrsB9efMSa+mtL9PI0fh6jKNXJZOm5Yje68B7DSXPZGcx7
	y0KmYwn2VPOFu7qPQIExE2fEl5+wE2CBc4fnRGHbigZx
X-Received: by 2002:a05:620a:12b8:: with SMTP id x24mr4223347qki.329.1552030570782;
 Thu, 07 Mar 2019 23:36:10 -0800 (PST)
MIME-Version: 1.0
References: <20190308065424.GA7942@bhagyashri-Lenovo-G570> <20190308065854.GA6875@kroah.com>
 <CAOMPgjhrBxq96-We_5fHqaZZHxqxVhpuBwCYKAncOCq7XS5ksA@mail.gmail.com> <alpine.DEB.2.21.1903080829250.5073@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903080829250.5073@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Fri, 8 Mar 2019 13:05:33 +0530
Message-ID: <CAOMPgjjQFmMUS_DLx6YBVzxXzuen+tpCBVp4s2J2+UohGKmfgw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v5] staging: fbtft: convert a macro
 to a function.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000da24f7058390463c"

--000000000000da24f7058390463c
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 8, 2019 at 1:00 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 8 Mar 2019, Bhagyashri Dighole wrote:
>
> >
> >
> > On Fri, Mar 8, 2019 at 12:28 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> >       On Fri, Mar 08, 2019 at 12:24:24PM +0530, Bhagyashri Dighole
> >       wrote:
> >       > Convert a macro to an inline function to improve type safety
> >       and make
> >       > the code simpler.
> >       >
> >       > Signed-off-by: Bhagyashri Dighole
> >       <digholebhagyashri@gmail.com>
> >       > ---
> >       > Changes in v5:
> >       >   -- Add space on both the side of operator.
> >       >
> >       > Changes in v4:
> >       >   -- Modify log messages.
> >       >
> >       > Changes in v3:
> >       >   -- Change the subject line according to log messages.
> >       >   -- Remove extra spaces.
> >       >
> >       > Changes in v2:
> >       >   -- Make the converion from macro to inline function
> >       >
> >       >  drivers/staging/fbtft/fb_watterott.c | 15 +++++----------
> >       >  1 file changed, 5 insertions(+), 10 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/fbtft/fb_watterott.c
> >       b/drivers/staging/fbtft/fb_watterott.c
> >       > index 0a5206d..7ee8a83 100644
> >       > --- a/drivers/staging/fbtft/fb_watterott.c
> >       > +++ b/drivers/staging/fbtft/fb_watterott.c
> >       > @@ -90,15 +90,10 @@ static int write_vmem(struct fbtft_par
> >       *par, size_t offset, size_t len)
> >       >       return 0;
> >       >  }
> >       >
> >       > -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> >       > -                        (((c) & 000600) >> 6) |\
> >       > -                        (((c) & 0x001C) >> 2))
> >       > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> >       > -                        (((c) & 000700) >> 6) |\
> >       > -                        (((c) & 0x0018) >> 3))
> >       > -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> >       > -                        (((c) & 000700) >> 5) |\
> >       > -                        (((c) & 0x001C) >> 2))
> >       > +inline int rgb565_to_rgb332(u16 c)
> >       > +{
> >       > +     return ((c & 0xE000) >> 8) | ((c & 000700) >> 6) | ((c &
> >       0x0018) >> 3);
> >       > +}
> >
> >       You also deleted 2 unused macros here, making this patch do
> >       multiple
> >       things, and you didn't describe it in the changelog text :(
> >
> >       This should be 2 separate patches, one to remove the unused
> >       macros, and
> >       one to turn the macro that is used, into an inline function.
> >
> >
> > Patch one : to remove the unused macros is added in staging tree.
> > I thought i need to send only second patch.
>
> You only need to send the second patch, if the first one is integrated.
> But the patch that you sent removes those other macros again.  I guess you
> have started from the wrong place.
>

Oh. Yes.
I understand. Thanks. :)

>
> julia
>
> >
> >       Oh, I also just noticed it needs to be static :)
> >
> >
> > I will modify it with the static.
> >
> >       thanks,
> >
> >       greg k-h
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAOMPgjhrBxq96-We_5fHqaZ
> > ZHxqxVhpuBwCYKAncOCq7XS5ksA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903080829250.5073%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000da24f7058390463c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 8, 2019 at 1:00 PM Julia =
Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Fri, 8 Mar 2019, Bhagyashri Dighole wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Mar 8, 2019 at 12:28 PM Greg Kroah-Hartman<br>
&gt; &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gr=
egkh@linuxfoundation.org</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Fri, Mar 08, 2019 at 12:24:24PM +0530, Bh=
agyashri Dighole<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Convert a macro to an inline function t=
o improve type safety<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0and make<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; the code simpler.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Bhagyashri Dighole<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:digholebhagyashri@gmai=
l.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Changes in v5:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0-- Add space on both the si=
de of operator.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Changes in v4:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0-- Modify log messages.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Changes in v3:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0-- Change the subject line =
according to log messages.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0-- Remove extra spaces.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0-- Make the converion from =
macro to inline function<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/fbtft/fb_watterot=
t.c | 15 +++++----------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 5 insertions(+), =
10 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/fbtft/fb_w=
atterott.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/fbtft/fb_watterott.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 0a5206d..7ee8a83 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/fbtft/fb_watterot=
t.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/fbtft/fb_watterot=
t.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -90,15 +90,10 @@ static int write_vm=
em(struct fbtft_par<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*par, size_t offset, size_t len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -#define RGB565toRGB323(c) ((((c) &amp;=
 0xE000) &gt;&gt; 8) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000600) &gt;&gt; =
6) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x001C) &gt;&gt; =
2))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -#define RGB565toRGB332(c) ((((c) &amp;=
 0xE000) &gt;&gt; 8) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; =
6) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x0018) &gt;&gt; =
3))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -#define RGB565toRGB233(c) ((((c) &amp;=
 0xC000) &gt;&gt; 8) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; =
5) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x001C) &gt;&gt; =
2))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +inline int rgb565_to_rgb332(u16 c)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0return ((c &amp; 0=
xE000) &gt;&gt; 8) | ((c &amp; 000700) &gt;&gt; 6) | ((c &amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A00x0018) &gt;&gt; 3);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You also deleted 2 unused macros here, makin=
g this patch do<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0multiple<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0things, and you didn&#39;t describe it in th=
e changelog text :(<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0This should be 2 separate patches, one to re=
move the unused<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0macros, and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0one to turn the macro that is used, into an =
inline function.<br>
&gt;<br>
&gt;<br>
&gt; Patch one : to remove the unused macros is added in staging tree.<br>
&gt; I thought i need to send only second patch.<br>
<br>
You only need to send the second patch, if the first one is integrated.<br>
But the patch that you sent removes those other macros again.=C2=A0 I guess=
 you<br>
have started from the wrong place.<br></blockquote><div><br></div><div>Oh. =
Yes.</div><div>I understand. Thanks. :) <br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
<br>
julia<br>
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Oh, I also just noticed it needs to be stati=
c :)<br>
&gt;<br>
&gt;<br>
&gt; I will modify it with the static.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0thanks,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0greg k-h<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<=
br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CAOMPgjhrBxq96-We_5fHqaZ" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/CAOMP=
gjhrBxq96-We_5fHqaZ</a><br>
&gt; ZHxqxVhpuBwCYKAncOCq7XS5ksA%<a href=3D"http://40mail.gmail.com" rel=3D=
"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903080829250.5073%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1903080829250.5073%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--000000000000da24f7058390463c--


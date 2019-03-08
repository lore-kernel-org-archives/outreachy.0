X-GM-THRID: 6664981263437266944
X-Received: by 2002:a63:730f:: with SMTP id o15mr6433940pgc.19.1552030143058;
        Thu, 07 Mar 2019 23:29:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6b06:: with SMTP id g6ls3002278pgc.7.gmail; Thu, 07 Mar
 2019 23:29:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqz78lE7NMrC0NBYk04DACVD1CS8XQh0tKBKuavk2MJ9bpsoOi4vp8CL4if5QdPmFBZWKrkm
X-Received: by 2002:a62:fb03:: with SMTP id x3mr6406512pfm.130.1552030142341;
        Thu, 07 Mar 2019 23:29:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552030142; cv=none;
        d=google.com; s=arc-20160816;
        b=y4Cy7L/gNnEQIPEG/YDxgq0SMyHDVc8Rsd5a56ITtrRflKUgfPHb0298atJbQZrAUJ
         mdpX2wcW+A+rmA1nJCfFuhH6NO+i7IvHpSYBmS1k8pRvFuPQYKOlEpZK0xxXhV2Hsz7H
         z1iQnKvai7LoBkh01NpCqK/qs6DTCxGriY8px4l2fZwsBYa6WtFlCJHnAWMEnjZEs7p1
         IuR2QCDLX9YBQpZAe+taVFpZEQN3cUt8Oh3Uc1rYCjO6E5Nh7Qzos/KT9VY29gRlxX1o
         FzPdIYtWeqOjwe8WI1+e9x3c2gSZLkisWePQo+AHzU2f1rLDBfR+WWkmg5kOyD184VWQ
         tCXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AGJwuHUmiVbYPKPv7/XDzERyIl6stNLimT/oCmeVPhw=;
        b=K6F6C8SZeouTTYGz4SSE1jYoE4zBzmlMTfdgyRv0j7XeFoz8v1LJHYJwm7XKdKRNTX
         xAytVd1oWEaZhDQV4kp8vGx6LLVfNis4PJCSK5CoQMHpi3c0oYM0S82ByZx0uV98F2JN
         j9myusysvFgzwXrlNUd4/YQqMdkpftnjiKFTlB8S/1nTPHxCnq07mhjOUGkyGl+lSxyG
         IGQ+sb8vJMT0lDGB1nFJQWHw5m+8E5tesmRw8cDaIaRSdI0NW6znIa/MAQX3KS9GE6wL
         7ESlQoohDTw30BgrNY4t1XB3MoeLJFJ678gG9xqC1lqxUf/Mm98bcv7kNi5atxYQsNrP
         4T1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E6JMIx7l;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id q140si464758pgq.2.2019.03.07.23.29.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:29:02 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E6JMIx7l;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id o6so20223275qtk.6
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 23:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AGJwuHUmiVbYPKPv7/XDzERyIl6stNLimT/oCmeVPhw=;
        b=E6JMIx7lXszZd2zh4nnnlEQ5QLEwIeNsw8m+RV+/WS1wn3NuLsrhPN3zpULciHSnQm
         qmy6WaDZx7f9G/8VVV6N+6DPcmVTrkxKXaz/GawOe9GSiDM1YHlSV55IBx8yjQt095iB
         FVya2G4uKjRp4+sPCsG3PSCyUN5Co6A74LS38xpTLhOnXa0YMs4EeGRTnd1f7BV7f1/z
         Ht9SyorCuDz4eHV3Y39YEmGuIvh37gDHztGtfyzzbrM+mApxlcbFsZng4HFzbmE2hj3C
         IzbvN0lIeQVAnkmYxWsMBTdQt/G6GdRHPjiNmaSXrHi5VeBdgzciM+rPK/0y8FFbz9Pm
         jq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AGJwuHUmiVbYPKPv7/XDzERyIl6stNLimT/oCmeVPhw=;
        b=EzZrGK2Ocr1gUWvVA/Szms6Sn3fv+wjXXom/lvoNwshP2IiG9e23k0EtLDWorL7oeN
         K5hAEvPSIua+L2O3uGw3kUexSxLmsXmWTKzwXe/eloKHqrXwwU4xg0v53fOs/p6BCDUs
         yQMDE+gXNCx2yErdw6jRAqk/ecWMxnl+nQPe9mfJhV3i8YTLiHWhWv6l2eW0+gmKWjjS
         /pI/BODGYmpBiqYq9AtICGhGOv7JBPC72uxcb46r+phrEQrFpqn/Blb0YvvDc8QdOpBB
         aFmdUY7+ukWv6N5SNoCT82WQyv7Nffj/OV0/ItzTWhcyrc9dZ/MJKS58iACKqMkX8QAL
         5Jow==
X-Gm-Message-State: APjAAAUId+6dV/Xv13dFGKuPwWxJs3IB4NlN/lUEKsfp5epKBDIg5Qc/
	qDCF4LYldSffMINiIKc0qmrotwxN+gTt9K9KwGil3RPv
X-Received: by 2002:ac8:2273:: with SMTP id p48mr13501205qtp.7.1552030141426;
 Thu, 07 Mar 2019 23:29:01 -0800 (PST)
MIME-Version: 1.0
References: <20190308065424.GA7942@bhagyashri-Lenovo-G570> <20190308065854.GA6875@kroah.com>
In-Reply-To: <20190308065854.GA6875@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Fri, 8 Mar 2019 12:58:24 +0530
Message-ID: <CAOMPgjhrBxq96-We_5fHqaZZHxqxVhpuBwCYKAncOCq7XS5ksA@mail.gmail.com>
Subject: Re: [PATCH v5] staging: fbtft: convert a macro to a function.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000042b27c0583902d9b"

--00000000000042b27c0583902d9b
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 8, 2019 at 12:28 PM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Fri, Mar 08, 2019 at 12:24:24PM +0530, Bhagyashri Dighole wrote:
> > Convert a macro to an inline function to improve type safety and make
> > the code simpler.
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> > Changes in v5:
> >   -- Add space on both the side of operator.
> >
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
> >  drivers/staging/fbtft/fb_watterott.c | 15 +++++----------
> >  1 file changed, 5 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_watterott.c
> b/drivers/staging/fbtft/fb_watterott.c
> > index 0a5206d..7ee8a83 100644
> > --- a/drivers/staging/fbtft/fb_watterott.c
> > +++ b/drivers/staging/fbtft/fb_watterott.c
> > @@ -90,15 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t
> offset, size_t len)
> >       return 0;
> >  }
> >
> > -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> > -                        (((c) & 000600) >> 6) |\
> > -                        (((c) & 0x001C) >> 2))
> > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> > -                        (((c) & 000700) >> 6) |\
> > -                        (((c) & 0x0018) >> 3))
> > -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> > -                        (((c) & 000700) >> 5) |\
> > -                        (((c) & 0x001C) >> 2))
> > +inline int rgb565_to_rgb332(u16 c)
> > +{
> > +     return ((c & 0xE000) >> 8) | ((c & 000700) >> 6) | ((c & 0x0018)
> >> 3);
> > +}
>
> You also deleted 2 unused macros here, making this patch do multiple
> things, and you didn't describe it in the changelog text :(
>
> This should be 2 separate patches, one to remove the unused macros, and
> one to turn the macro that is used, into an inline function.
>

Patch one : to remove the unused macros is added in staging tree.
I thought i need to send only second patch.

>
> Oh, I also just noticed it needs to be static :)
>

I will modify it with the static.

>
> thanks,
>
> greg k-h
>

--00000000000042b27c0583902d9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Mar 8, 2019 at 12:28 PM Greg Kroah-Hartman &lt;<a href=3D"mailto:gregk=
h@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Mar 08, 2019 at 12=
:24:24PM +0530, Bhagyashri Dighole wrote:<br>
&gt; Convert a macro to an inline function to improve type safety and make<=
br>
&gt; the code simpler.<br>
&gt; <br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v5:<br>
&gt;=C2=A0 =C2=A0-- Add space on both the side of operator.<br>
&gt; <br>
&gt; Changes in v4:<br>
&gt;=C2=A0 =C2=A0-- Modify log messages.<br>
&gt; <br>
&gt; Changes in v3:<br>
&gt;=C2=A0 =C2=A0-- Change the subject line according to log messages.<br>
&gt;=C2=A0 =C2=A0-- Remove extra spaces.<br>
&gt;=C2=A0 =C2=A0<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0-- Make the converion from macro to inline function<br>
&gt; <br>
&gt;=C2=A0 drivers/staging/fbtft/fb_watterott.c | 15 +++++----------<br>
&gt;=C2=A0 1 file changed, 5 insertions(+), 10 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fb=
tft/fb_watterott.c<br>
&gt; index 0a5206d..7ee8a83 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_watterott.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_watterott.c<br>
&gt; @@ -90,15 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_=
t offset, size_t len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; -#define RGB565toRGB323(c) ((((c) &amp; 0xE000) &gt;&gt; 8) |\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 (((c) &amp; 000600) &gt;&gt; 6) |\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 (((c) &amp; 0x001C) &gt;&gt; 2))<br>
&gt; -#define RGB565toRGB332(c) ((((c) &amp; 0xE000) &gt;&gt; 8) |\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; 6) |\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 (((c) &amp; 0x0018) &gt;&gt; 3))<br>
&gt; -#define RGB565toRGB233(c) ((((c) &amp; 0xC000) &gt;&gt; 8) |\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; 5) |\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 (((c) &amp; 0x001C) &gt;&gt; 2))<br>
&gt; +inline int rgb565_to_rgb332(u16 c)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ((c &amp; 0xE000) &gt;&gt; 8) | ((c &amp; =
000700) &gt;&gt; 6) | ((c &amp; 0x0018) &gt;&gt; 3);<br>
&gt; +}<br>
<br>
You also deleted 2 unused macros here, making this patch do multiple<br>
things, and you didn&#39;t describe it in the changelog text :(<br>
<br>
This should be 2 separate patches, one to remove the unused macros, and<br>
one to turn the macro that is used, into an inline function.<br></blockquot=
e><div><br></div><div>Patch one : to remove the unused macros is added in s=
taging tree.<br>I thought i need to send only second patch. <br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
<br>
Oh, I also just noticed it needs to be static :)<br></blockquote><div><br><=
/div><div>I will modify it with the static. <br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div></div>

--00000000000042b27c0583902d9b--


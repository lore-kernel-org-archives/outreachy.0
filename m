X-GM-THRID: 6664981263437266944
X-Received: by 2002:a17:902:e612:: with SMTP id cm18mr5317300plb.122.1552026603953;
        Thu, 07 Mar 2019 22:30:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls4292312plq.0.gmail; Thu, 07
 Mar 2019 22:30:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqyeiWxzCVBEpJAsIHXvh0tj8JSNaaMRkbXC4z1iGfBnOtrJ9H2QqdCeECIg26nbUhwq4agR
X-Received: by 2002:a17:902:2cc1:: with SMTP id n59mr5203675plb.67.1552026603161;
        Thu, 07 Mar 2019 22:30:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552026603; cv=none;
        d=google.com; s=arc-20160816;
        b=l5YOOB5FPnARueR7sIFN1An3quT/ITXfWMa0XjdxDbScw9f+K0+oR7Yil9onXEOzBV
         wgHq9c9GX/N70ikbDHAfbHQvSy7QYmVGxjq3jKo5zc+qu6PNyYDgQ67S7yK90yUHjv+2
         aTkuowL1NBjNh7bzt2A89AakH7zuLku6Be6s5lcD4Dot83A8yGkw6ap94QCcTUea1rHq
         tIT7BX7JhPnCzHub0cSgtOdhkV9NMhLyOASFqCOy+Dr7okZtKkUmZ5JedBKlO4Umib96
         jwmqvtCcQeSq97ASt8I0K3IuLQ5CaIi1tCAoSojpG26T3g24rD40NR0ir4VYpKT6l/44
         wtCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uEAyP769nQVrGRTRd4YHm3lKQrlMJprkDgiVCZVNJOA=;
        b=rNzf1L5d7bvExTeTULBNq9S1Gtl3sy+Ol7feOE8RKXgd61jOz1+EZaMfl7j7Nq9neJ
         L4YOrm66XUyPU/vjmo+XyKAAqQWecZsP5AMhJ/ZpV0VCcljhuAhk0C6GSQtjB+FCJyng
         CTJp+UuyrIsme2NNazsZWuCOALGtXlzl45yofbWzuXfgxVp0USALRlbaOWEqjOgwl8oK
         4SArJNtEi1Z65NOLruKn70zMuRxrQ8nBGSkiwC3v5Y9vg5GCoQQt1cPASarOORAqGnhL
         Mj/ZTxijaTzHoM+sxiNfyynsrmwvN6Zc9A8ytrjZqBdFz5OXeAlG6RhTt/wT5jHoYdnU
         89nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SmO/vKA7";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com. [2607:f8b0:4864:20::836])
        by gmr-mx.google.com with ESMTPS id t24si247110plo.2.2019.03.07.22.30.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 22:30:03 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) client-ip=2607:f8b0:4864:20::836;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SmO/vKA7";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x836.google.com with SMTP id u7so20130210qtg.9
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 22:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uEAyP769nQVrGRTRd4YHm3lKQrlMJprkDgiVCZVNJOA=;
        b=SmO/vKA7Y6/gdY/r6zv9+Q7R068XXHft2IkRj6cMItmWKIUmsxeAMWnkAKO2nI/ft3
         XA5PQdPBxNEHnipRKRyzahohTKIGX2/tT4lJj9N70XuTZniVjamO73PkRoWsOf+/WwSm
         7czK7oNvpUpxtZ5muglEHuFzFbOaJBx7jXKY7D7zBdwgaBQy8PgLkVKq9yFr/LIjOUp1
         81W24LKvWU1ZIJFPmahxj/cxE5TUd5xMur/aL9j6qwHmELoC/AHrAVH1Z7QwePZs/Nf/
         Q469Bu40nlpVUvWK3bHBWOZP+fHHojAmAfPZZcUln6bAYh0N7UomA2GlhuHSaIwp77Ua
         4SsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uEAyP769nQVrGRTRd4YHm3lKQrlMJprkDgiVCZVNJOA=;
        b=eBulZfH5g7mNEzak+ihSDn7WUIZgHlVvK6snBYJN/Kl1jmB6ivxklY79uit2AImtuj
         dgI5XRVHXLzB/BzoJQsfTzZGSlOdnRn2TKfEa6yVX9COprbvywGP0S0lYTSe97O2WEuY
         cC441jFmgBCyf5kXg4tXOmSrx7bDfjJ7hsjsDxQ4DWme4wWRyU8tr/8mcY9HsPZOMeh8
         iP4VMD2M9+p7/tOMqdgE8OZB05DkSKBCRiSYVvfTQ3PP5sVLkfe+KxKceWGFarS1/qv4
         T1XMRPDd1mIlT7qomZgSfBwg4XwDI2mxmuMWYJCGSB/LJEshRZCnXtwPtMunvJcA2sqV
         53wA==
X-Gm-Message-State: APjAAAXDGoJDHiZXa1iQKzVWdSY59AM68UYF/kl153Yt1Xi9tHmMWsX4
	ZSobotZ6+snTEzk9a+bHYNiGEapW1CfsSkVr/ikQZw==
X-Received: by 2002:ac8:1adb:: with SMTP id h27mr13386722qtk.266.1552026602704;
 Thu, 07 Mar 2019 22:30:02 -0800 (PST)
MIME-Version: 1.0
References: <20190306111512.GA11718@bhagyashri-Lenovo-G570>
 <20190307193050.GA16807@kroah.com> <CAOMPgjgKXCwp80uTW2P7W0kbUYwRKpM6N3QKXnYERM_LxM5Bsw@mail.gmail.com>
 <20190308062124.GB24189@kroah.com>
In-Reply-To: <20190308062124.GB24189@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Fri, 8 Mar 2019 11:59:26 +0530
Message-ID: <CAOMPgjirsVXheVtxct2QFpn7hpmHKxsJ6JO5Kj5Z_Kqe06tz6Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] staging: fbtft: convert a macro to a function.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000056117605838f5a43"

--00000000000056117605838f5a43
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 8, 2019 at 11:51 AM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Fri, Mar 08, 2019 at 11:35:02AM +0530, Bhagyashri Dighole wrote:
> > On Fri, Mar 8, 2019 at 1:00 AM Greg Kroah-Hartman <
> > gregkh@linuxfoundation.org> wrote:
> >
> > > On Wed, Mar 06, 2019 at 04:45:12PM +0530, Bhagyashri Dighole wrote:
> > > > Convert a macro to an inline function to improve type safety and make
> > > > the code simpler.
> > > >
> > > > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > > > ---
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
> > > >  drivers/staging/fbtft/fb_watterott.c | 9 +++++----
> > > >  1 file changed, 5 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/fbtft/fb_watterott.c
> > > b/drivers/staging/fbtft/fb_watterott.c
> > > > index 502d67f..40e5427 100644
> > > > --- a/drivers/staging/fbtft/fb_watterott.c
> > > > +++ b/drivers/staging/fbtft/fb_watterott.c
> > > > @@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par,
> size_t
> > > offset, size_t len)
> > > >       return 0;
> > > >  }
> > > >
> > > > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> > > > -                        (((c) & 000700) >> 6) |\
> > > > -                        (((c) & 0x0018) >> 3))
> > > > +inline int rgb565_to_rgb332(u16 c)
> > > > +{
> > > > +     return ((c & 0xE000) >> 8)| ((c & 000700) >> 6)| ((c & 0x0018)
> >>
> > > 3);
> > >
> > > Odd placement of '|' right?  checkpatch.pl didn't complain about this?
> > >
> >
> > Yes, checkpatch.pl complain about it, but as per the suggestion i got,
> > I need to skip one space because line is about to reach 80 characters.
>
> Don't make one coding style change just to have to send a follow-on
> coding style change for that modification.  The goal is to reduce the
> number of warnings, not just constantly send new patches :)
>

Okay.
Thanks.

>
> thanks,
>
> greg k-h
>

--00000000000056117605838f5a43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 8, 2019 at 11:51 AM Greg =
Kroah-Hartman &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linu=
xfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">On Fri, Mar 08, 2019 at 11:35:02AM +0530, Bhagyashri Dighole=
 wrote:<br>
&gt; On Fri, Mar 8, 2019 at 1:00 AM Greg Kroah-Hartman &lt;<br>
&gt; <a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh=
@linuxfoundation.org</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; On Wed, Mar 06, 2019 at 04:45:12PM +0530, Bhagyashri Dighole wrot=
e:<br>
&gt; &gt; &gt; Convert a macro to an inline function to improve type safety=
 and make<br>
&gt; &gt; &gt; the code simpler.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digh=
olebhagyashri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&=
gt;<br>
&gt; &gt; &gt; ---<br>
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
&gt; &gt; &gt;=C2=A0 drivers/staging/fbtft/fb_watterott.c | 9 +++++----<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 5 insertions(+), 4 deletions(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/staging/fbtft/fb_watterott.c<br>
&gt; &gt; b/drivers/staging/fbtft/fb_watterott.c<br>
&gt; &gt; &gt; index 502d67f..40e5427 100644<br>
&gt; &gt; &gt; --- a/drivers/staging/fbtft/fb_watterott.c<br>
&gt; &gt; &gt; +++ b/drivers/staging/fbtft/fb_watterott.c<br>
&gt; &gt; &gt; @@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *p=
ar, size_t<br>
&gt; &gt; offset, size_t len)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; -#define RGB565toRGB332(c) ((((c) &amp; 0xE000) &gt;&gt; 8) =
|\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; 6) |\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x0018) &gt;&gt; 3))<br>
&gt; &gt; &gt; +inline int rgb565_to_rgb332(u16 c)<br>
&gt; &gt; &gt; +{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return ((c &amp; 0xE000) &gt;&gt; 8)| (=
(c &amp; 000700) &gt;&gt; 6)| ((c &amp; 0x0018) &gt;&gt;<br>
&gt; &gt; 3);<br>
&gt; &gt;<br>
&gt; &gt; Odd placement of &#39;|&#39; right?=C2=A0 <a href=3D"http://check=
patch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> didn&#39;t=
 complain about this?<br>
&gt; &gt;<br>
&gt; <br>
&gt; Yes, <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_bl=
ank">checkpatch.pl</a> complain about it, but as per the suggestion i got,<=
br>
&gt; I need to skip one space because line is about to reach 80 characters.=
<br>
<br>
Don&#39;t make one coding style change just to have to send a follow-on<br>
coding style change for that modification.=C2=A0 The goal is to reduce the<=
br>
number of warnings, not just constantly send new patches :)<br></blockquote=
><div><br></div><div>Okay.</div><div>Thanks.<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--00000000000056117605838f5a43--


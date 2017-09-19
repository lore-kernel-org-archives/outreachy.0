X-GM-THRID: 6467232921524633600
X-Received: by 10.36.83.20 with SMTP id n20mr13313itb.13.1505803194249;
        Mon, 18 Sep 2017 23:39:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.33.214 with SMTP id e205ls6741420ita.5.canary-gmail; Mon,
 18 Sep 2017 23:39:53 -0700 (PDT)
X-Received: by 10.200.47.134 with SMTP id l6mr131380qta.18.1505803193424;
        Mon, 18 Sep 2017 23:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505803193; cv=none;
        d=google.com; s=arc-20160816;
        b=eL9ey4qTrZwtpQ/VfDgwpoI8mT8HbVQrp+0R/P6QgJA6H3YUJH8pJ8NvGXUW30bzAZ
         sHfrnuuMDlWAYefxpoKo8hYFPmbIDWbBT6qpoh1/XPQzQkoqHYr/+Odn5EB/XM943NQw
         zNz+WUPCDQDEsekkSRpDVfjGKxxqV79hgD8iF4pZSGct3Y6hhZ6jghkHe0OpP6OVt6Ho
         3GmuHgTgbRS3mTT2Si947NXwgCVCjQh8ZF0Do+PrTIJOPzbW9MOX9q122FWZNT/PghCo
         pGo4wTvXU/2aZetR8TgplEr1G8UzaRDDnv3kg35iTMYHnbrWw1U0H7vp59eQzi6mS8aC
         drNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=adQXQewkQgVsq9f/AZnA6mBqRU92HoQVQbIugro7E+8=;
        b=pgQ3avaxrF1gsM9curyb1KU1bqQ7IoM+QM/3ZfXDaaTdzJafDthHHLDFCQCDK47468
         RFtZVREqfRmC8qo0ufSelXWvIAAVY2CMJLkhHu8nk9aInwCYoSA87NBwUo8G+h45W/bA
         N3Ow/8IFu4Y08zBxKm6OGU1Nen61rXmsl56yoBMLrx1v2AW79SUTqO+yLtD2MAreJ+3A
         BDRQmmNiUqfpXjUYF+aZchdZ4QDoz92BlJtFof781Vo9dYgGQ6SUmiWLChc6LW45BGMA
         CszA9Wi/aG+7sBVX4Vex6haxpcY95QQEaI9xez+G9I0FVIT0+xcsZYieM04A5qp+8ehr
         jQgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hMNCMfS7;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id z184si339610ywb.32.2017.09.18.23.39.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 23:39:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hMNCMfS7;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id c69so1694434qke.5
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 23:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=adQXQewkQgVsq9f/AZnA6mBqRU92HoQVQbIugro7E+8=;
        b=hMNCMfS7PzI0GGfqJu+OwaXH6+kmUZPG1IW98DM9KczvChRs7ig+SAhiXpBu+5Mhxm
         8KTAjIMXjrEWlfhDfypRsT31FxJuXfdSkgPQvO2UgR2WKZJ7EFk5rim9MN6sDlJL+1r0
         n7xqsB4kMjRXIaQnOr4Pxh3WiHfKCiigRUf/C5v8LUpakIysyiJ6oCKMAAqPX8bkYIZv
         +P05XhPSWXaTSamcRxyEiKVDY70iVC+04XnszkU9ZcGRWhsw9ySyp28oMXradIc//Qet
         bTV8A+HjDL33tDTuA3OXoVFT/W5hY9zoGhSN9KUBBjp6N+7wQjGGLQG+zY+LUwyevXj4
         2jmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=adQXQewkQgVsq9f/AZnA6mBqRU92HoQVQbIugro7E+8=;
        b=fVH00cBaKYEez8ztxv5z/Ol4+Dkv8oiER6PmDbdRdI/yKbWuc+M7jfoS5FJh4i1/0t
         qZRKuSOnX5slKYBYIQEd44PtgRGl7ixgloeMsX+jnaU83cLIXtvDpv/raC/Et4c42MgJ
         A6gNZIGIJhSrB0/Fevc+wj0GaQlVyBxB81T9CTTY54+i5OeeF8la9E2svNkUscwP/uNS
         ymBri8H4p4D7Ohtgw1lgwvTt/vvlYmKzhUTAczyf3Rq/C9bt5y/2gcVc3vv3NnYg86q4
         XstxJ6yqQHeLRnntP7RA+TM2Q/cK7K6QS9hm8AB+AMjlH7c4fSaTo66ZHsErdERNR5rd
         CQ2Q==
X-Gm-Message-State: AHPjjUjERV7bCEr/YLqyGgULkQyIGGL93iWFjWFldc8uZNxUVi7fPhmq
	5crgFqo2VpVH1MXy0bqjX5+YrFJPoBsTW6YqCxDnOSka
X-Google-Smtp-Source: AOwi7QD4Tykbbme3MqPxsEPwJBfU5myBsnDa1AX6/QHTwB17bsJQPyL8v+eXvDd89+7AdsNim8RDQaXL3gTYj+83YAg=
X-Received: by 10.55.11.145 with SMTP id 139mr508957qkl.123.1505803193130;
 Mon, 18 Sep 2017 23:39:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Mon, 18 Sep 2017 23:39:52 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709190718100.2029@hadrien>
References: <20170918212640.inn4in2kwsn2pzvr@fireworks> <alpine.DEB.2.20.1709190718100.2029@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Tue, 19 Sep 2017 09:39:52 +0300
Message-ID: <CALta04wPg7EUimMO0SX7_diEP=m4URFs4n=UC20+8X1JDRjcqw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Check sscanf
 return value
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="001a114c24c66da43a055985202c"

--001a114c24c66da43a055985202c
Content-Type: text/plain; charset="UTF-8"

Thanks for the review! I was thinking of the basic case with only one
argument.
The sscanf function returns "the number of input items successfully matched
and assigned" [1].

I will resend the patch, checking for value 2 (on the first fix) and 3 (on
the second fix).

[1] https://linux.die.net/man/3/sscanf

Best regards,
Georgiana

On 19 September 2017 at 08:18, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 19 Sep 2017, Georgiana Chelu wrote:
>
> > Check the sscanf return value and handle it.
>
> Why do you check for a return value of 1?
>
> julia
>
>
> >
> > Issue found by checkpatch.pl.
> > WARNING: unchecked sscanf return value
> >
> > Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index 6a8f805c0b28..18aa4011a576 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -2355,7 +2355,11 @@ static int rtw_wx_read32(struct net_device *dev,
> >
> >       bytes = 0;
> >       addr = 0;
> > -     sscanf(ptmp, "%d,%x", &bytes, &addr);
> > +     ret = sscanf(ptmp, "%d,%x", &bytes, &addr);
> > +     if (ret != 1) {
> > +             ret = -EINVAL;
> > +             goto exit;
> > +     }
> >
> >       switch (bytes) {
> >               case 1:
> > @@ -2392,12 +2396,15 @@ static int rtw_wx_write32(struct net_device *dev,
> >       u32 addr;
> >       u32 data32;
> >       u32 bytes;
> > +     int ret;
> >
> >
> >       bytes = 0;
> >       addr = 0;
> >       data32 = 0;
> > -     sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
> > +     ret = sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
> > +     if (ret != 1)
> > +             return -EINVAL;
> >
> >       switch (bytes) {
> >               case 1:
> > --
> > 2.11.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20170918212640.inn4in2kwsn2pzvr%40fireworks.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114c24c66da43a055985202c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thanks for the review! I was thinking of the bas=
ic case with only one argument.<br></div>The sscanf function returns &quot;=
the number of input items successfully matched and assigned&quot; [1].</div=
><div><br></div><div>I will resend the patch, checking for value 2 (on the =
first fix) and 3 (on the second fix).</div><div><br></div><div>[1] <a href=
=3D"https://linux.die.net/man/3/sscanf">https://linux.die.net/man/3/sscanf<=
/a><br></div><div><br></div><div>Best regards,</div><div>Georgiana<br></div=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 19 Sept=
ember 2017 at 08:18, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:j=
ulia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
<br>
On Tue, 19 Sep 2017, Georgiana Chelu wrote:<br>
<br>
&gt; Check the sscanf return value and handle it.<br>
<br>
</span>Why do you check for a return value of 1?<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; Issue found by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" tar=
get=3D"_blank">checkpatch.pl</a>.<br>
&gt; WARNING: unchecked sscanf return value<br>
&gt;<br>
&gt; Signed-off-by: Georgiana Chelu &lt;<a href=3D"mailto:georgiana.chelu93=
@example.com">georgiana.chelu93@example.com</a><wbr>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/os_<wbr>dep/ioctl_linux.c | 11 +++++++=
++--<br>
&gt;=C2=A0 1 file changed, 9 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/<wbr>os_dep/ioctl_linux.c b/dri=
vers/staging/rtl8723bs/<wbr>os_dep/ioctl_linux.c<br>
&gt; index 6a8f805c0b28..18aa4011a576 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/<wbr>os_dep/ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/<wbr>os_dep/ioctl_linux.c<br>
&gt; @@ -2355,7 +2355,11 @@ static int rtw_wx_read32(struct net_device *dev=
,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bytes =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0addr =3D 0;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0sscanf(ptmp, &quot;%d,%x&quot;, &amp;bytes, &amp;=
addr);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D sscanf(ptmp, &quot;%d,%x&quot;, &amp;byte=
s, &amp;addr);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ret !=3D 1) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D -EINVAL;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (bytes) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case 1:<br>
&gt; @@ -2392,12 +2396,15 @@ static int rtw_wx_write32(struct net_device *d=
ev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 addr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 data32;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 bytes;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bytes =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0addr =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0data32 =3D 0;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0sscanf(extra, &quot;%d,%x,%x&quot;, &amp;bytes, &=
amp;addr, &amp;data32);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D sscanf(extra, &quot;%d,%x,%x&quot;, &amp;=
bytes, &amp;addr, &amp;data32);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ret !=3D 1)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (bytes) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case 1:<br>
&gt; --<br>
&gt; 2.11.0<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20170918212640.inn4in2kwsn2pzvr%40firework=
s" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>ms=
gid/outreachy-kernel/<wbr>20170918212640.<wbr>inn4in2kwsn2pzvr%40fireworks<=
/a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a114c24c66da43a055985202c--


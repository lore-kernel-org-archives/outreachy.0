X-GM-THRID: 6664414939270086656
X-Received: by 2002:a67:f70e:: with SMTP id m14mr13350002vso.25.1551723060489;
        Mon, 04 Mar 2019 10:11:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c47:: with SMTP id j68ls2829681vka.2.gmail; Mon, 04 Mar
 2019 10:10:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqy51pOLNHRVdLOWuWhIsmE1Miovn1CNloBuZ/Wsjvpa6Tm4bW7X5+UJq1xsYXmVSnUjbi7h
X-Received: by 2002:a1f:8d50:: with SMTP id p77mr13761014vkd.14.1551723059765;
        Mon, 04 Mar 2019 10:10:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551723059; cv=none;
        d=google.com; s=arc-20160816;
        b=HdlqeyllcPHUTD+ERuBdA77iwVIPNmdTlzWe0kWnmNZqmc1MPesqMnCtXJLqRPanZG
         95EjUEtVzU6v9kxD5ISPeIfqvwYCLWsMKF/TlWoGXjX7b3l49B0eP5lr4h2kD3aE4KmY
         N+CwmnaZw1D8HwoHk0EcXdLT8gKhIXwYPieerN7i0lNnitOWSsfjbvUrzxxgRxFULILF
         qk+fTAqWrks29HjyniodqWXIZSPirF6NdDylJi3DUFAW1FVYOfFPzOnhsrfwuyia6ewu
         ddfYO64i8XjSsP0yKHak7Ehpk8zPkTAKBVeDRzxIt3Mot4ZqzfyAef9bYtt9o2YdvAEQ
         l/lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E5mHPZW+GqcO4Oy6rU+z1KjVXaIGdNGCFnkRAPr3dFs=;
        b=pY5iULGNoC+i18C4kxM26jMmbBmraWIUIFnQUObbsNgQ+u6auNuzDH4R12eLHSfmIk
         NAafWV3MnuzHc63vUsIVmbndk32+t7FSwviiPfAsuP+8E4TB0+s+XxM7sacKnGaAAGQp
         U0d3NQtyhau+FQ8+qbGJQpPubSlaRmEMhUK/QDczyo0HONDci8bKdJjExcavnOGtgqht
         ZafaxuZzefkHdljg/rf9v2Gj4RkOOI0KjfN7CzKVG4DeXpo8AqMmPRsYm0b+B1OIk6bN
         /swnMvUlez8oB1JdM413xP8tNPwQ00aK1LyrdvxAPUs6hUsJpoLW78d1vFjnhp6126NQ
         yqIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CxI5Ge/L";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id s73si415622vkd.1.2019.03.04.10.10.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 10:10:59 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) client-ip=2607:f8b0:4864:20::830;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CxI5Ge/L";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x830.google.com with SMTP id d18so6109314qtg.12
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 10:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E5mHPZW+GqcO4Oy6rU+z1KjVXaIGdNGCFnkRAPr3dFs=;
        b=CxI5Ge/LC48HO6+HpQEJ5GxdnWeUXDCe+C3Syny5S1D2mb235Cfu1eIUqYlLV4CO20
         1vUZ2HF4CJz37LMhVOtzVQpxhq+BLB6aShFd2T9SFZX9NCVb8Agv3uy5F7E0h9CvN1Cr
         ipsy6N4K+pvSRZweJoDWU6PX6cF2p5SAmTmerciSDKlNLdyu8CMzRxoU6iMgHkkwUHZL
         BEtQLSAaiby7pei0ZdbhZQG6m8yIlkw7inukz58rWaEtPAnDpcxZnJNIfTzHxJIhztwu
         dRb6cbvEFfpq10Yr7cJfdryDEr1fbshyHVp93BXjsaLOB2N95xZGNIYjNxnEb0ArhNzi
         VOhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E5mHPZW+GqcO4Oy6rU+z1KjVXaIGdNGCFnkRAPr3dFs=;
        b=NI4ab5+izTLstNTrzQ2DvxCa+XHoqaanKH9Tg5326EvZdhl6Fn5hbvM2aweUckKUFm
         YgF+J+FjhDH7aZ1XcV6ZegooamapevbpRGTUCzsiYsvGBAgA6YKPWaFjHnXfTrxe8LRb
         xN/nkJRTudLN1bQP+M2Jsy+GJ70vkrk3dB+xds0qUh+k750LYoOmG2vWz3DMWEDs7Er3
         6W9oU3T1IrRBg1hM0sWG3xA8w+IaagrA2Niikr/Tzpphnz5xXJCR4UzUs+ZXEfekMKD4
         aeOSadxD4uvWv50jJQypqPLMaY2M2pKVokOLcpaCDnuaDqLZ9YvV5jni+RqHMonNUEqc
         9A/Q==
X-Gm-Message-State: APjAAAUNNMB/59luXcfNZc6MpsqLQ46YUC88GKZpl6JZdCAg92B4Delz
	nJcPpT8aajCKQpSrWEE3ZHG0FSOTM6jF6sV4ly0=
X-Received: by 2002:ac8:2273:: with SMTP id p48mr2443236qtp.7.1551723059339;
 Mon, 04 Mar 2019 10:10:59 -0800 (PST)
MIME-Version: 1.0
References: <20190304111754.GA3926@bhagyashri-Lenovo-G570> <alpine.DEB.2.20.1903041248180.4370@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903041248180.4370@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Mon, 4 Mar 2019 23:40:22 +0530
Message-ID: <CAOMPgjjjP=EWrhWqBrqMb3Rt25+XNc45wvCQ=jnXPGJPvLsu8A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/1] staging: fbtft: line over 80 characters.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000bde76f058348ad41"

--000000000000bde76f058348ad41
Content-Type: text/plain; charset="UTF-8"

If i made change according to suggestion, It will give same warning `line
over 80 character`. As per my knowledge  to avoid this we need to separate
cast and casted thing.

Thanks
Bhagyashri

On Mon, Mar 4, 2019 at 5:20 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

> >  #define fbtft_init_dbg(dev, format, arg...)                  \
> >  do {                                                         \
> > -     if (unlikely((dev)->platform_data &&                 \
> > -         (((struct fbtft_platform_data
> *)(dev)->platform_data)->display.debug & DEBUG_DRIVER_INIT_FUNCTIONS))) \
> > -             dev_info(dev, format, ##arg);                \
> > +     if (unlikely((dev)->platform_data &&                 \
> > +         (((struct fbtft_platform_data *)                 \
> > +           (dev)->platform_data)->display.debug           \
> > +          & DEBUG_DRIVER_INIT_FUNCTIONS)))                \
> > +             dev_info(dev, format, ##arg);
> >  } while (0)
>
> This one still doesn't look good, because you have separated the cast and
> the casted thing.  One wants to be able to see easily what is going on.
> Given that there are so many parentheses, it would be better to keep the
> cast and the casted thing on the same line, to see what is what.
>
> julia
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903041248180.4370%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000bde76f058348ad41
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If i made change according to suggestion, It will giv=
e same warning `line over 80 character`. As per my knowledge=C2=A0 to avoid=
 this we need to separate cast and casted thing.</div><div><br></div><div>T=
hanks</div><div>Bhagyashri<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 4, 2019 at 5:20 PM Julia La=
wall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt;=
=C2=A0 #define fbtft_init_dbg(dev, format, arg...)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;=C2=A0 do {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (unlikely((dev)-&gt;platform_data &amp;&amp;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(((struct fbtft_platform_data *)(de=
v)-&gt;platform_data)-&gt;display.debug &amp; DEBUG_DRIVER_INIT_FUNCTIONS))=
) \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(dev, format,=
 ##arg);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (unlikely((dev)-&gt;platform_data &amp;&amp;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(((struct fbtft_platform_data *)=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(dev)-&gt;platform_data)-&gt=
;display.debug=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp; DEBUG_DRIVER_INIT_FUNCTIONS)=
))=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(dev, format,=
 ##arg);<br>
&gt;=C2=A0 } while (0)<br>
<br>
This one still doesn&#39;t look good, because you have separated the cast a=
nd<br>
the casted thing.=C2=A0 One wants to be able to see easily what is going on=
.<br>
Given that there are so many parentheses, it would be better to keep the<br=
>
cast and the casted thing on the same line, to see what is what.<br>
<br>
julia<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903041248180.4370%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.20.1903041248180.4370%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div>

--000000000000bde76f058348ad41--


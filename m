X-GM-THRID: 6249638056866873344
X-Received: by 10.66.217.229 with SMTP id pb5mr37102881pac.39.1455113647892;
        Wed, 10 Feb 2016 06:14:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.244 with SMTP id p107ls377944qgd.84.gmail; Wed, 10 Feb
 2016 06:14:07 -0800 (PST)
X-Received: by 10.129.85.68 with SMTP id j65mr2200534ywb.57.1455113647086;
        Wed, 10 Feb 2016 06:14:07 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-ig0-x242.google.com (mail-ig0-x242.google.com. [2607:f8b0:4001:c05::242])
        by gmr-mx.google.com with ESMTPS id iq8si234489igb.0.2016.02.10.06.14.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 06:14:07 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c05::242 as permitted sender) client-ip=2607:f8b0:4001:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c05::242 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x242.google.com with SMTP id ik10so1693808igb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 06:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=W7XDr2KrAKsI8fXr4p9Szbt/VJDoZxIFnDh44JTBxfY=;
        b=QISJmVHWzmUwQnQfmUu9AFMRq97Yq+NanL+sbq6BOhPgn3UJbyiMb8gpMgFRdhczZn
         qOIxaxtUAfk+HqixB6lYDgGhGSmG5RmIymjNSSTldE5E24/4l2fVLrEyBD6lI7vFiyAj
         EnqCzPcVq+k/YtQFUZ5sxNLuo6rQdZQb23XvKOnVGlHjce7KwhErTOjcxULs4wpJgUNk
         TEsWLlPostK3om39d6ecD7mF9u2ZgSLYsBO3VUqznpzQ/CfU6uoR1lUFQMzLWkwCRlAU
         YvadgsKeLc0FeagRYSrK8K+DRN3D0XOE7NNQ4AHPoTmpKcQ8lfSGT/4Ypn97VvWQhOhC
         upRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=W7XDr2KrAKsI8fXr4p9Szbt/VJDoZxIFnDh44JTBxfY=;
        b=GOwrpi1QWGWmkVfer3JQU0RG8rL6aA6NWXSu9kDtEDMTIx0V+Sl9L1r435JMze+RqT
         vDwVIse239gcSQKg0OOrJyYkPSbrYZYURjfE/vBaRygD+NFeITo8Pmjkc5CUGQbV55Aq
         SYqi8SWr5m49WGeEId4SycUb1tuBEZqeSzs535ENs/3PEm7l4EdCkIp+u+gePHqezruY
         6GSBVuXIwnvGaKMRaeJLHuOCftcIuz8KnlvsPMQLiZZgyGRCKeTwJjJzt4efhbgfKbdm
         qPGpKjlXfFZxayY8SE7FnARfKPY7D+tFtQp4HrbFR9u0SFVf0yWSf54ie2HsXer6SHB1
         6mYA==
X-Gm-Message-State: AG10YOTBQJyIlZdUAGuveiiZhhmE/yCSxERyEO0q3IUYJSNZzVK1jJRYSx5jDmHVq3nB6y1H/SWFWnFOzKofyQ==
X-Received: by 10.50.72.48 with SMTP id a16mr9615575igv.73.1455113646898; Wed,
 10 Feb 2016 06:14:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.134.204 with HTTP; Wed, 10 Feb 2016 06:13:27 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602101402170.3493@hadrien>
References: <1455107239-16386-1-git-send-email-rakhish1994@gmail.com> <alpine.DEB.2.10.1602101402170.3493@hadrien>
From: RAKHI SHARMA <rakhish1994@gmail.com>
Date: Wed, 10 Feb 2016 19:43:27 +0530
Message-ID: <CAMnyiXu=swBQdGVc+dQ6sCuZ37d7XWi6bh+8Q_cyfRug6VpJkw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] drivers: staging: rtl8712: Use
 ether_addr_copy() over memcpy()
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=047d7bdc15d4080315052b6b0c3c

--047d7bdc15d4080315052b6b0c3c
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 10, 2016 at 6:32 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 10 Feb 2016, Rakhi Sharma wrote:
>
> > Waring is removed by using ether_addr_copy() over memcpy().
> > WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are
> > __aligned(2)
>
> You need to show that the addresses concerned actually are aligned.
>
> julia
>
> Hi, Will you please give me a little hint how I do this?


> > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl871x_recv.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_recv.c
> b/drivers/staging/rtl8712/rtl871x_recv.c
> > index 4ff5301..2d5231a 100644
> > --- a/drivers/staging/rtl8712/rtl871x_recv.c
> > +++ b/drivers/staging/rtl8712/rtl871x_recv.c
> > @@ -358,11 +358,11 @@ static sint sta2sta_data_frame(struct _adapter
> *adapter,
> >                       sta_addr = pattrib->src;
> >               }
> >       } else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
> > -             memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
> > -             memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
> > -             memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
> > -             memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
> > -             memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
> > +             ether_addr_copy(pattrib->dst, GetAddr1Ptr(ptr));
> > +             ether_addr_copy(pattrib->src, GetAddr2Ptr(ptr));
> > +             ether_addr_copy(pattrib->bssid, GetAddr3Ptr(ptr));
> > +             ether_addr_copy(pattrib->ra, pattrib->dst);
> > +             ether_addr_copy(pattrib->ta, pattrib->src);
> >               sta_addr = mybssid;
> >       } else {
> >               ret  = _FAIL;
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1455107239-16386-1-git-send-email-rakhish1994%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--047d7bdc15d4080315052b6b0c3c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Feb 10, 2016 at 6:32 PM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><=
br>
<br>
On Wed, 10 Feb 2016, Rakhi Sharma wrote:<br>
<br>
&gt; Waring is removed by using ether_addr_copy() over memcpy().<br>
&gt; WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addres=
ses are<br>
&gt; __aligned(2)<br>
<br>
</span>You need to show that the addresses concerned actually are aligned.<=
br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div>H=
i, Will you please give me a little hint how I do this?<br>=C2=A0<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">
&gt; Signed-off-by: Rakhi Sharma &lt;<a href=3D"mailto:rakhish1994@gmail.co=
m">rakhish1994@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_recv.c | 10 +++++-----<br>
&gt;=C2=A0 1 file changed, 5 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/=
rtl8712/rtl871x_recv.c<br>
&gt; index 4ff5301..2d5231a 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_recv.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_recv.c<br>
&gt; @@ -358,11 +358,11 @@ static sint sta2sta_data_frame(struct _adapter *=
adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0sta_addr =3D pattrib-&gt;src;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (check_fwstate(pmlmepriv, WIFI_MP_=
STATE)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(pattrib-&gt;ds=
t, GetAddr1Ptr(ptr), ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(pattrib-&gt;sr=
c, GetAddr2Ptr(ptr), ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(pattrib-&gt;bs=
sid, GetAddr3Ptr(ptr), ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(pattrib-&gt;ra=
, pattrib-&gt;dst, ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(pattrib-&gt;ta=
, pattrib-&gt;src, ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(pattr=
ib-&gt;dst, GetAddr1Ptr(ptr));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(pattr=
ib-&gt;src, GetAddr2Ptr(ptr));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(pattr=
ib-&gt;bssid, GetAddr3Ptr(ptr));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(pattr=
ib-&gt;ra, pattrib-&gt;dst);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(pattr=
ib-&gt;ta, pattrib-&gt;src);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sta_addr =3D myb=
ssid;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret=C2=A0 =3D _F=
AIL;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1455107239-16386-1-git-send-email-rakhish1=
994%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google=
.com/d/msgid/outreachy-kernel/1455107239-16386-1-git-send-email-rakhish1994=
%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--047d7bdc15d4080315052b6b0c3c--


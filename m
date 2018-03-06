X-GM-THRID: 6529221119652659200
X-Received: by 10.46.87.24 with SMTP id l24mr1197063ljb.7.1520338943658;
        Tue, 06 Mar 2018 04:22:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.85 with SMTP id x21ls1944988ljd.2.gmail; Tue, 06 Mar
 2018 04:22:22 -0800 (PST)
X-Google-Smtp-Source: AG47ELsPlSBdmVCr0zX7XGXjgW+GiX3cS/D/5Zs8mOAmXtVMVqqtf5cG1SiWyU4PHPLa/e6YsLdL
X-Received: by 10.46.43.18 with SMTP id q18mr1183666lje.27.1520338942707;
        Tue, 06 Mar 2018 04:22:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520338942; cv=none;
        d=google.com; s=arc-20160816;
        b=z/gbUpytgjG5VAllonTdh8aCoXWKFg9iqt8eZVTR3oujjeYQBc4GhrY92RLhdaDQQk
         Ov4daheywv5h4U8TezqgVvFpxy8C0k/bWNx26h772iAM1+AHbObwq/icCHvNm3Neyznw
         gDX/nUbylPv/3MTB9GANP7yCLZPCCuZu2v+qiNz/oZYeicxJtajvG9nKpUCj1idoUU1d
         yYHABdH41xuxDCWiP8OVFswTI+ie45uelvsFCct5yc/tEPEiC1Xw46Jii4eZ34L1v3lc
         cm6fJnceg0vuH4SggchZtjf8pLg6B0uHrzwtMVjN9mcOgjE0HBQUK97byFLqe+EbnzvQ
         e85w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=RmsYnOStYfW4FlRkJSVgAGhzzXHgdb3WmTwqm8ZbMVw=;
        b=dt/7TC62XUf1PT+fRIKqPGnGlRciWSLe6GYCIiQdNGzMGw3NF9TDN8Z00uRv51OYlj
         pGmWXrz9jadJhI9kxTKBG0ZyKAEaGF17o/SlUtEfl7Nv8aFEvpmLhpXW3oePAr04Xag5
         dTJsXA3DdzMMgW9rCcIpx8tlXjzBOd0oi9sJHp354dgf2eydmrBWBynjAQ9D9tU6b6TS
         TU9lsKWEIqGkgBCATIVA2EgZNAhtFgXm93VLWfzFNaQ+0UKv63D0nvVTkrtb2ewX0Bac
         R7J0lVEWljt4vUbzO67psYWgE7P7iZNgqfTv8P5zRZ7lrKQ9M6Y2KfxQogYSTctF5dMd
         mZwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GV2Z479L;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x236.google.com (mail-lf0-x236.google.com. [2a00:1450:4010:c07::236])
        by gmr-mx.google.com with ESMTPS id w7si714018ljw.4.2018.03.06.04.22.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 04:22:22 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) client-ip=2a00:1450:4010:c07::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GV2Z479L;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x236.google.com with SMTP id y19so28188521lfd.4
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Mar 2018 04:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=RmsYnOStYfW4FlRkJSVgAGhzzXHgdb3WmTwqm8ZbMVw=;
        b=GV2Z479LmAjPvBGLMzIQokY6xLa4dl1b1r5xmGHfU/zaLuFiNLfEilJOi1loc7+6NC
         R6TJqNWHZH3ZHwfdQhSYwcgXyNSrhQgc9RCAANUr8t8LIVcL7Rftrc5+S1i2NQhPSfry
         cJv7Y+X3XocUHtNoip3QE2S9PoE9KStQh/eQ8l7rusmpytKHmPQQcXBxnrp7+kbum8SN
         bEn38oaQ2wCNvGLD+ffcC5dZbSFjwahnH5pXqCG3eibM4j/B4nJcZZwlo85lXzASk2fi
         M/JeRrMnyW1B2lORz4gUbb8FxnoLQt6o175vKEEryra+wVQaeULiVef3TDKeHK4eH2HK
         kKrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=RmsYnOStYfW4FlRkJSVgAGhzzXHgdb3WmTwqm8ZbMVw=;
        b=tqzmjTkLopWdoITGkt5DXVNMaWgpaqTq/Jxi9rEw1Hn8Ad9meWQdj9wSQJxvCmSr5N
         3PRGh9GaW/c0B9O48z40QUbtDGfvUNvjPJ+s7J4eo3GGKuBJ2hYWkQwKpVX77whTfhP9
         YiLOhvesLy4OaSxETGrz2MbyGkfSjSLuzrgHN/4IWbwoB9ClsQGa4zyz2tPwupDgOGJG
         /Ttzk9GXwIBVt1UFPvu4j2cl/DqTQmFiZvX9xdOTf7pWmMODRLOWjlrW2BXTNkuHTusC
         RUyuAqQnF8Yc7LHuiTf6p7VoaFbaSkP0ZTEFeoITfBRKgqq1Gn0WcZhvxROdDXsT6bxM
         rCcg==
X-Gm-Message-State: AElRT7H2G5K/H3+p4R/Z6CLf7C7xqRRHwm+tU0KNBorH7+l8lP+TTofi
	xYr7R6QhFY7xmFTgsyomhWoeAeGpsS0TH7O0csg=
X-Received: by 10.25.35.199 with SMTP id j190mr13435765lfj.23.1520338942364;
 Tue, 06 Mar 2018 04:22:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.26.203 with HTTP; Tue, 6 Mar 2018 04:22:21 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1803052203001.2763@hadrien>
References: <20180304223205.GA31416@seema-Inspiron-15-3567>
 <20180305100345.v6ajs7vdgzmwu5x4@mwanda> <CA+XqjF9tBqpgp7ymQOAWeJHm1hPd6w01u3ZVS8ozq4JuoBNSEg@mail.gmail.com>
 <alpine.DEB.2.20.1803052203001.2763@hadrien>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Tue, 6 Mar 2018 17:52:21 +0530
Message-ID: <CA+XqjF-auo3TC2xttgngGJ=DPXLviSOL1u-tm9YQ-KTBYBXOhQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: irda: Replace printk()
 with appropriate net_*macro_ratelimited()
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Dan Carpenter <dan.carpenter@oracle.com>, Greg KH <gregkh@linuxfoundation.org>, 
	driverdevel <devel@driverdev.osuosl.org>, outreachy-kernel@googlegroups.com, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="001a113a80da990e580566bd7e7d"

--001a113a80da990e580566bd7e7d
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 6, 2018 at 2:33 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 5 Mar 2018, Arushi Singhal wrote:
>
> >
> >
> > On Mon, Mar 5, 2018 at 3:33 PM, Dan Carpenter <dan.carpenter@oracle.com>
> wrote:
> >       On Mon, Mar 05, 2018 at 04:02:06AM +0530, Arushi Singhal wrote:
> >       > Replace printk having a log level with the appropriate
> >       > net_*macro_ratelimited.
> >       > It's better to use actual device name as a prefix in error
> messages.
> >       > Indentation is also changed, to fix the  checkpatch issue if
> line is not
> >       > exceding 80 characters.
> >       >
> >       > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> >       > ---
> >       >  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      | 22
> +++++++++++-----------
> >       >  1 file changed, 11 insertions(+), 11 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> >       > index e6648f7..200fe5f 100644
> >       > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> >       > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> >       > @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
> >       >
> >       >       priv->tfm = (void *)crypto_alloc_cipher("aes", 0,
> CRYPTO_ALG_ASYNC);
> >       >       if (IS_ERR(priv->tfm)) {
> >       > -             printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not
> allocate crypto API aes\n");
> >       > +             net_dbg_ratelimited("ieee80211_crypt_ccmp: could
> not allocate crypto API aes\n");
> >
> >
> >       This should probably just be deleted.
> >
> > Hello Dan
> > Why we should make this change?
> > According to me it's use here to print debug message.
> > Wanted to know more about your thought on this.
> >
> >       >               priv->tfm = NULL;
> >       >               goto fail;
> >       >       }
> >       > @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct
> sk_buff *skb, int hdr_len, void *priv)
> >       >       keyidx = pos[3];
> >       >       if (!(keyidx & (1 << 5))) {
> >       >               if (net_ratelimit()) {
> >       > -                     printk(KERN_DEBUG "CCMP: received packet
> without ExtIV flag from %pM\n",
> >       > -                             hdr->addr2);
> >       > +                     net_dbg_ratelimited("CCMP: received packet
> without ExtIV flag from %pM\n",
> >       > +                                         hdr->addr2);
> >       >               }
> >
> >       The "if (net_ratelimit()) " already means the message is
> ratelimited so
> >       it's net_dbg() ok?  I think so, but I've never looked at this
> before.
> >
> >
> > net_dbg() is an implicit declaration of a function. So we can't do this
> change.
>
> Perhaps you can add the header file that declares net_dbg.
>
>
**Resending it again**

There is no such header file which declares net_dbg.
We can use dev_dbg() for all struct device object.
We can use netdev_dbg() for all struct netdevice object.
For net subsystem when there is no struct device object we can go with
net_dbg_ratelimited (preferred) or pr_debug.

I have understood this from my readings. If I am wrong somewhere
please correct me.

Thanks
Arushi


> julia

--001a113a80da990e580566bd7e7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Mar 6, 2018 at 2:33 AM, Julia Lawall <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZ=
b"><div class=3D"h5"><br>
<br>
On Mon, 5 Mar 2018, Arushi Singhal wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Mar 5, 2018 at 3:33 PM, Dan Carpenter &lt;<a href=3D"mailto:da=
n.carpenter@oracle.com">dan.carpenter@oracle.com</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Mon, Mar 05, 2018 at 04:02:06AM +0530, Ar=
ushi Singhal wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Replace printk having a log level with =
the appropriate<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; net_*macro_ratelimited.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; It&#39;s better to use actual device na=
me as a prefix in error messages.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Indentation is also changed, to fix the=
=C2=A0 checkpatch issue if line is not<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; exceding 80 characters.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Arushi Singhal &lt;<a hr=
ef=3D"mailto:arushisinghal19971997@gmail.com">arushisinghal19971997@gmail.<=
wbr>com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 .../rtl8192u/ieee80211/<wbr>ieee8=
0211_crypt_ccmp.c=C2=A0 =C2=A0 =C2=A0 | 22 +++++++++++-----------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 11 insertions(+),=
 11 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/rtl8192u/<=
wbr>ieee80211/ieee80211_crypt_<wbr>ccmp.c b/drivers/staging/rtl8192u/<wbr>i=
eee80211/ieee80211_crypt_<wbr>ccmp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index e6648f7..200fe5f 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/rtl8192u/<wbr>iee=
e80211/ieee80211_crypt_<wbr>ccmp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/rtl8192u/<wbr>iee=
e80211/ieee80211_crypt_<wbr>ccmp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -73,7 +73,7 @@ static void *ieee8021=
1_ccmp_init(int key_idx)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;tfm =
=3D (void *)crypto_alloc_cipher(&quot;aes&quot;, 0, CRYPTO_ALG_ASYNC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(pr=
iv-&gt;tfm)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0printk(KERN_DEBUG &quot;ieee80211_crypt_ccmp: could not allocate =
crypto API aes\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0net_dbg_ratelimited(&quot;<wbr>ieee80211_crypt_ccmp: could not al=
locate crypto API aes\n&quot;);<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0This should probably just be deleted.<br>
&gt;<br>
&gt; Hello Dan<br>
&gt; Why we should make this change?<br>
&gt; According to me it&#39;s use here to print debug message.<br>
&gt; Wanted to know more about your thought on this.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0priv-&gt;tfm =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0goto fail;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -276,22 +276,22 @@ static int ieee80=
211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0keyidx =3D po=
s[3];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(keyidx =
&amp; (1 &lt;&lt; 5))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (net_ratelimit()) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBUG &quot;CCMP: receive=
d packet without ExtIV flag from %pM\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hdr-&gt;a=
ddr2);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net_dbg_ratelimited(&quot;CCMP: recei=
ved packet without ExtIV flag from %pM\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hdr-&gt;addr2);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0The &quot;if (net_ratelimit()) &quot; alread=
y means the message is ratelimited so<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it&#39;s net_dbg() ok?=C2=A0 I think so, but=
 I&#39;ve never looked at this before.<br>
&gt;<br>
&gt; =C2=A0<br>
&gt; net_dbg() is an implicit declaration of a function. So we can&#39;t do=
 this change.<br>
<br>
</div></div>Perhaps you can add the header file that declares net_dbg.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div>=C2=A0</div><div>**Resending it again**<br></div><div>
<br>
There is no such header file which declares net_dbg.<br>
We can use dev_dbg() for all struct device object.<br>
We can use netdev_dbg() for all struct netdevice object.<br>
For net subsystem when there is no struct device object we can go with<br>
net_dbg_ratelimited (preferred) or pr_debug.<br>
<br>
I have understood this from my readings. If I am wrong somewhere<br>
please correct me.<br>
<br>
Thanks<br>
Arushi</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"=
HOEnZb"><font color=3D"#888888">
julia</font></span></blockquote></div><br></div></div>

--001a113a80da990e580566bd7e7d--


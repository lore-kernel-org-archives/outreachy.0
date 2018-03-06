X-GM-THRID: 6529360493201588224
X-Received: by 10.28.105.80 with SMTP id e77mr1470899wmc.26.1520355987092;
        Tue, 06 Mar 2018 09:06:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.116.3 with SMTP id p3ls2244716wmc.9.canary-gmail; Tue, 06
 Mar 2018 09:06:25 -0800 (PST)
X-Google-Smtp-Source: AG47ELviZdqJOw/8wpFPsSN60uD1y9L8S7BK3x2L5lp1P9+RFQ4op5JUHSdSxXOs8ij7F+WJaFXO
X-Received: by 10.28.178.80 with SMTP id b77mr1496998wmf.5.1520355985543;
        Tue, 06 Mar 2018 09:06:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520355985; cv=none;
        d=google.com; s=arc-20160816;
        b=yNxrqVFYLLYpGNrs3eKh/PuLnxg20zTZEgI8JJ2MXYQxNOcyQx7QdJDLQCU3GJnBrZ
         RG91cX8FFNZNefsmR0pYCLveuOyaSzzo4PnqFLd6F4tdPzaYXISLoaPsXeJG5yJ86ruR
         o8AUNK82zy/AVlzo/aqr94Es1+WHaNX37YA2Y3TCNbJp0eRKWfWCYD/yTob92179Fkn4
         3hUDWrZlqoFpYDw8msAguLE7jBteF5EbHJ3BCpFEGmx49qH4FvcPJ7lk/9XF+5bcRmas
         tnioXTMorX/XcaOegiKNhcf90C7CcNEmifmzrnKWmFpYGu9r1HUQg8V05gni7KzQau9m
         q+Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=bBIWYnCorbk/hcweuvWVHnZk/kNRpRiq/tSvCSOQho0=;
        b=w1JTwcbm791/lLc3ftAmYnHJcfSsl5/2viU6ic482zmJyCKpV//HUjTaDTwtWyemTA
         skOT34cgMR/G/SyP8zNZ++oX8tOHH3QbE2mxGVkG+Go2Qa4GQ6aDHTG6+xBE3gnYcbhz
         ZrF81XbXma1VAoSkg+pgJtn6mQyPNY2/GXPLARjDfDIZC7/y9+EHbSAacHPjXDSZe6do
         jb/DT4ROvj2D13vF8BsjEiwefd3y0APJgioeU8OQdFhLXqC0g8hw5sy+yprNzQ/Okp+Y
         dNBcRwfVZWxOQaU25slNicJISMzrrPkBCUxjh59qRRE46whICKf59AKUMXToXrM8vWMF
         vpxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b+DZhLRc;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x22f.google.com (mail-lf0-x22f.google.com. [2a00:1450:4010:c07::22f])
        by gmr-mx.google.com with ESMTPS id k16si284943wrf.2.2018.03.06.09.06.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 09:06:25 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) client-ip=2a00:1450:4010:c07::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b+DZhLRc;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22f.google.com with SMTP id y19so29579298lfd.4
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Mar 2018 09:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bBIWYnCorbk/hcweuvWVHnZk/kNRpRiq/tSvCSOQho0=;
        b=b+DZhLRcanx1zCVv8tA6yZec3J8zq4VD+dahBZYrx5NceOZm+eIlyXdWkdbunAn6xv
         b6sCGfnY+AyUbwzfnxb5+Ez5Ba8F+aKVyiX0CxG0AltnvOFivlbKrUSshS2i7Qoq9OPq
         nqEmWghm4bn8yT7b6+orxVaIsCJsTAaE3VRAZ3RUbDmpmhYkaBOHQ2FrFxJmD38uKzC9
         oOz19fr2wKJqawTrJdjaxiF//tRwL7hfjfOVqWwO+7uIufb2McNBjiNq6KWNZY9WEw7B
         nNaWEieMV0d+SIFto9lpSHs5LSo3uOfiqG/iLFsEwJ+DC3ttZ1JOV7MulyZXRisVvEB+
         JKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bBIWYnCorbk/hcweuvWVHnZk/kNRpRiq/tSvCSOQho0=;
        b=FW9Hyjyz+f9Pig5LWQGA3XrFBAeyzv3K3l1xqRbe1Z6HknI2V6HkWFuJHGUqQsPWsv
         x9WrTvigTE5in0UZYHo2tOkUGufznUe4FmAP/7pBA1poFeC2ytyBzEdKh2IjNAhM7HMi
         A3bKe/RTLPqgAmwuSQl/nkcUhHdfvSPr0NnHtol35woE2EgDX3f5008YFglDSuRvXkgq
         yW2l1tvyksrEBIeroDJeD8uSGLzXrh3UVABQe5IoxFU4/2/HkpZhaNRYbmAHSXBOPZH8
         1AZTLAqInkv8XVSX0i2DcepdZBK1OF8aRX14JKiLuBDNVaZdvp6c2dAA4xjgoVcMHCas
         QRIg==
X-Gm-Message-State: AElRT7EMNyGohF9rSdBNJZGjaE/2iN7fabCy+TgWavllZ2S8MvJhXHAv
	xWyqhvmd+Xj+AJ+2dWKHJBq5zyCOMXnuAyxmUA7D+Q==
X-Received: by 10.46.88.27 with SMTP id m27mr13083979ljb.132.1520355675215;
 Tue, 06 Mar 2018 09:01:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.26.203 with HTTP; Tue, 6 Mar 2018 09:01:14 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1803050835230.2306@hadrien>
References: <20180305073256.GA4347@seema-Inspiron-15-3567> <alpine.DEB.2.20.1803050835230.2306@hadrien>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Tue, 6 Mar 2018 22:31:14 +0530
Message-ID: <CA+XqjF8PSF0rP+bOAuUSM8xadHPzDjhZcKE=TauJgUyMdeNgsg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Replace printk()
 with appropriate net_*macro_ratelimited()
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, driverdevel <devel@driverdev.osuosl.org>, 
	LKML <linux-kernel@vger.kernel.org>, Larry.Finger@lwfinger.net, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="f403043871c4f41c4e0566c163c7"

--f403043871c4f41c4e0566c163c7
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 5, 2018 at 1:07 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 5 Mar 2018, Arushi Singhal wrote:
>
> > Replace printk having a log level with the appropriate
> > net_*macro_ratelimited.
> > It's better to use actual device name as a prefix in error messages.
>
> I asked several questions about the above two lines, which as far as I can
> see haven't been answered. Please excuse me if I missed the answers, but I
> would still like to know what they are.
>

Hi Julia
Sorry, I missed your above two question on my last patch and only saw the
suggestions :(.

-Why did I choose this function?

Here we are using printk() which is the raw way to print something and it
is always preferred to use dev_*macro() and netdev_*macro() because of the
benefits they provide like dynamic debugging interface.

And as we are using network subsystem so, netdev_*macro() or
net_*ratelimited() can be used to standardized the output within the
network subsystem.

>

>
> Namely, why did you choose to change to rate limited output, and what does
> the "device name as a prefix" comment mean?


Yes your point is correct, as before function used is printk(), so changing
it to ratelimit is not a good idea. So here I should have preferred
changing it to netdev_*macro().

As every kernel subsystem has its own printk format like net_* for
network subsystem. And it is preferred to use them to standardize the
format of the output within the subsystem.

Best
Arushi


> julia
>
> > Indentation is also changed, to fix the  checkpatch issue if line is not
> > exceding 80 characters.
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> > changes in v2
> > *change the subject line, in v1 driver name was wrong.
> >
> >  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      | 22
> +++++++++++-----------
> >  1 file changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> > index e6648f7..200fe5f 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> > @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
> >
> >       priv->tfm = (void *)crypto_alloc_cipher("aes", 0,
> CRYPTO_ALG_ASYNC);
> >       if (IS_ERR(priv->tfm)) {
> > -             printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not
> allocate crypto API aes\n");
> > +             net_dbg_ratelimited("ieee80211_crypt_ccmp: could not
> allocate crypto API aes\n");
> >               priv->tfm = NULL;
> >               goto fail;
> >       }
> > @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff
> *skb, int hdr_len, void *priv)
> >       keyidx = pos[3];
> >       if (!(keyidx & (1 << 5))) {
> >               if (net_ratelimit()) {
> > -                     printk(KERN_DEBUG "CCMP: received packet without
> ExtIV flag from %pM\n",
> > -                             hdr->addr2);
> > +                     net_dbg_ratelimited("CCMP: received packet without
> ExtIV flag from %pM\n",
> > +                                         hdr->addr2);
> >               }
> >               key->dot11RSNAStatsCCMPFormatErrors++;
> >               return -2;
> >       }
> >       keyidx >>= 6;
> >       if (key->key_idx != keyidx) {
> > -             printk(KERN_DEBUG "CCMP: RX tkey->key_idx=%d frame
> keyidx=%d priv=%p\n",
> > -                     key->key_idx, keyidx, priv);
> > +             net_dbg_ratelimited("CCMP: RX tkey->key_idx=%d frame
> keyidx=%d priv=%p\n",
> > +                                 key->key_idx, keyidx, priv);
> >               return -6;
> >       }
> >       if (!key->key_set) {
> >               if (net_ratelimit()) {
> > -                     printk(KERN_DEBUG "CCMP: received packet from %pM
> with keyid=%d that does not have a configured key\n",
> > -                             hdr->addr2, keyidx);
> > +                     net_dbg_ratelimited("CCMP: received packet from
> %pM with keyid=%d that does not have a configured key\n",
> > +                                         hdr->addr2, keyidx);
> >               }
> >               return -3;
> >       }
> > @@ -306,8 +306,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff
> *skb, int hdr_len, void *priv)
> >
> >       if (memcmp(pn, key->rx_pn, CCMP_PN_LEN) <= 0) {
> >               if (net_ratelimit()) {
> > -                     printk(KERN_DEBUG "CCMP: replay detected: STA=%pM
> previous PN %pm received PN %pm\n",
> > -                            hdr->addr2, key->rx_pn, pn);
> > +                     net_dbg_ratelimited("CCMP: replay detected:
> STA=%pM previous PN %pm received PN %pm\n",
> > +                                         hdr->addr2, key->rx_pn, pn);
> >               }
> >               key->dot11RSNAStatsCCMPReplays++;
> >               return -4;
> > @@ -341,8 +341,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff
> *skb, int hdr_len, void *priv)
> >
> >               if (memcmp(mic, a, CCMP_MIC_LEN) != 0) {
> >                       if (net_ratelimit()) {
> > -                             printk(KERN_DEBUG "CCMP: decrypt failed:
> STA=%pM\n",
> > -                                     hdr->addr2);
> > +                             net_dbg_ratelimited("CCMP: decrypt failed:
> STA=%pM\n",
> > +                                                 hdr->addr2);
> >                       }
> >                       key->dot11RSNAStatsCCMPDecryptErrors++;
> >                       return -5;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms
> gid/outreachy-kernel/20180305073256.GA4347%40seema-Inspiron-15-3567.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--f403043871c4f41c4e0566c163c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Mar 5, 2018 at 1:07 PM, Julia Lawall <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span><br>
<br>
On Mon, 5 Mar 2018, Arushi Singhal wrote:<br>
<br>
&gt; Replace printk having a log level with the appropriate<br>
&gt; net_*macro_ratelimited.<br>
&gt; It&#39;s better to use actual device name as a prefix in error message=
s.<br>
<br>
</span>I asked several questions about the above two lines, which as far as=
 I can<br>
see haven&#39;t been answered. Please excuse me if I missed the answers, bu=
t I<br>
would still like to know what they are.<br></blockquote><div><div><span cla=
ss=3D"m_7511677065936840292m_5518289589775184047m_4523365725537592940m_-666=
7295385018983546m_-6483622631609013727m_-4474642504418725956gmail-gr_ m_751=
1677065936840292m_5518289589775184047m_4523365725537592940m_-66672953850189=
83546m_-6483622631609013727m_-4474642504418725956gmail-gr_7 m_7511677065936=
840292m_5518289589775184047m_4523365725537592940m_-6667295385018983546m_-64=
83622631609013727m_-4474642504418725956gmail-gr-alert m_7511677065936840292=
m_5518289589775184047m_4523365725537592940m_-6667295385018983546m_-64836226=
31609013727m_-4474642504418725956gmail-gr_gramm m_7511677065936840292m_5518=
289589775184047m_4523365725537592940m_-6667295385018983546m_-64836226316090=
13727m_-4474642504418725956gmail-gr_inline_cards m_7511677065936840292m_551=
8289589775184047m_4523365725537592940m_-6667295385018983546m_-6483622631609=
013727m_-4474642504418725956gmail-gr_disable_anim_appear m_7511677065936840=
292m_5518289589775184047m_4523365725537592940m_-6667295385018983546m_-64836=
22631609013727m_-4474642504418725956gmail-Style m_7511677065936840292m_5518=
289589775184047m_4523365725537592940m_-6667295385018983546m_-64836226316090=
13727m_-4474642504418725956gmail-replaceWithoutSep" id=3D"m_751167706593684=
0292m_5518289589775184047m_4523365725537592940m_-6667295385018983546m_-6483=
622631609013727m_-4474642504418725956gmail-7"><br><font size=3D"2">Hi</font=
></span><font size=3D"2"> Julia<br>Sorry, I missed your above two question =
on my last patch and only saw the suggestions :(.<br><br>-Why did I choose =
this function?<br></font></div><div><font size=3D"2"><br></font></div><div>=
<font size=3D"2">Here we are using printk() <code></code>which is the raw w=
ay to print something and it is always preferred to use dev_*macro() and ne=
tdev_*macro() because of the benefits they provide like  dynamic debugging =
interface.</font></div><div><font size=3D"2"><br></font></div><div><font si=
ze=3D"2">And as we are using network subsystem so, netdev_*macro() or net_*=
ratelimited() can be used to standardized the output within the network sub=
system.</font> <br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Namely, why did you choose to change to rate limited output, and what does<=
br>
the &quot;device name as a prefix&quot; comment mean?<code></code></blockqu=
ote><div>=C2=A0<code><br><span style=3D"font-family:arial,helvetica,sans-se=
rif"><font size=3D"2">Yes your point is correct, as before function used is=
 printk(), so changing it to ratelimit is not a good idea. So here I should=
 have preferred changing it to netdev_*macro().</font></span></code></div><=
div><pre><code><pre><span style=3D"font-family:arial,helvetica,sans-serif">=
<font size=3D"2"><code><span style=3D"font-family:arial,helvetica,sans-seri=
f">As every kernel subsystem has its own printk format like net_* for netwo=
rk subsystem. And it is preferred to use them to standardize the format of =
the output within the subsystem.</span><br><span style=3D"font-family:arial=
,helvetica,sans-serif"><br>Best</span></code></font></span><code><span styl=
e=3D"font-family:arial,helvetica,sans-serif"><font size=3D"2"><br>Arushi</f=
ont></span><br></code></pre></code><code></code><code></code><code></code><=
code></code><code></code><code></code><code></code><code></code><code></cod=
e><code></code><code></code><code></code><code></code><code></code></pre></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<div class=3D"m_7511677065936840292m_5518289589775184047m_45233657255375929=
40m_-6667295385018983546m_-6483622631609013727m_-4474642504418725956HOEnZb"=
><div class=3D"m_7511677065936840292m_5518289589775184047m_4523365725537592=
940m_-6667295385018983546m_-6483622631609013727m_-4474642504418725956h5"><b=
r>
&gt; Indentation is also changed, to fix the=C2=A0 checkpatch issue if line=
 is not<br>
&gt; exceding 80 characters.<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com" target=3D"_blank">arushisinghal19971997@gmail.c<wbr>om</a>&g=
t;<br>
&gt; ---<br>
&gt; changes in v2<br>
&gt; *change the subject line, in v1 driver name was wrong.<br>
&gt;<br>
&gt;=C2=A0 .../rtl8192u/ieee80211/ieee802<wbr>11_crypt_ccmp.c=C2=A0 =C2=A0 =
=C2=A0 | 22 +++++++++++-----------<br>
&gt;=C2=A0 1 file changed, 11 insertions(+), 11 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8192u/iee<wbr>e80211/ieee80211_crypt_c=
cmp.c b/drivers/staging/rtl8192u/iee<wbr>e80211/ieee80211_crypt_ccmp.c<br>
&gt; index e6648f7..200fe5f 100644<br>
&gt; --- a/drivers/staging/rtl8192u/iee<wbr>e80211/ieee80211_crypt_ccmp.c<b=
r>
&gt; +++ b/drivers/staging/rtl8192u/iee<wbr>e80211/ieee80211_crypt_ccmp.c<b=
r>
&gt; @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;tfm =3D (void *)crypto_alloc_cipher=
(&quot;aes&quot;, 0, CRYPTO_ALG_ASYNC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(priv-&gt;tfm)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBUG &qu=
ot;ieee80211_crypt_ccmp: could not allocate crypto API aes\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net_dbg_ratelimited(&=
quot;ieee8021<wbr>1_crypt_ccmp: could not allocate crypto API aes\n&quot;);=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;tfm =3D=
 NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff=
 *skb, int hdr_len, void *priv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0keyidx =3D pos[3];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(keyidx &amp; (1 &lt;&lt; 5))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (net_ratelimi=
t()) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0printk(KERN_DEBUG &quot;CCMP: received packet without ExtIV flag fro=
m %pM\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hdr-&gt;addr2);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0net_dbg_ratelimited(&quot;CCMP: received packet without ExtIV flag f=
rom %pM\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0hdr-&gt;addr2);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0key-&gt;dot11RSN=
AStatsCCMPFormat<wbr>Errors++;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0keyidx &gt;&gt;=3D 6;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (key-&gt;key_idx !=3D keyidx) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBUG &qu=
ot;CCMP: RX tkey-&gt;key_idx=3D%d frame keyidx=3D%d priv=3D%p\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0key-&gt;key_idx, keyidx, priv);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net_dbg_ratelimited(&=
quot;CCMP: RX tkey-&gt;key_idx=3D%d frame keyidx=3D%d priv=3D%p\n&quot;,<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0key-&gt;key_idx, keyidx, p=
riv);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -6;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!key-&gt;key_set) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (net_ratelimi=
t()) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0printk(KERN_DEBUG &quot;CCMP: received packet from %pM with keyid=3D=
%d that does not have a configured key\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hdr-&gt;addr2, keyidx);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0net_dbg_ratelimited(&quot;CCMP: received packet from %pM with keyid=
=3D%d that does not have a configured key\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0hdr-&gt;addr2, keyidx);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -3;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -306,8 +306,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *=
skb, int hdr_len, void *priv)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (memcmp(pn, key-&gt;rx_pn, CCMP_PN_LEN) &=
lt;=3D 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (net_ratelimi=
t()) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0printk(KERN_DEBUG &quot;CCMP: replay detected: STA=3D%pM previous PN=
 %pm received PN %pm\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdr-&gt;addr2, key-&gt;rx_pn, pn);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0net_dbg_ratelimited(&quot;CCMP: replay detected: STA=3D%pM previous =
PN %pm received PN %pm\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0hdr-&gt;addr2, key-&gt;rx_pn, pn);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0key-&gt;dot11RSN=
AStatsCCMPReplay<wbr>s++;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -4;<br>
&gt; @@ -341,8 +341,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *=
skb, int hdr_len, void *priv)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (memcmp(mic, =
a, CCMP_MIC_LEN) !=3D 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (net_ratelimit()) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBUG &quot;CCMP: decrypt fa=
iled: STA=3D%pM\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hdr-&gt;addr=
2);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net_dbg_ratelimited(&quot;CCMP: decrypt =
failed: STA=3D%pM\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hdr-&gt;addr2);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0key-&gt;dot11RSNAStatsCCMPDecryp<wbr>tErrors++;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return -5;<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
</div></div><span class=3D"m_7511677065936840292m_5518289589775184047m_4523=
365725537592940m_-6667295385018983546m_-6483622631609013727m_-4474642504418=
725956HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@g<wbr>ooglegroups.com</=
a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>co=
m</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20180305073256.GA4347%40seema-Inspiron-15-=
3567" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/ms<w=
br>gid/outreachy-kernel/201803050<wbr>73256.GA4347%40seema-Inspiron-<wbr>15=
-3567</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/op<wbr>to=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--f403043871c4f41c4e0566c163c7--


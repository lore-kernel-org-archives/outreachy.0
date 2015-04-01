X-GM-THRID: 10250351542272
X-Received: by 10.236.51.170 with SMTP id b30mr51697912yhc.34.1427905143881;
        Wed, 01 Apr 2015 09:19:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.4 with SMTP id s4ls301449ioe.76.gmail; Wed, 01 Apr
 2015 09:19:03 -0700 (PDT)
X-Received: by 10.50.73.7 with SMTP id h7mr10242464igv.2.1427905143674;
        Wed, 01 Apr 2015 09:19:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id gb13si264684pac.2.2015.04.01.09.19.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 09:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x233.google.com with SMTP id w1so51403306pdr.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 09:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=XUmTPngdoH57fTRQpXC17ThVqMijrUi3Buupatu+UHs=;
        b=zqL6UXrtXt11Ios4iTybOAihSm0ncZhcfbZSHJRVG6lxIBje5O9tx6Np3uoq663+No
         JcfNabkRKuH8rH7UgLpwTYhwtkuDV/fcmjryxDeNm5Ikp2FrZ5lQCLMt7jbFN2ZIDqTL
         E8J41RjsyfHxqMvjbQKWTErX6Nut4jUe/0dtIlDzf5xoasUsqDL0fPwwSa5V+6Oaomkd
         tbDeTXnKFoHmja1NFSrLtjgR61IysqSYZSK+2WpzqeeBAI6V6VjJ8x4ORQ1qkcXqJ9hC
         w4cvedBMxh+v3Ze1oCp6M7fmi47dqcJ3WvvLCtZ4OvWrRGrm/L0p+uHubE01zUaIV8tQ
         knPA==
MIME-Version: 1.0
X-Received: by 10.68.138.230 with SMTP id qt6mr19606615pbb.66.1427905143508;
 Wed, 01 Apr 2015 09:19:03 -0700 (PDT)
Received: by 10.70.80.133 with HTTP; Wed, 1 Apr 2015 09:19:03 -0700 (PDT)
Received: by 10.70.80.133 with HTTP; Wed, 1 Apr 2015 09:19:03 -0700 (PDT)
In-Reply-To: <20150401153326.GB15236@kroah.com>
References: <1427590308-18551-1-git-send-email-ciorneiioana@gmail.com>
	<20150401153326.GB15236@kroah.com>
Date: Wed, 1 Apr 2015 19:19:03 +0300
Message-ID: <CAHWJYF=UjhETMat+GxXNaF6PyVRCrb1rAyAUP3B7L=5vwE5HiA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtllib_crypt_tkip: Replase
 printk() with pr_debug()
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=047d7b15a555da1c5a0512ac12c7

--047d7b15a555da1c5a0512ac12c7
Content-Type: text/plain; charset=UTF-8

On Apr 1, 2015 6:33 PM, "Greg KH" <gregkh@linuxfoundation.org> wrote:
>
> On Sun, Mar 29, 2015 at 02:51:48AM +0200, Ioana Ciornei wrote:
> > Replace printk(KERN_DEBUG ..) with pr_debug() since it is the preferred
way when there
> > is no netdevice or device struct object to pass as argument.
> >
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 39
++++++++++------------------
> >  1 file changed, 13 insertions(+), 26 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
> > index ccf8530..1c4025f 100644
> > --- a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
> > +++ b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
> > @@ -66,8 +66,7 @@ static void *rtllib_tkip_init(int key_idx)
> >       priv->tx_tfm_arc4 = crypto_alloc_blkcipher("ecb(arc4)", 0,
> >                       CRYPTO_ALG_ASYNC);
> >       if (IS_ERR(priv->tx_tfm_arc4)) {
> > -             printk(KERN_DEBUG
> > -                    "rtllib_crypt_tkip: could not allocate crypto API
arc4\n");
> > +             pr_debug("rtllib_crypt_tkip: could not allocate crypto
API arc4\n");
> >               priv->tx_tfm_arc4 = NULL;
> >               goto fail;
> >       }
> > @@ -75,8 +74,7 @@ static void *rtllib_tkip_init(int key_idx)
> >       priv->tx_tfm_michael = crypto_alloc_hash("michael_mic", 0,
> >                       CRYPTO_ALG_ASYNC);
> >       if (IS_ERR(priv->tx_tfm_michael)) {
> > -             printk(KERN_DEBUG
> > -                    "rtllib_crypt_tkip: could not allocate crypto API
michael_mic\n");
> > +             pr_debug("rtllib_crypt_tkip: could not allocate crypto
API michael_mic\n");
> >               priv->tx_tfm_michael = NULL;
> >               goto fail;
> >       }
> > @@ -84,8 +82,7 @@ static void *rtllib_tkip_init(int key_idx)
> >       priv->rx_tfm_arc4 = crypto_alloc_blkcipher("ecb(arc4)", 0,
> >                       CRYPTO_ALG_ASYNC);
> >       if (IS_ERR(priv->rx_tfm_arc4)) {
> > -             printk(KERN_DEBUG
> > -                    "rtllib_crypt_tkip: could not allocate crypto API
arc4\n");
> > +             pr_debug("rtllib_crypt_tkip: could not allocate crypto
API arc4\n");
> >               priv->rx_tfm_arc4 = NULL;
> >               goto fail;
> >       }
> > @@ -93,8 +90,7 @@ static void *rtllib_tkip_init(int key_idx)
> >       priv->rx_tfm_michael = crypto_alloc_hash("michael_mic", 0,
> >                       CRYPTO_ALG_ASYNC);
> >       if (IS_ERR(priv->rx_tfm_michael)) {
> > -             printk(KERN_DEBUG
> > -                    "rtllib_crypt_tkip: could not allocate crypto API
michael_mic\n");
> > +             pr_debug("rtllib_crypt_tkip: could not allocate crypto
API michael_mic\n");
> >               priv->rx_tfm_michael = NULL;
> >               goto fail;
> >       }
> > @@ -399,23 +395,20 @@ static int rtllib_tkip_decrypt(struct sk_buff
*skb, int hdr_len, void *priv)
> >       keyidx = pos[3];
> >       if (!(keyidx & (1 << 5))) {
> >               if (net_ratelimit()) {
> > -                     printk(KERN_DEBUG
> > -                            "TKIP: received packet without ExtIV flag
from %pM\n",
> > +                     pr_debug("TKIP: received packet without ExtIV
flag from %pM\n",
> >                              hdr->addr2);
>
> If you have a skb, then you should be able to find the network device
> somehow.
>
> For the other places, odds are you can dig and find it as well,
> otherwise how does the code know what device it is working with?
>
> If you really can't, then the api needs to be fixed to provide it.  No
> network driver should ever do "blind" printk/pr_* calls.
>
> thanks,
>
> greg k-h

Thanks for the hint.
I wil revise all the patches and send a new patchset.

Ioana

--047d7b15a555da1c5a0512ac12c7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Apr 1, 2015 6:33 PM, &quot;Greg KH&quot; &lt;<a href=3D"mailto:gregkh@li=
nuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Sun, Mar 29, 2015 at 02:51:48AM +0200, Ioana Ciornei wrote:<br>
&gt; &gt; Replace printk(KERN_DEBUG ..) with pr_debug() since it is the pre=
ferred way when there<br>
&gt; &gt; is no netdevice or device struct object to pass as argument.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@g=
mail.com">ciorneiioana@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 39 +++++++++=
+------------------<br>
&gt; &gt;=C2=A0 1 file changed, 13 insertions(+), 26 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c b/drive=
rs/staging/rtl8192e/rtllib_crypt_tkip.c<br>
&gt; &gt; index ccf8530..1c4025f 100644<br>
&gt; &gt; --- a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c<br>
&gt; &gt; +++ b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c<br>
&gt; &gt; @@ -66,8 +66,7 @@ static void *rtllib_tkip_init(int key_idx)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;tx_tfm_arc4 =3D crypto_alloc_b=
lkcipher(&quot;ecb(arc4)&quot;, 0,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0CRYPTO_ALG_ASYNC);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(priv-&gt;tx_tfm_arc4)) {<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBU=
G<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;rtllib_crypt_tkip: could not allocate crypto API arc4\n&quot;)=
;<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_debug(&quot;r=
tllib_crypt_tkip: could not allocate crypto API arc4\n&quot;);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;tx=
_tfm_arc4 =3D NULL;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<=
br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; @@ -75,8 +74,7 @@ static void *rtllib_tkip_init(int key_idx)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;tx_tfm_michael =3D crypto_allo=
c_hash(&quot;michael_mic&quot;, 0,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0CRYPTO_ALG_ASYNC);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(priv-&gt;tx_tfm_michael)) {<=
br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBU=
G<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;rtllib_crypt_tkip: could not allocate crypto API michael_mic\n=
&quot;);<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_debug(&quot;r=
tllib_crypt_tkip: could not allocate crypto API michael_mic\n&quot;);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;tx=
_tfm_michael =3D NULL;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<=
br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; @@ -84,8 +82,7 @@ static void *rtllib_tkip_init(int key_idx)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;rx_tfm_arc4 =3D crypto_alloc_b=
lkcipher(&quot;ecb(arc4)&quot;, 0,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0CRYPTO_ALG_ASYNC);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(priv-&gt;rx_tfm_arc4)) {<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBU=
G<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;rtllib_crypt_tkip: could not allocate crypto API arc4\n&quot;)=
;<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_debug(&quot;r=
tllib_crypt_tkip: could not allocate crypto API arc4\n&quot;);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;rx=
_tfm_arc4 =3D NULL;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<=
br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; @@ -93,8 +90,7 @@ static void *rtllib_tkip_init(int key_idx)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;rx_tfm_michael =3D crypto_allo=
c_hash(&quot;michael_mic&quot;, 0,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0CRYPTO_ALG_ASYNC);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(priv-&gt;rx_tfm_michael)) {<=
br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBU=
G<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;rtllib_crypt_tkip: could not allocate crypto API michael_mic\n=
&quot;);<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_debug(&quot;r=
tllib_crypt_tkip: could not allocate crypto API michael_mic\n&quot;);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;rx=
_tfm_michael =3D NULL;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<=
br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; @@ -399,23 +395,20 @@ static int rtllib_tkip_decrypt(struct sk_bu=
ff *skb, int hdr_len, void *priv)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0keyidx =3D pos[3];<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(keyidx &amp; (1 &lt;&lt; 5))) {<b=
r>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (net_rat=
elimit()) {<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0printk(KERN_DEBUG<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;TKIP: received packet without ExtI=
V flag from %pM\n&quot;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0pr_debug(&quot;TKIP: received packet without ExtIV flag from %=
pM\n&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdr-&gt;addr2);<br>
&gt;<br>
&gt; If you have a skb, then you should be able to find the network device<=
br>
&gt; somehow.<br>
&gt;<br>
&gt; For the other places, odds are you can dig and find it as well,<br>
&gt; otherwise how does the code know what device it is working with?<br>
&gt;<br>
&gt; If you really can&#39;t, then the api needs to be fixed to provide it.=
=C2=A0 No<br>
&gt; network driver should ever do &quot;blind&quot; printk/pr_* calls.<br>
&gt;<br>
&gt; thanks,<br>
&gt;<br>
&gt; greg k-h</p>
<p dir=3D"ltr">Thanks for the hint. <br>
I wil revise all the patches and send a new patchset.</p>
<p dir=3D"ltr">Ioana</p>

--047d7b15a555da1c5a0512ac12c7--


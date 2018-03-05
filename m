X-GM-THRID: 6529221119652659200
X-Received: by 10.80.243.7 with SMTP id p7mr4609149edm.1.1520273506187;
        Mon, 05 Mar 2018 10:11:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.50 with SMTP id o47ls8277402edc.3.gmail; Mon, 05 Mar
 2018 10:11:45 -0800 (PST)
X-Google-Smtp-Source: AG47ELsdWwqro8vz7Dcd0oCZiur81FrZlcHLCA4DWxCPC4BJ4HMQK2faPBDkJzACxNgZSc0gGFof
X-Received: by 10.80.202.199 with SMTP id f7mr4608875edi.12.1520273505229;
        Mon, 05 Mar 2018 10:11:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520273505; cv=none;
        d=google.com; s=arc-20160816;
        b=eCJqWESgTbm5OxpGfv2OkC24SjmZtE+khL+LSMG31lzY6cQcqKFv8RXPwN0U4v8VCn
         S+swvRi5DvvEZ+W5dx12dikFQKblB8uttmcMhQn4B9oQlCslz2++B+D+vkaJbmIeXAt6
         mhf5rdCo1KzhSEG2mS4yPMJvGq78dWEUsNAiR7BJ1Vbqu0UIKdETD76U07B5Po1tUuMr
         ODoLnk1k4sDCx2HjifJ6k52qr5C1IYUX4UR0chQBpKaa4fVHzaZVP8IbZUJ/B9a8BzJ9
         y6h2vzcly44MBvk/FpatdWF613wmcVfvKCfVzJ3rPrp9gsa2Pl4G7j4QWu1O0b+1Mjpa
         DooQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=bR4y+OBxxFeBeJs/W1BYMdbha08kp6LngO3zLZkXvqA=;
        b=o/UXgM84qUVlKCesmAqZELFB0SGQ7TptpR5oq94qPXSPIwoyFBySpfUGIZI/FNNNT6
         +4teozCPQ05TLkycSPOF8QQahyPzk9q1h+kOZXuONzM2ujn7qwuL0QWVFWZUUN3RZrux
         lhoYTkVrf4ElSlSTR8OrJzngHEixVqEQslGnrgyD0yomTi8f+L9czVTOzrH8SVLUqeD2
         sIVb2stemiiIf6N0JntGFf6fyUVvShu6rv/Tmg/6PeN7lnyD8e97JDFs7RQEyppfP9gC
         AzKTx+DP9Dyo0Jys+jgxFuLSl977hSTlMq07GRz0Q5GzT7ahH14wMindXjWWmPAcdt2f
         lDBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tHSFUnvf;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id f9si57840edm.2.2018.03.05.10.11.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 10:11:45 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tHSFUnvf;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id m69so24520254lfe.8
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Mar 2018 10:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bR4y+OBxxFeBeJs/W1BYMdbha08kp6LngO3zLZkXvqA=;
        b=tHSFUnvfqYrt/+Gn77aFz0md11V4XwVo4JJxl+RSCdLbCnMP2V0ne3ZROijPMZbMEW
         ZKajmrf5l/VoOENxyjQowgItutVhyVn2lrq7hYfOpNhwoyp7Tl4Udz0ogQW6aKf96yVG
         Pk8m5z1Ldo+ybaXNyEVZFwJk2C9+ITNZlZJ5noKCT/lekXhagASbjSnF08B34pgLhdhg
         PmLB+PTycr3ByMTkQgMBl7dea2S7U/NgKwEcU/Uv0Pmq0FLrlPnvYI0k3jbLtO0lVO/F
         F5uxkpRBiRXgRcYES75BW0q8gKgQGDd/0uMCYhfp0lIOLDaTFqtPTpKHuLmfe99IIlgQ
         Zl7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bR4y+OBxxFeBeJs/W1BYMdbha08kp6LngO3zLZkXvqA=;
        b=FI10BOQPnfiq4nQiAFoVlcXT2r6VdTqa0K9AcF0TR+E4N1RLnqNmk/GXYFO/e7ac4H
         EV9kElOXZuax2OhoBVqnvFpgAplzqZm+d0q/Lj9SUaKBttk/NiZ90+yPULOYKnlgGJk1
         SOq9J1/VcqFpXRgmW+KhF5X2qoF09/DG+dusJAReDPIokJfJfTviHJKbFwgYJ96pi3Zs
         RlvC2Tum0XCi9L+imzSF7EULgwd8ZHAVMF4RWEJ8PYW0ibRqXntvReG/fcewJPKtKpaf
         2f20IpaMTUSq0hBHFteiLyL30wx+BLjcJ8QWxI55UMPJVOTI52WSphVhe3jOr7xtfLnr
         3p1w==
X-Gm-Message-State: AElRT7F2OYO9KCKH6OiVTKjf+NN89MB/fOTBLsvOMcEdkyXJvotipcce
	tsXt/nY5VWPhY5+/xeWlJVXqRKfU4GVZ2yvi18E=
X-Received: by 10.25.181.8 with SMTP id e8mr9722511lff.94.1520273504621; Mon,
 05 Mar 2018 10:11:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.26.203 with HTTP; Mon, 5 Mar 2018 10:11:43 -0800 (PST)
In-Reply-To: <20180305100345.v6ajs7vdgzmwu5x4@mwanda>
References: <20180304223205.GA31416@seema-Inspiron-15-3567> <20180305100345.v6ajs7vdgzmwu5x4@mwanda>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Mon, 5 Mar 2018 23:41:43 +0530
Message-ID: <CA+XqjF9tBqpgp7ymQOAWeJHm1hPd6w01u3ZVS8ozq4JuoBNSEg@mail.gmail.com>
Subject: Re: [PATCH] staging: irda: Replace printk() with appropriate net_*macro_ratelimited()
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, driverdevel <devel@driverdev.osuosl.org>, 
	outreachy-kernel@googlegroups.com, LKML <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="001a113ad1a834581f0566ae42ab"

--001a113ad1a834581f0566ae42ab
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 5, 2018 at 3:33 PM, Dan Carpenter <dan.carpenter@oracle.com>
wrote:

> On Mon, Mar 05, 2018 at 04:02:06AM +0530, Arushi Singhal wrote:
> > Replace printk having a log level with the appropriate
> > net_*macro_ratelimited.
> > It's better to use actual device name as a prefix in error messages.
> > Indentation is also changed, to fix the  checkpatch issue if line is not
> > exceding 80 characters.
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
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
>
>
> This should probably just be deleted.
>
Hello Dan
Why we should make this change?
According to me it's use here to print debug message.
Wanted to know more about your thought on this.

>
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
>
> The "if (net_ratelimit()) " already means the message is ratelimited so
> it's net_dbg() ok?  I think so, but I've never looked at this before.
>

net_dbg() is an implicit declaration of a function. So we can't do this
change.

Thanks
Arushi


>
> regards,
> dan carpenter
>
>

--001a113ad1a834581f0566ae42ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Mar 5, 2018 at 3:33 PM, Dan Carpenter <span dir=3D"ltr">&lt;<a =
href=3D"mailto:dan.carpenter@oracle.com">dan.carpenter@oracle.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Mon, Mar=
 05, 2018 at 04:02:06AM +0530, Arushi Singhal wrote:<br>
</span><span class=3D"">&gt; Replace printk having a log level with the app=
ropriate<br>
&gt; net_*macro_ratelimited.<br>
&gt; It&#39;s better to use actual device name as a prefix in error message=
s.<br>
&gt; Indentation is also changed, to fix the=C2=A0 checkpatch issue if line=
 is not<br>
&gt; exceding 80 characters.<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../rtl8192u/ieee80211/<wbr>ieee80211_crypt_ccmp.c=C2=A0 =C2=A0 =
=C2=A0 | 22 +++++++++++-----------<br>
&gt;=C2=A0 1 file changed, 11 insertions(+), 11 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt_<=
wbr>ccmp.c b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt_<wbr>c=
cmp.c<br>
&gt; index e6648f7..200fe5f 100644<br>
&gt; --- a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt_<wbr>ccm=
p.c<br>
&gt; +++ b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt_<wbr>ccm=
p.c<br>
&gt; @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;tfm =3D (void *)crypto_alloc_cipher=
(&quot;aes&quot;, 0, CRYPTO_ALG_ASYNC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(priv-&gt;tfm)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBUG &qu=
ot;ieee80211_crypt_ccmp: could not allocate crypto API aes\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net_dbg_ratelimited(&=
quot;<wbr>ieee80211_crypt_ccmp: could not allocate crypto API aes\n&quot;);=
<br>
<br>
<br>
</span>This should probably just be deleted.<br></blockquote><div>Hello Dan=
<br></div><div>Why we should make this change?<br></div><div>According to m=
e it&#39;s use here to print debug message.<br></div><div>Wanted to know mo=
re about your thought on this.<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<span class=3D""><br>
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
<br>
</span>The &quot;if (net_ratelimit()) &quot; already means the message is r=
atelimited so<br>
it&#39;s net_dbg() ok?=C2=A0 I think so, but I&#39;ve never looked at this =
before.<br></blockquote><div>=C2=A0</div><div>net_dbg() is an implicit decl=
aration of a function. So we can&#39;t do this change.<br><br></div><div>Th=
anks<br></div><div>Arushi<br></div><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">
<br>
regards,<br>
dan carpenter<br>
<br>
</blockquote></div><br></div></div>

--001a113ad1a834581f0566ae42ab--


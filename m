X-GM-THRID: 1670193872896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,75ad403aeef5fe09
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.189.227 with SMTP id gl3mr243512lbc.2.1424513933975;
        Sat, 21 Feb 2015 02:18:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.203.133 with SMTP id kq5ls408495lac.32.gmail; Sat, 21 Feb
 2015 02:18:52 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr243501lbc.2.1424513932440;
        Sat, 21 Feb 2015 02:18:52 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x233.google.com (mail-lb0-x233.google.com. [2a00:1450:4010:c04::233])
        by gmr-mx.google.com with ESMTPS id xl7si3139930lbb.1.2015.02.21.02.18.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 02:18:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::233 as permitted sender) client-ip=2a00:1450:4010:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::233 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lbvp9 with SMTP id p9so10742498lbv.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 02:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6F3ItqICh+TRyBVnt6hX07Qfg2KDxTaGVpLWZv3zhk0=;
        b=qxG2kkKJOcPBBBRn4bxAqLM777NHwoU8AYjEvxz+gAwGtTc9Ker7+xwdgtW22zGCZH
         LPgt8aD/fuyuBGil46uOlGAHW11RcDgkA8kfhErqOPz1OaPcGdHmTbhaSDHTSQvqgQyk
         gjs+5Ol+ia7WL8gbwsH4V1Qwi/ysCS51Y9IrXgQ1r0QX97Qn1YtxlWB6OmfU3ULLefj0
         avS0bOZvVinffFK6Nkpd/kk+NHYJx/TL/OIv4JTG7MXZYhfyG2CWY3YSSnXb/H3OAQcQ
         diTnB9OE5cWc/nh13y9ADlbF/VExtr5/BpFUmaiZ42MjdGRLUmZsxNtDPVgLmED5nL4E
         Y05Q==
MIME-Version: 1.0
X-Received: by 10.112.135.196 with SMTP id pu4mr1510366lbb.41.1424513932299;
 Sat, 21 Feb 2015 02:18:52 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Sat, 21 Feb 2015 02:18:52 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502211011420.2020@localhost6.localdomain6>
References: <1424509708-3190-1-git-send-email-ksenija.stanojevic@gmail.com>
	<alpine.DEB.2.02.1502211011420.2020@localhost6.localdomain6>
Date: Sat, 21 Feb 2015 11:18:52 +0100
Message-ID: <CAL7P5jLE2CJk6QDfs_eg_tpsWWR0YuFZ_qSdmW8tsJUn2gZseA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace printk()
 with pr_debug().
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e011607c6e9a5af050f967ead

--089e011607c6e9a5af050f967ead
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 21, 2015 at 10:12 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sat, 21 Feb 2015, Ksenija Stanojevic wrote:
>
> > For dynamic debugging pr_debug() metod is preferred over printk(), which
> > is the raw way to print something. Issue found by checkpatch.pl.
>
> This is a network driver.  See if it could be possible to use netdev_dbg
> instead.
>
> julia
>
> Hi,
It seems to me that only the first out of four functions that use printk
has a pointer to a device net structure, others don't. Therefore I could
only implement one netdev_dbg().
I couldn't compile the code where all functions use net_dev() function.


> >
> > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> > index 5533221..447af93 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> > @@ -66,7 +66,7 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
> >       spin_lock_irqsave(&ieee->lock, flags);
> >       ieee80211_crypt_deinit_entries(ieee, 0);
> >       if (!list_empty(&ieee->crypt_deinit_list)) {
> > -             printk(KERN_DEBUG "%s: entries remaining in delayed crypt "
> > +             pr_debug("%s: entries remaining in delayed crypt "
> >                      "deletion list\n", ieee->dev->name);
> >               ieee->crypt_deinit_timer.expires = jiffies + HZ;
> >               add_timer(&ieee->crypt_deinit_timer);
> > @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct
> ieee80211_crypto_ops *ops)
> >       list_add(&alg->list, &hcrypt->algs);
> >       spin_unlock_irqrestore(&hcrypt->lock, flags);
> >
> > -     printk(KERN_DEBUG "ieee80211_crypt: registered algorithm '%s'\n",
> > +     pr_debug("ieee80211_crypt: registered algorithm '%s'\n",
> >              ops->name);
> >
> >       return 0;
> > @@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_ops(struct
> ieee80211_crypto_ops *ops)
> >       spin_unlock_irqrestore(&hcrypt->lock, flags);
> >
> >       if (del_alg) {
> > -             printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm
> "
> > +             pr_debug("ieee80211_crypt: unregistered algorithm "
> >                      "'%s'\n", ops->name);
> >               kfree(del_alg);
> >       }
> > @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)
> >               struct ieee80211_crypto_alg *alg =
> >                       (struct ieee80211_crypto_alg *) ptr;
> >               list_del(ptr);
> > -             printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm
> "
> > +             pr_debug("ieee80211_crypt: unregistered algorithm "
> >                      "'%s' (deinit)\n", alg->ops->name);
> >               kfree(alg);
> >       }
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
> https://groups.google.com/d/msgid/outreachy-kernel/1424509708-3190-1-git-send-email-ksenija.stanojevic%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--089e011607c6e9a5af050f967ead
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sat, Feb 21, 2015 at 10:12 AM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><span class=3D"">On Sat, 21 Feb 2015, Ksenija Stanojevic wrote:<br>
<br>
&gt; For dynamic debugging pr_debug() metod is preferred over printk(), whi=
ch<br>
&gt; is the raw way to print something. Issue found by <a href=3D"http://ch=
eckpatch.pl" target=3D"_blank">checkpatch.pl</a>.<br>
<br>
</span>This is a network driver.=C2=A0 See if it could be possible to use n=
etdev_dbg<br>
instead.<br>
<br>
julia<br>
<div class=3D""><div class=3D"h5"><br></div></div></blockquote><div><span>H=
i,<br>It seems to me that only the first out of four functions that use
 printk has a pointer to a device net structure, others don&#39;t. Therefor=
e
 I could only implement one netdev_dbg(). <br>I couldn&#39;t compile the co=
de where all functions use net_dev() function.</span><br>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div class=3D""><div class=3D"h=
5">
&gt;<br>
&gt; Signed-off-by: Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanoj=
evic@gmail.com">ksenija.stanojevic@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 8 ++++---=
-<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/dr=
ivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c<br>
&gt; index 5533221..447af93 100644<br>
&gt; --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c<br>
&gt; +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c<br>
&gt; @@ -66,7 +66,7 @@ void ieee80211_crypt_deinit_handler(unsigned long da=
ta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_irqsave(&amp;ieee-&gt;lock, flags)=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ieee80211_crypt_deinit_entries(ieee, 0);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!list_empty(&amp;ieee-&gt;crypt_deinit_l=
ist)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBUG &qu=
ot;%s: entries remaining in delayed crypt &quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_debug(&quot;%s: en=
tries remaining in delayed crypt &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;deletion list\n&quot;, ieee-&gt;dev-&gt;name);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ieee-&gt;crypt_d=
einit_timer.expires =3D jiffies + HZ;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0add_timer(&amp;i=
eee-&gt;crypt_deinit_timer);<br>
&gt; @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct ieee80211=
_crypto_ops *ops)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_add(&amp;alg-&gt;list, &amp;hcrypt-&gt;=
algs);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock_irqrestore(&amp;hcrypt-&gt;lock,=
 flags);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0printk(KERN_DEBUG &quot;ieee80211_crypt: register=
ed algorithm &#39;%s&#39;\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pr_debug(&quot;ieee80211_crypt: registered algori=
thm &#39;%s&#39;\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ops-&gt;name);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; @@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_ops(struct ieee802=
11_crypto_ops *ops)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock_irqrestore(&amp;hcrypt-&gt;lock,=
 flags);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (del_alg) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBUG &qu=
ot;ieee80211_crypt: unregistered algorithm &quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_debug(&quot;ieee80=
211_crypt: unregistered algorithm &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;&#39;%s&#39;\n&quot;, ops-&gt;name);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(del_alg);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ieee80211=
_crypto_alg *alg =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(struct ieee80211_crypto_alg *) ptr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(ptr);<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_DEBUG &qu=
ot;ieee80211_crypt: unregistered algorithm &quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_debug(&quot;ieee80=
211_crypt: unregistered algorithm &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;&#39;%s&#39; (deinit)\n&quot;, alg-&gt;ops-&gt;name);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(alg);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D""><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1424509708-3190-1-git-send-email-ksenija.s=
tanojevic%40gmail.com" target=3D"_blank">https://groups.google.com/d/msgid/=
outreachy-kernel/1424509708-3190-1-git-send-email-ksenija.stanojevic%40gmai=
l.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--089e011607c6e9a5af050f967ead--


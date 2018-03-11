X-GM-THRID: 6531387623906213888
X-Received: by 10.46.116.1 with SMTP id p1mr201929ljc.18.1520744842160;
        Sat, 10 Mar 2018 21:07:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:be15:: with SMTP id o21-v6ls1169720lff.8.gmail; Sat, 10
 Mar 2018 21:07:21 -0800 (PST)
X-Google-Smtp-Source: AG47ELvIeNbZEQeUFEbviPEriRs9UNbVrfVN0y2e+T3V2OeMa+Ux64xbCy8NNEUDHqhVhX8pWznR
X-Received: by 2002:a19:d5d5:: with SMTP id m204-v6mr2382lfg.6.1520744840939;
        Sat, 10 Mar 2018 21:07:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520744840; cv=none;
        d=google.com; s=arc-20160816;
        b=bnFRLag5P1SfvKWu0a01Zo1gT7Oo6zFIshGXggK6yvIunXVLa3epDK1LvfQk6irrPN
         Hz2juWKlpHDF+yO7is8+XU6JwY0OmAiHUzCRuPK++Cjep9iS9drELN0cdo2+2oSdcIau
         rPzAf9fuJ3SG41hoYiKDTIhjGpwWFt2HX9h7uokSIAA/R8YQrEKNz3fx9zZG8GW2IAls
         86caPTIFjcCEnFZXvQts0QjQ+TxE7C3TTT9LNMDd/eG2BmfiH50/Al4RwtLHqWBt/NR/
         I2jZT2ir5yOMENgMN3qWASS2WvNX6YBbOy84nKZDrkulnVlsWGvqQ5YJrQTNtGLDlimi
         VQpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=uLWR2Sx/NrdJw1ZZ4VQDYA1zUKqhZr9SX8S5/yieXig=;
        b=sGuEJJ4PoqkPu1o6AcmOtZqaD07Y+/olleKx9ZCGPddleH6wsVLTidViDZ5u7t0gMr
         L85LOXOuDNfSpEqFw/pEIZDmi3PtKQ/oiijg2CfS++nnWgPLOp0uo0x8VPJmpz0grlCE
         v8Owstcl2nV2ELRF3XjFHJtb5v8YpvHvU5R7dKihXNcYdIkENlAl2VPbmK3sioOU0//T
         /HCkx1MKHlv9Uuu7DbQ+B3LpcFIphvPv5syUPp+yW/cDHbvHsAb/JD8ICnCWNNPgMZvI
         MuvDg3pbn7V/IPMpM6dekpUsmO/he4iX+sqnoJeiH3zAZ7Xcwd347p6mJzT6O/79ZcIv
         hYMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p0Bcy2PS;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x22a.google.com (mail-lf0-x22a.google.com. [2a00:1450:4010:c07::22a])
        by gmr-mx.google.com with ESMTPS id j4si153580lja.1.2018.03.10.21.07.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Mar 2018 21:07:20 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) client-ip=2a00:1450:4010:c07::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p0Bcy2PS;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22a.google.com with SMTP id y19-v6so18512481lfd.4
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Mar 2018 21:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=uLWR2Sx/NrdJw1ZZ4VQDYA1zUKqhZr9SX8S5/yieXig=;
        b=p0Bcy2PSuSwX5v9Q+I76bVA9WhL7H8t3GmC16Kt8wlGKJOUm8gH77oIpsSOfkEbZgy
         2ZfY0777NtuvuRdKOER8YCg52HtRYnx0HokgnIWV/EDmfFSZ4hsX4a6DfMpAsrGhzgo3
         BEyG3E4PPl1H9M/nnq7COCwFbhyL5ww26fM0a/D8m/gYcCMmGYkUfZiOOOe+XTLAe9S4
         1mN3jXDVPUtVlIhIq3j7tjpwfIbAV8QZsDBTsISYaMy+7JfIityJjBqTcMJZBZPcSf/+
         v2znqMfPKI4SId5hZ29quHtue/vnwDkau2yL4QGpdLvC9A1WluFnvKbfY2bXJfbFog0n
         L2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=uLWR2Sx/NrdJw1ZZ4VQDYA1zUKqhZr9SX8S5/yieXig=;
        b=BPj74CG6BTRm2P2Iwndm8jG7UBRr3e+1x09h3wx7tZRlSwWCeJxyIYAL7jRmjpeFC3
         Jd1/wK8fraELvvO+zmkP3OUUzCWvYlwd32ta8WP2eCz/dLLaaJ3PWqT5HkiuU7CocGZg
         qsmTl8NXs3tQDJjxFfhbtc7y4AdWcHIM5OQSCtfdajbnySssBsSQm8k8TZWYPLGoGPWn
         ZrQOZ6QOFsKHw/7y0Cc0Vmo4rHuw6AdBiXfqyKedu2GOPUUH1ucJBcFCQ/vCs9mFwqmO
         NT5RxbEnrY0Cu/yh/XANRyGFok8uSUM6dr8EaCUo1pULiE2yn/vcus7Da+Bf1Up9A89X
         A4Ng==
X-Gm-Message-State: AElRT7HJgS88bkU2bYZMsExN8uWGVZ/RQQpEwtxFmD300+wSgDJr1nau
	gp7CSjvdJDVqwmb2jibMpahbKMtKsrW7td94UxMzmg==
X-Received: by 2002:a19:8f13:: with SMTP id r19-v6mr2236574lfd.92.1520744840609;
 Sat, 10 Mar 2018 21:07:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a19:1acb:0:0:0:0:0 with HTTP; Sat, 10 Mar 2018 21:07:19
 -0800 (PST)
In-Reply-To: <20180310191318.nworqblow4n4k2lq@salvia>
References: <20180310183906.GA20125@seema-Inspiron-15-3567> <20180310191318.nworqblow4n4k2lq@salvia>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sun, 11 Mar 2018 10:37:19 +0530
Message-ID: <CA+XqjF_sDve4uztuXD478iOs9xSMqhUcHC5mHZ6O4u-8b-e9QQ@mail.gmail.com>
Subject: Re: [PATCH Netfilter] net: netfilter: Replace printk() with more
 standardize output format.
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, Florian Westphal <fw@strlen.de>, 
	"David S. Miller" <davem@davemloft.net>, outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Netfilter Developer Mailing List <netfilter-devel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="00000000000004c3f305671c0037"

--00000000000004c3f305671c0037
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 11, 2018 at 12:43 AM, Pablo Neira Ayuso <pablo@netfilter.org>
wrote:

> On Sun, Mar 11, 2018 at 12:09:07AM +0530, Arushi Singhal wrote:
> > printk() is the raw way to print output and should be avoided.
> >
> > For drivers with defined "struct device object", dev_*macro() is
> > prefer and for "struct netdevice object", netdev_*macro() is prefer over
> > dev_*macro() to standardize the output format within the subsystem.
> >
> > If no "struct device object" is defined prefer pr_*macro() over
> > printk().
> >
> > This patch Replace printk having a log level with the appropriate output
> > format according to the order of preference.
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  net/netfilter/nf_conntrack_acct.c      | 2 +-
> >  net/netfilter/nf_conntrack_ecache.c    | 2 +-
> >  net/netfilter/nf_conntrack_timestamp.c | 2 +-
> >  net/netfilter/nf_nat_core.c            | 2 +-
> >  net/netfilter/nfnetlink_queue.c        | 4 ++--
> >  5 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/net/netfilter/nf_conntrack_acct.c
> b/net/netfilter/nf_conntrack_acct.c
> > index 8669167..fc7329d 100644
> > --- a/net/netfilter/nf_conntrack_acct.c
> > +++ b/net/netfilter/nf_conntrack_acct.c
> > @@ -80,7 +80,7 @@ static int nf_conntrack_acct_init_sysctl(struct net
> *net)
> >       net->ct.acct_sysctl_header = register_net_sysctl(net,
> "net/netfilter",
> >                                                        table);
> >       if (!net->ct.acct_sysctl_header) {
> > -             printk(KERN_ERR "nf_conntrack_acct: can't register to
> sysctl.\n");
> > +             netdev_err(net->loopback_dev, "nf_conntrack_acct: can't
> register to sysctl.\n");
>
> Please, use pr_err instead.
>
> And while you are at it, add
>
> #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>
> whenever possible, thanks!
>
> P.S: Send your netfilter patches to netfilter-devel@vger.kernel.org.
>
Hello Pablo

I''ll resend the patch according your suggestions.

Just for curiosity wanted to ask why not netdev_*().

Arushi

>
> >               goto out_register;
> >       }
> >       return 0;
> > diff --git a/net/netfilter/nf_conntrack_ecache.c
> b/net/netfilter/nf_conntrack_ecache.c
> > index caac41a..c1fb296 100644
> > --- a/net/netfilter/nf_conntrack_ecache.c
> > +++ b/net/netfilter/nf_conntrack_ecache.c
> > @@ -372,7 +372,7 @@ static int nf_conntrack_event_init_sysctl(struct
> net *net)
> >       net->ct.event_sysctl_header =
> >               register_net_sysctl(net, "net/netfilter", table);
> >       if (!net->ct.event_sysctl_header) {
> > -             printk(KERN_ERR "nf_ct_event: can't register to
> sysctl.\n");
> > +             netdev_err(net->loopback_dev, "nf_ct_event: can't register
> to sysctl.\n");
> >               goto out_register;
> >       }
> >       return 0;
> > diff --git a/net/netfilter/nf_conntrack_timestamp.c
> b/net/netfilter/nf_conntrack_timestamp.c
> > index 4c4734b..abd9fbd 100644
> > --- a/net/netfilter/nf_conntrack_timestamp.c
> > +++ b/net/netfilter/nf_conntrack_timestamp.c
> > @@ -58,7 +58,7 @@ static int nf_conntrack_tstamp_init_sysctl(struct net
> *net)
> >       net->ct.tstamp_sysctl_header = register_net_sysctl(net,
> "net/netfilter",
> >                                                          table);
> >       if (!net->ct.tstamp_sysctl_header) {
> > -             printk(KERN_ERR "nf_ct_tstamp: can't register to
> sysctl.\n");
> > +             netdev_err(net->loopback_dev, "nf_ct_tstamp: can't
> register to sysctl.\n");
> >               goto out_register;
> >       }
> >       return 0;
> > diff --git a/net/netfilter/nf_nat_core.c b/net/netfilter/nf_nat_core.c
> > index 6c38421..dcda5ac 100644
> > --- a/net/netfilter/nf_nat_core.c
> > +++ b/net/netfilter/nf_nat_core.c
> > @@ -814,7 +814,7 @@ static int __init nf_nat_init(void)
> >       ret = nf_ct_extend_register(&nat_extend);
> >       if (ret < 0) {
> >               nf_ct_free_hashtable(nf_nat_bysource, nf_nat_htable_size);
> > -             printk(KERN_ERR "nf_nat_core: Unable to register
> extension\n");
> > +             pr_err("nf_nat_core: Unable to register extension\n");
> >               return ret;
> >       }
> >
> > diff --git a/net/netfilter/nfnetlink_queue.c b/net/netfilter/nfnetlink_
> queue.c
> > index 8bba231..4b4bef5 100644
> > --- a/net/netfilter/nfnetlink_queue.c
> > +++ b/net/netfilter/nfnetlink_queue.c
> > @@ -834,8 +834,8 @@ nfqnl_mangle(void *data, int data_len, struct
> nf_queue_entry *e, int diff)
> >                       nskb = skb_copy_expand(e->skb,
> skb_headroom(e->skb),
> >                                              diff, GFP_ATOMIC);
> >                       if (!nskb) {
> > -                             printk(KERN_WARNING "nf_queue: OOM "
> > -                                   "in mangle, dropping packet\n");
> > +                             netdev_warn(nskb->dev, "nf_queue: OOM "
> > +                                         "in mangle, dropping
> packet\n");
> >                               return -ENOMEM;
> >                       }
> >                       kfree_skb(e->skb);
> > --
> > 2.7.4
> >
>

--00000000000004c3f305671c0037
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Mar 11, 2018 at 12:43 AM, Pablo Neira Ayuso <span dir=3D"ltr">&=
lt;<a href=3D"mailto:pablo@netfilter.org" target=3D"_blank">pablo@netfilter=
.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"=
HOEnZb"><div class=3D"h5">On Sun, Mar 11, 2018 at 12:09:07AM +0530, Arushi =
Singhal wrote:<br>
&gt; printk() is the raw way to print output and should be avoided.<br>
&gt;<br>
&gt; For drivers with defined &quot;struct device object&quot;, dev_*macro(=
) is<br>
&gt; prefer and for &quot;struct netdevice object&quot;, netdev_*macro() is=
 prefer over<br>
&gt; dev_*macro() to standardize the output format within the subsystem.<br=
>
&gt;<br>
&gt; If no &quot;struct device object&quot; is defined prefer pr_*macro() o=
ver<br>
&gt; printk().<br>
&gt;<br>
&gt; This patch Replace printk having a log level with the appropriate outp=
ut<br>
&gt; format according to the order of preference.<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 net/netfilter/nf_conntrack_<wbr>acct.c=C2=A0 =C2=A0 =C2=A0 | 2 +=
-<br>
&gt;=C2=A0 net/netfilter/nf_conntrack_<wbr>ecache.c=C2=A0 =C2=A0 | 2 +-<br>
&gt;=C2=A0 net/netfilter/nf_conntrack_<wbr>timestamp.c | 2 +-<br>
&gt;=C2=A0 net/netfilter/nf_nat_core.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 2 +-<br>
&gt;=C2=A0 net/netfilter/nfnetlink_queue.<wbr>c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
| 4 ++--<br>
&gt;=C2=A0 5 files changed, 6 insertions(+), 6 deletions(-)<br>
&gt;<br>
&gt; diff --git a/net/netfilter/nf_conntrack_<wbr>acct.c b/net/netfilter/nf=
_conntrack_<wbr>acct.c<br>
&gt; index 8669167..fc7329d 100644<br>
&gt; --- a/net/netfilter/nf_conntrack_<wbr>acct.c<br>
&gt; +++ b/net/netfilter/nf_conntrack_<wbr>acct.c<br>
&gt; @@ -80,7 +80,7 @@ static int nf_conntrack_acct_init_sysctl(<wbr>struct=
 net *net)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ct.acct_sysctl_header =3D register_n=
et_sysctl(net, &quot;net/netfilter&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 table);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!net-&gt;ct.acct_sysctl_header) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;nf_conntrack_acct: can&#39;t register to sysctl.\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(net-&gt;lo=
opback_dev, &quot;nf_conntrack_acct: can&#39;t register to sysctl.\n&quot;)=
;<br>
<br>
</div></div>Please, use pr_err instead.<br>
<br>
And while you are at it, add<br>
<br>
#define pr_fmt(fmt) KBUILD_MODNAME &quot;: &quot; fmt<br>
<br>
whenever possible, thanks!<br>
<br>
P.S: Send your netfilter patches to <a href=3D"mailto:netfilter-devel@vger.=
kernel.org">netfilter-devel@vger.kernel.<wbr>org</a>.<br></blockquote><div>=
<div>Hello Pablo<br><br></div><div>I&#39;&#39;ll resend the patch according=
 your suggestions.<br><br></div><div>Just for curiosity wanted to ask why n=
ot netdev_*(). </div><br></div><div>Arushi <br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out_registe=
r;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; diff --git a/net/netfilter/nf_conntrack_<wbr>ecache.c b/net/netfilter/=
nf_conntrack_<wbr>ecache.c<br>
&gt; index caac41a..c1fb296 100644<br>
&gt; --- a/net/netfilter/nf_conntrack_<wbr>ecache.c<br>
&gt; +++ b/net/netfilter/nf_conntrack_<wbr>ecache.c<br>
&gt; @@ -372,7 +372,7 @@ static int nf_conntrack_event_init_<wbr>sysctl(str=
uct net *net)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ct.event_sysctl_header =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0register_net_sys=
ctl(net, &quot;net/netfilter&quot;, table);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!net-&gt;ct.event_sysctl_header) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;nf_ct_event: can&#39;t register to sysctl.\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(net-&gt;lo=
opback_dev, &quot;nf_ct_event: can&#39;t register to sysctl.\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out_registe=
r;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; diff --git a/net/netfilter/nf_conntrack_<wbr>timestamp.c b/net/netfilt=
er/nf_conntrack_<wbr>timestamp.c<br>
&gt; index 4c4734b..abd9fbd 100644<br>
&gt; --- a/net/netfilter/nf_conntrack_<wbr>timestamp.c<br>
&gt; +++ b/net/netfilter/nf_conntrack_<wbr>timestamp.c<br>
&gt; @@ -58,7 +58,7 @@ static int nf_conntrack_tstamp_init_<wbr>sysctl(stru=
ct net *net)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ct.tstamp_sysctl_header =3D register=
_net_sysctl(net, &quot;net/netfilter&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 table);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!net-&gt;ct.tstamp_sysctl_<wbr>header) {=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;nf_ct_tstamp: can&#39;t register to sysctl.\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(net-&gt;lo=
opback_dev, &quot;nf_ct_tstamp: can&#39;t register to sysctl.\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out_registe=
r;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; diff --git a/net/netfilter/nf_nat_core.c b/net/netfilter/nf_nat_core.c=
<br>
&gt; index 6c38421..dcda5ac 100644<br>
&gt; --- a/net/netfilter/nf_nat_core.c<br>
&gt; +++ b/net/netfilter/nf_nat_core.c<br>
&gt; @@ -814,7 +814,7 @@ static int __init nf_nat_init(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D nf_ct_extend_register(&amp;nat_<wbr>=
extend);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nf_ct_free_hasht=
able(nf_nat_<wbr>bysource, nf_nat_htable_size);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR &quot=
;nf_nat_core: Unable to register extension\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_err(&quot;nf_nat_c=
ore: Unable to register extension\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; diff --git a/net/netfilter/nfnetlink_<wbr>queue.c b/net/netfilter/nfne=
tlink_<wbr>queue.c<br>
&gt; index 8bba231..4b4bef5 100644<br>
&gt; --- a/net/netfilter/nfnetlink_<wbr>queue.c<br>
&gt; +++ b/net/netfilter/nfnetlink_<wbr>queue.c<br>
&gt; @@ -834,8 +834,8 @@ nfqnl_mangle(void *data, int data_len, struct nf_q=
ueue_entry *e, int diff)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0nskb =3D skb_copy_expand(e-&gt;skb, skb_headroom(e-&gt;skb),<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 diff, GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (!nskb) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_WARNING &quot;nf_queue: OOM =
&quot;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;in mangle, dr=
opping packet\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_warn(nskb-&gt;dev, &quot;nf_queue=
: OOM &quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;in mangle, dropping packet\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0kfree_skb(e-&gt;skb);<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
</div></div></blockquote></div><br></div></div>

--00000000000004c3f305671c0037--


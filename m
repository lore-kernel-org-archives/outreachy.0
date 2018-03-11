X-GM-THRID: 6531387623906213888
X-Received: by 10.46.67.147 with SMTP id z19mr200424lje.24.1520743278039;
        Sat, 10 Mar 2018 20:41:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:be15:: with SMTP id o21-v6ls1167654lff.8.gmail; Sat, 10
 Mar 2018 20:41:16 -0800 (PST)
X-Google-Smtp-Source: AG47ELsECaWaSDAUYQkkWNFPxKGcVHHvKai6TZx/ihjN5XYzt76GQzoK/w83agnD4eoSAmF7e5SE
X-Received: by 2002:a19:c9cc:: with SMTP id z195-v6mr206580lff.32.1520743276564;
        Sat, 10 Mar 2018 20:41:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520743276; cv=none;
        d=google.com; s=arc-20160816;
        b=wHaY5HEzro9RX0KAHODWbGKkRL0En3ldm+EC79lnQNfjMH2fk6Omfnfb1yG34w4O+d
         Bi7G52rJ2opnNEXQYbBeHOfX9zeDnHPXlCCNd88TguQQSYy2cFH9dh7VO5UPg1BjQhUd
         Gih9sPcCbJCWn/jbaRqsgsOme6ieOXSmhgMUtRMXnWbXxsA0jz/Q3wZdPtXNBS1sg9Xn
         xsrFzSPwzKpsL9ku9JFpQXtj043GuIs8buzX2IjqD5QHR4zvsE4TfthgBP8O1lTWQgM4
         vXM8q7ArHBn83zj8V3dJ+EBIs5unjl9WzSh0CrfNZjDF03HKgpIpRaNscuG5E6f2uB7s
         Nztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=4rlsuD2HI/LPFp/FQ4PrdP3/e+6EwmftFTryIho5EtI=;
        b=MWiGofFF7Ib9uz5M3uBSUFUk9O17+qoDCPZaWr4Jfv+im7+mG5WLTh9uHb8j3EB0ri
         ry9BtObsGpjOdavnKkfceDUfWZcWAeeGTM7YAn6lRTcjjtPJXYqKB1BQEdTtvj+MnZzy
         K2/xBHE+iBq/3/inAEkqgLLUUeXml/pTaUSQL9DMXJmcGi1UX/FdNE2qbP+pqGBvR3ky
         03jVdfbceIOhlYb1tcCR/dCGbF/FmCpeyQ0jV/IONbZv6u0UGbOUO3bKh32zSW4E8a4m
         uUXu2i07SWFxx2YlFde1QoUZELf3Jabpp1J6HSc9RJ4RI790F8N7OCqn6UgTacG8xr6a
         AaqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCd4cQYx;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x231.google.com (mail-lf0-x231.google.com. [2a00:1450:4010:c07::231])
        by gmr-mx.google.com with ESMTPS id w7si187697ljw.4.2018.03.10.20.41.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Mar 2018 20:41:16 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) client-ip=2a00:1450:4010:c07::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCd4cQYx;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x231.google.com with SMTP id e28-v6so9552567lfc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Mar 2018 20:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=4rlsuD2HI/LPFp/FQ4PrdP3/e+6EwmftFTryIho5EtI=;
        b=QCd4cQYxA3AHYc8TNWvfATdO1/fxskS7FHz3XiX7p3YfbeWivU1wMAl0Xx3NGICOtJ
         GLnoF5K2VDKwCvyZEn8C+i4BawsJfTiA+L1p1HNAhY+JialJZ1wHnyoiUgH0dO7cbNB1
         8k9HydGqosjV4NLfb40/2+CcV4Pmme9203zsGXu8Vk+q0xUP7LNsLb2tu6JzKUrT1ZVx
         QbyPpoqLiQISDpXfi6fC8V5GCoYHNJVSosGSP6xqIoD+LesXtRW1M1D7najhH1+cHsed
         JxgJSlbO4WcNdpsfLis0wX5zAPM1IxbvVz3K6G9OzYdZq1u5KMug6tWK6S0wSeeBluH1
         2mIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=4rlsuD2HI/LPFp/FQ4PrdP3/e+6EwmftFTryIho5EtI=;
        b=Mo3Pn9YNPJJJ0ULZixlkg7VHKmJv99KGyspoRd9gX7WcP4gIkToPurJyrQa52LjNlP
         tPY34gWCYGzGGEhgbQJ2foq2uBVqOaGdCbng6c+OH7j2oFID1pNxK31z97oursJxppt7
         yK7+ZAKvGwkvy6HZbwNZJmxBHE/jJh9sNcsAik74pfqPAwiRDaEfQiRlqEUjNLZ7Inuq
         JwjRkQ9RnBFeox6dqCsXmCCPvSRhokGSqm72FNbcH8yYvZGiz3TCYvZLC1c33BcbQzD4
         YB9JeK3NtjYp7CxYqvHVVvFkipSSMF8cSTdD4uBH+ffvb5UBSYLa+4G8Qbf9ssOV4yzm
         asvA==
X-Gm-Message-State: AElRT7G6C78PZBiMbG+AbLznYs8Qj2SPjmc/Z5FS7qCHdKa8NsiYwheK
	jZTAXY4o++tJ7sI+85+Z3mY2JSbFc/C928T0iPc=
X-Received: by 10.46.43.219 with SMTP id r88mr2512607ljr.26.1520743276220;
 Sat, 10 Mar 2018 20:41:16 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a19:1acb:0:0:0:0:0 with HTTP; Sat, 10 Mar 2018 20:41:15
 -0800 (PST)
In-Reply-To: <CAK-LDb+gvj8mut-_5oA5Ryb72iAMPVX=49239gSCVr2Q6PdgyA@mail.gmail.com>
References: <20180310183906.GA20125@seema-Inspiron-15-3567> <CAK-LDb+gvj8mut-_5oA5Ryb72iAMPVX=49239gSCVr2Q6PdgyA@mail.gmail.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sun, 11 Mar 2018 10:11:15 +0530
Message-ID: <CA+XqjF-5-XjEpYeSASm5J+XR2KHxvPDZOD22LYNMcMAcB259sQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH Netfilter] net: netfilter: Replace
 printk() with more standardize output format.
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
	Florian Westphal <fw@strlen.de>, "David S. Miller" <davem@davemloft.net>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="94eb2c070e72c6147005671ba25a"

--94eb2c070e72c6147005671ba25a
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 11, 2018 at 9:11 AM, Vaishali Thakkar <vthakkar1994@gmail.com>
wrote:

> On Sun, Mar 11, 2018 at 12:09 AM, Arushi Singhal
> <arushisinghal19971997@gmail.com> wrote:
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
>
> Hi Arushi,
>
> As mentioned in the IRC chat for Outreachy applicants, please drop
> outreachy-kernel mailing list while sending patches to other subsystems
> than drivers/staging to avoid confusion.
>
> Hello Vaishali

I know, but netfilter is the part of the outreachy project.

Want to clarify if project patches need to be send on kernel mailing list
or not?

 Arushi

> Thank you!
>
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
> >         net->ct.acct_sysctl_header = register_net_sysctl(net,
> "net/netfilter",
> >                                                          table);
> >         if (!net->ct.acct_sysctl_header) {
> > -               printk(KERN_ERR "nf_conntrack_acct: can't register to
> sysctl.\n");
> > +               netdev_err(net->loopback_dev, "nf_conntrack_acct: can't
> register to sysctl.\n");
> >                 goto out_register;
> >         }
> >         return 0;
> > diff --git a/net/netfilter/nf_conntrack_ecache.c
> b/net/netfilter/nf_conntrack_ecache.c
> > index caac41a..c1fb296 100644
> > --- a/net/netfilter/nf_conntrack_ecache.c
> > +++ b/net/netfilter/nf_conntrack_ecache.c
> > @@ -372,7 +372,7 @@ static int nf_conntrack_event_init_sysctl(struct
> net *net)
> >         net->ct.event_sysctl_header =
> >                 register_net_sysctl(net, "net/netfilter", table);
> >         if (!net->ct.event_sysctl_header) {
> > -               printk(KERN_ERR "nf_ct_event: can't register to
> sysctl.\n");
> > +               netdev_err(net->loopback_dev, "nf_ct_event: can't
> register to sysctl.\n");
> >                 goto out_register;
> >         }
> >         return 0;
> > diff --git a/net/netfilter/nf_conntrack_timestamp.c
> b/net/netfilter/nf_conntrack_timestamp.c
> > index 4c4734b..abd9fbd 100644
> > --- a/net/netfilter/nf_conntrack_timestamp.c
> > +++ b/net/netfilter/nf_conntrack_timestamp.c
> > @@ -58,7 +58,7 @@ static int nf_conntrack_tstamp_init_sysctl(struct net
> *net)
> >         net->ct.tstamp_sysctl_header = register_net_sysctl(net,
> "net/netfilter",
> >                                                            table);
> >         if (!net->ct.tstamp_sysctl_header) {
> > -               printk(KERN_ERR "nf_ct_tstamp: can't register to
> sysctl.\n");
> > +               netdev_err(net->loopback_dev, "nf_ct_tstamp: can't
> register to sysctl.\n");
> >                 goto out_register;
> >         }
> >         return 0;
> > diff --git a/net/netfilter/nf_nat_core.c b/net/netfilter/nf_nat_core.c
> > index 6c38421..dcda5ac 100644
> > --- a/net/netfilter/nf_nat_core.c
> > +++ b/net/netfilter/nf_nat_core.c
> > @@ -814,7 +814,7 @@ static int __init nf_nat_init(void)
> >         ret = nf_ct_extend_register(&nat_extend);
> >         if (ret < 0) {
> >                 nf_ct_free_hashtable(nf_nat_bysource,
> nf_nat_htable_size);
> > -               printk(KERN_ERR "nf_nat_core: Unable to register
> extension\n");
> > +               pr_err("nf_nat_core: Unable to register extension\n");
> >                 return ret;
> >         }
> >
> > diff --git a/net/netfilter/nfnetlink_queue.c b/net/netfilter/nfnetlink_
> queue.c
> > index 8bba231..4b4bef5 100644
> > --- a/net/netfilter/nfnetlink_queue.c
> > +++ b/net/netfilter/nfnetlink_queue.c
> > @@ -834,8 +834,8 @@ nfqnl_mangle(void *data, int data_len, struct
> nf_queue_entry *e, int diff)
> >                         nskb = skb_copy_expand(e->skb,
> skb_headroom(e->skb),
> >                                                diff, GFP_ATOMIC);
> >                         if (!nskb) {
> > -                               printk(KERN_WARNING "nf_queue: OOM "
> > -                                     "in mangle, dropping packet\n");
> > +                               netdev_warn(nskb->dev, "nf_queue: OOM "
> > +                                           "in mangle, dropping
> packet\n");
> >                                 return -ENOMEM;
> >                         }
> >                         kfree_skb(e->skb);
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20180310183906.GA20125%40seema-Inspiron-15-3567.
> > For more options, visit https://groups.google.com/d/optout.
>
>
>
> --
> Vaishali
> http://vaishalithakkar.in/
>

--94eb2c070e72c6147005671ba25a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Mar 11, 2018 at 9:11 AM, Vaishali Thakkar <span dir=3D"ltr">&lt=
;<a href=3D"mailto:vthakkar1994@gmail.com">vthakkar1994@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sun, Mar=
 11, 2018 at 12:09 AM, Arushi Singhal<br>
&lt;<a href=3D"mailto:arushisinghal19971997@gmail.com">arushisinghal1997199=
7@gmail.<wbr>com</a>&gt; wrote:<br>
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
<br>
</span>Hi Arushi,<br>
<br>
As mentioned in the IRC chat for Outreachy applicants, please drop<br>
outreachy-kernel mailing list while sending patches to other subsystems<br>
than drivers/staging to avoid confusion.<br>
<br></blockquote><div>Hello Vaishali<br><br></div><div>I know, but netfilte=
r is the part of the outreachy project.<br><br></div><div>Want to clarify i=
f project patches need to be send on kernel mailing list or not?<br><br></d=
iv><div>=C2=A0Arushi<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Thank you!<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
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
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ct.acct_sysctl_header =3D reg=
ister_net_sysctl(net, &quot;net/netfilter&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 table);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!net-&gt;ct.acct_sysctl_header) {=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ER=
R &quot;nf_conntrack_acct: can&#39;t register to sysctl.\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(net=
-&gt;loopback_dev, &quot;nf_conntrack_acct: can&#39;t register to sysctl.\n=
&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out_=
register;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; diff --git a/net/netfilter/nf_conntrack_<wbr>ecache.c b/net/netfilter/=
nf_conntrack_<wbr>ecache.c<br>
&gt; index caac41a..c1fb296 100644<br>
&gt; --- a/net/netfilter/nf_conntrack_<wbr>ecache.c<br>
&gt; +++ b/net/netfilter/nf_conntrack_<wbr>ecache.c<br>
&gt; @@ -372,7 +372,7 @@ static int nf_conntrack_event_init_<wbr>sysctl(str=
uct net *net)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ct.event_sysctl_header =3D<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0register_=
net_sysctl(net, &quot;net/netfilter&quot;, table);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!net-&gt;ct.event_sysctl_header) =
{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ER=
R &quot;nf_ct_event: can&#39;t register to sysctl.\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(net=
-&gt;loopback_dev, &quot;nf_ct_event: can&#39;t register to sysctl.\n&quot;=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out_=
register;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; diff --git a/net/netfilter/nf_conntrack_<wbr>timestamp.c b/net/netfilt=
er/nf_conntrack_<wbr>timestamp.c<br>
&gt; index 4c4734b..abd9fbd 100644<br>
&gt; --- a/net/netfilter/nf_conntrack_<wbr>timestamp.c<br>
&gt; +++ b/net/netfilter/nf_conntrack_<wbr>timestamp.c<br>
&gt; @@ -58,7 +58,7 @@ static int nf_conntrack_tstamp_init_<wbr>sysctl(stru=
ct net *net)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net-&gt;ct.tstamp_sysctl_header =3D r=
egister_net_sysctl(net, &quot;net/netfilter&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 table);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!net-&gt;ct.tstamp_sysctl_<wbr>he=
ader) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ER=
R &quot;nf_ct_tstamp: can&#39;t register to sysctl.\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(net=
-&gt;loopback_dev, &quot;nf_ct_tstamp: can&#39;t register to sysctl.\n&quot=
;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out_=
register;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; diff --git a/net/netfilter/nf_nat_core.c b/net/netfilter/nf_nat_core.c=
<br>
&gt; index 6c38421..dcda5ac 100644<br>
&gt; --- a/net/netfilter/nf_nat_core.c<br>
&gt; +++ b/net/netfilter/nf_nat_core.c<br>
&gt; @@ -814,7 +814,7 @@ static int __init nf_nat_init(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D nf_ct_extend_register(&amp;na=
t_<wbr>extend);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nf_ct_fre=
e_hashtable(nf_nat_<wbr>bysource, nf_nat_htable_size);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ER=
R &quot;nf_nat_core: Unable to register extension\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_err(&quot;n=
f_nat_core: Unable to register extension\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return re=
t;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; diff --git a/net/netfilter/nfnetlink_<wbr>queue.c b/net/netfilter/nfne=
tlink_<wbr>queue.c<br>
&gt; index 8bba231..4b4bef5 100644<br>
&gt; --- a/net/netfilter/nfnetlink_<wbr>queue.c<br>
&gt; +++ b/net/netfilter/nfnetlink_<wbr>queue.c<br>
&gt; @@ -834,8 +834,8 @@ nfqnl_mangle(void *data, int data_len, struct nf_q=
ueue_entry *e, int diff)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0nskb =3D skb_copy_expand(e-&gt;skb, skb_headroom(e-&gt;=
skb),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 diff, GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0if (!nskb) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_WARNING &quot;nf_queu=
e: OOM &quot;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;in man=
gle, dropping packet\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_warn(nskb-&gt;dev, &quot;n=
f_queue: OOM &quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;in mangle, dropping packet\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0kfree_skb(e-&gt;skb);<br>
&gt; --<br>
&gt; 2.7.4<br>
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
gle.com/d/msgid/outreachy-kernel/20180310183906.GA20125%40seema-Inspiron-15=
-3567" rel=3D"noreferrer">https://groups.google.com/d/<wbr>msgid/outreachy-=
kernel/<wbr>20180310183906.GA20125%<wbr>40seema-Inspiron-15-3567</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer">https://groups.google.com/d/<wbr>optout</a>.<br>
<br>
<br>
<br>
--<br>
Vaishali<br>
<a href=3D"http://vaishalithakkar.in/" rel=3D"noreferrer">http://vaishalith=
akkar.in/</a><br>
</font></span></blockquote></div><br></div></div>

--94eb2c070e72c6147005671ba25a--


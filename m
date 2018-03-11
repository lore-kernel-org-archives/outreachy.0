X-GM-THRID: 6531387623906213888
X-Received: by 10.80.142.10 with SMTP id 10mr878965edw.8.1520739710562;
        Sat, 10 Mar 2018 19:41:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.149.144 with SMTP id w16ls5136278eda.4.gmail; Sat, 10 Mar
 2018 19:41:49 -0800 (PST)
X-Google-Smtp-Source: AG47ELt4tj9Nw8+8WLfP7R5Ce0onUMYqDxVDd++tsoW8CnIE0LcGzKwck/Hc0hq0RAHPErbL0yiS
X-Received: by 10.80.189.198 with SMTP id z6mr872576edh.7.1520739709230;
        Sat, 10 Mar 2018 19:41:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520739709; cv=none;
        d=google.com; s=arc-20160816;
        b=bsK8fvhzrOmpm2X9d6rncoLXCh9cc89TPoaX8E5BB91qonPGgcbC3EG5p1GGndsVgz
         SIv33/YJaHOkGMg4mMvuZWAks3+sH6kFb41kwyCyDO5/2NYLAFDSKRjiU23GvAFewRkK
         EOKE8NwIP64vrMP8XzbRQGIGQB+Lf0HnuoGdQ9agSmmr8q3F5RQp3m9wV+2IXG6+HOIv
         5BSN5oPpPk1YanxBXJysTsdYwxOJLnXOISpHvX4dNYxsV5CI76ziN/N24cRtIXWdykeG
         oS2lHrGoyzSNshHBfwFpnd1ORWSc0CBjWzmaVIU9DPcvDVZB2rEaZywkxPKDBwgnTqHs
         Oxug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=dse6YMzyvHquRLpeoCN2q8wK6BPeejGdBDX4ekzBoa0=;
        b=bkbGbRgP+1ZEm89U4VsbuFMSkZs7k5XheyaHJzbTN1V2vJ0oe7+9G4njG3Fc95TvGl
         2XaP2PVoJAp760/uL6mn3+7hZF8pB9w2IJ6TAHeDCiPezmhxQl5WCsdPrVMBHSrmCvh0
         OEP8R3loRnpT7wyuyjBL6yfLMoFyNAHaW036imZVhaouxCy8gBE4NDE8B8ZHYTTfe/XN
         QXsYxUMUISiTHGZLJjWt/jCwIbBdOHZu3gVNWpM1dshh7o3ptdcu/HFKXmRHQmjzwG46
         7AWWVaE2pni7yVJoY/Sq7yrxQNL50H4WHGrKiLp0Pom/oo7Ni8bzSNqaPs2w23IQndKV
         o8Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u7EjX8Wb;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id g21si183914edj.5.2018.03.10.19.41.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Mar 2018 19:41:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u7EjX8Wb;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id y19-v6so18402170lfd.4
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Mar 2018 19:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=dse6YMzyvHquRLpeoCN2q8wK6BPeejGdBDX4ekzBoa0=;
        b=u7EjX8WbCwIB8Pqt66BJ1QOneSx9F11Tkq7scm9piT4qPQj6ZIOiPSjVsrkqFUmS+9
         rWn0QC/a1nvRl+gXe46gb7wiyjgHDmW25lTtYrS/ZXlmzeyGUQ1Pd25p7brmz7RPSJ13
         BD5hF7teYhmWjzBzALnAPILmmMQVlj352yxe9UDtdzPz5DBFnwzv/kM+GAjFplRABYRk
         /xwcIYUeOG0PEsQmZ9QasoNC/ZDr+osAVpgqZqmsJ6srVD3AEPQmMe8i70diPm8PwlAb
         w633rUU9cZDE1mxcL1WnAvqZ8WXkBaPdHT4dsYU72N3+d4gpWGJJ7XjcWAyVuonClqet
         a5Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=dse6YMzyvHquRLpeoCN2q8wK6BPeejGdBDX4ekzBoa0=;
        b=h/bbCXFuKmfGuLao+XYZd4ha10ao9ATf2VH3NKTuAUri+vETIZRdmZeHLmosxXJoIh
         6J3LIDvUYTl0o0QlqZLQcBgAT9OiHaouaxPDDgGRKgWS/xAVi43QlZmigoVz5z5aTY4R
         86pm0GQ3S6dH22oRhOxDBv5QQh4JpjZykBtg//7IDiizL4oh36NYoSIQuHNLVxDPcAIu
         KpGx9QKXDjmdZ96UQDOf/P76Qajnik04v9u2ruwAMk9BwnN15pdFXx/iGNdF1Ert45+b
         VttOBi2Jm/maPi8wUe4bWIE5NWxv9p6YltTwBHgMjpYqTgUveqWq0w3MRKVyLdpnpiJb
         YLxA==
X-Gm-Message-State: AElRT7FSWZhl4nwAG0bOKU78WxPQeVHsvbeSoisUMOC/BcWIOib3JXLV
	u1CL9mcMkLihZWqhSo++89EP097PWTxAlIJgh4k=
X-Received: by 2002:a19:988d:: with SMTP id a135-v6mr2124048lfe.93.1520739708483;
 Sat, 10 Mar 2018 19:41:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.129.212 with HTTP; Sat, 10 Mar 2018 19:41:47 -0800 (PST)
In-Reply-To: <20180310183906.GA20125@seema-Inspiron-15-3567>
References: <20180310183906.GA20125@seema-Inspiron-15-3567>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Sun, 11 Mar 2018 09:11:47 +0530
Message-ID: <CAK-LDb+gvj8mut-_5oA5Ryb72iAMPVX=49239gSCVr2Q6PdgyA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH Netfilter] net: netfilter: Replace
 printk() with more standardize output format.
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
	Florian Westphal <fw@strlen.de>, "David S. Miller" <davem@davemloft.net>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 11, 2018 at 12:09 AM, Arushi Singhal
<arushisinghal19971997@gmail.com> wrote:
> printk() is the raw way to print output and should be avoided.
>
> For drivers with defined "struct device object", dev_*macro() is
> prefer and for "struct netdevice object", netdev_*macro() is prefer over
> dev_*macro() to standardize the output format within the subsystem.
>
> If no "struct device object" is defined prefer pr_*macro() over
> printk().
>
> This patch Replace printk having a log level with the appropriate output
> format according to the order of preference.

Hi Arushi,

As mentioned in the IRC chat for Outreachy applicants, please drop
outreachy-kernel mailing list while sending patches to other subsystems
than drivers/staging to avoid confusion.

Thank you!

> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  net/netfilter/nf_conntrack_acct.c      | 2 +-
>  net/netfilter/nf_conntrack_ecache.c    | 2 +-
>  net/netfilter/nf_conntrack_timestamp.c | 2 +-
>  net/netfilter/nf_nat_core.c            | 2 +-
>  net/netfilter/nfnetlink_queue.c        | 4 ++--
>  5 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/net/netfilter/nf_conntrack_acct.c b/net/netfilter/nf_conntrack_acct.c
> index 8669167..fc7329d 100644
> --- a/net/netfilter/nf_conntrack_acct.c
> +++ b/net/netfilter/nf_conntrack_acct.c
> @@ -80,7 +80,7 @@ static int nf_conntrack_acct_init_sysctl(struct net *net)
>         net->ct.acct_sysctl_header = register_net_sysctl(net, "net/netfilter",
>                                                          table);
>         if (!net->ct.acct_sysctl_header) {
> -               printk(KERN_ERR "nf_conntrack_acct: can't register to sysctl.\n");
> +               netdev_err(net->loopback_dev, "nf_conntrack_acct: can't register to sysctl.\n");
>                 goto out_register;
>         }
>         return 0;
> diff --git a/net/netfilter/nf_conntrack_ecache.c b/net/netfilter/nf_conntrack_ecache.c
> index caac41a..c1fb296 100644
> --- a/net/netfilter/nf_conntrack_ecache.c
> +++ b/net/netfilter/nf_conntrack_ecache.c
> @@ -372,7 +372,7 @@ static int nf_conntrack_event_init_sysctl(struct net *net)
>         net->ct.event_sysctl_header =
>                 register_net_sysctl(net, "net/netfilter", table);
>         if (!net->ct.event_sysctl_header) {
> -               printk(KERN_ERR "nf_ct_event: can't register to sysctl.\n");
> +               netdev_err(net->loopback_dev, "nf_ct_event: can't register to sysctl.\n");
>                 goto out_register;
>         }
>         return 0;
> diff --git a/net/netfilter/nf_conntrack_timestamp.c b/net/netfilter/nf_conntrack_timestamp.c
> index 4c4734b..abd9fbd 100644
> --- a/net/netfilter/nf_conntrack_timestamp.c
> +++ b/net/netfilter/nf_conntrack_timestamp.c
> @@ -58,7 +58,7 @@ static int nf_conntrack_tstamp_init_sysctl(struct net *net)
>         net->ct.tstamp_sysctl_header = register_net_sysctl(net, "net/netfilter",
>                                                            table);
>         if (!net->ct.tstamp_sysctl_header) {
> -               printk(KERN_ERR "nf_ct_tstamp: can't register to sysctl.\n");
> +               netdev_err(net->loopback_dev, "nf_ct_tstamp: can't register to sysctl.\n");
>                 goto out_register;
>         }
>         return 0;
> diff --git a/net/netfilter/nf_nat_core.c b/net/netfilter/nf_nat_core.c
> index 6c38421..dcda5ac 100644
> --- a/net/netfilter/nf_nat_core.c
> +++ b/net/netfilter/nf_nat_core.c
> @@ -814,7 +814,7 @@ static int __init nf_nat_init(void)
>         ret = nf_ct_extend_register(&nat_extend);
>         if (ret < 0) {
>                 nf_ct_free_hashtable(nf_nat_bysource, nf_nat_htable_size);
> -               printk(KERN_ERR "nf_nat_core: Unable to register extension\n");
> +               pr_err("nf_nat_core: Unable to register extension\n");
>                 return ret;
>         }
>
> diff --git a/net/netfilter/nfnetlink_queue.c b/net/netfilter/nfnetlink_queue.c
> index 8bba231..4b4bef5 100644
> --- a/net/netfilter/nfnetlink_queue.c
> +++ b/net/netfilter/nfnetlink_queue.c
> @@ -834,8 +834,8 @@ nfqnl_mangle(void *data, int data_len, struct nf_queue_entry *e, int diff)
>                         nskb = skb_copy_expand(e->skb, skb_headroom(e->skb),
>                                                diff, GFP_ATOMIC);
>                         if (!nskb) {
> -                               printk(KERN_WARNING "nf_queue: OOM "
> -                                     "in mangle, dropping packet\n");
> +                               netdev_warn(nskb->dev, "nf_queue: OOM "
> +                                           "in mangle, dropping packet\n");
>                                 return -ENOMEM;
>                         }
>                         kfree_skb(e->skb);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180310183906.GA20125%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/


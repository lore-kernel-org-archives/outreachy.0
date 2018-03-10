X-GM-THRID: 6531387623906213888
X-Received: by 10.46.122.16 with SMTP id v16mr161770ljc.44.1520709206094;
        Sat, 10 Mar 2018 11:13:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:d95a:: with SMTP id q87-v6ls1128644lfg.0.gmail; Sat, 10
 Mar 2018 11:13:23 -0800 (PST)
X-Google-Smtp-Source: AG47ELuBuVuVWq/gksZn4/yCaso+Zt2TpfbDDoK8RPPrFKzfFyHmOF2qu6cU/G6+B8UgEtTtkzi9
X-Received: by 2002:a19:ca12:: with SMTP id a18-v6mr163312lfg.38.1520709203689;
        Sat, 10 Mar 2018 11:13:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520709203; cv=none;
        d=google.com; s=arc-20160816;
        b=M3G3rG/BgfofM8U16EVIDZZjQpUtJTIM5e8reTZfWdxCq2S7zYeJDjg9v4ZyciAmjP
         FcTgWMOgCfP56sMW4HYTWo24kHJDF0s9mDlzZPXI/ZJg7GpKg1MrHdjVcuNMyd2+lPPe
         LTzu/NEjh3e+xqscnjghNvNBoFoNCw4GXjZ+EJA2fFTOqHcbdAK29sWO8n4Nghc0teIK
         d2FACamPYy/7/cdVZxuuMGgsjxSCbmCP/CpCv06499cvuu6Qt+ob4/Nc8/358Ew4tws6
         V0kSvY1u4izxwwgsnsD0VsIO3v/ZDU8kl1ovCLEeS422j8aKiv0c2BCwuuLiGnI6AFIz
         ED4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=NgFK/W43VVMOfrFbithFCI15DCflDFVoHXrGtETFcag=;
        b=M/T8Qq/EbA2rMnA2iDw1k7LCd09EplNPz3tOa8rkcBhtOyteWvZfIh3rIhJjNmuzOO
         2Cml0rzeIa1ng42KWa7B6ZJ01CKGqH/DaJfdSYE9d/iw864UKb06Ocpk+l+6MFuX16cA
         DsES19+8Ib2IT1oKdjB/03vYa3t60ur756HZBSyTbhS0SiP/f57GzYv9mTAYWhgoGhiP
         8ZxrMTk29sgJA+ah2Aw9d8HOzdUYov05CmINMWFXuAhtT8KyOR6D6pfTt39MTNZQxoCN
         SEh4cxtVZ/CX/Lm4gaKCQg1ND7hHVur/PgHYBnoI43U5BRikQtfVR21fqW3pmSx6HgkR
         Ws8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id z79-v6si143954lfd.1.2018.03.10.11.13.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Mar 2018 11:13:23 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id C09D2443837
	for <outreachy-kernel@googlegroups.com>; Sat, 10 Mar 2018 20:13:19 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B08BFDA7E0
	for <outreachy-kernel@googlegroups.com>; Sat, 10 Mar 2018 20:13:19 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 9AF5BDA808; Sat, 10 Mar 2018 20:13:19 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.0 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 8F6A1DA787;
	Sat, 10 Mar 2018 20:13:17 +0100 (CET)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Sat, 10 Mar 2018 20:13:17 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 67A8B4265A2F;
	Sat, 10 Mar 2018 20:13:17 +0100 (CET)
Date: Sat, 10 Mar 2018 20:13:18 +0100
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	outreachy-kernel@googlegroups.com, netfilter-devel@vger.kernel.org
Subject: Re: [PATCH Netfilter] net: netfilter: Replace printk() with more
 standardize output format.
Message-ID: <20180310191318.nworqblow4n4k2lq@salvia>
References: <20180310183906.GA20125@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180310183906.GA20125@seema-Inspiron-15-3567>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Mar 11, 2018 at 12:09:07AM +0530, Arushi Singhal wrote:
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
> 
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
>  	net->ct.acct_sysctl_header = register_net_sysctl(net, "net/netfilter",
>  							 table);
>  	if (!net->ct.acct_sysctl_header) {
> -		printk(KERN_ERR "nf_conntrack_acct: can't register to sysctl.\n");
> +		netdev_err(net->loopback_dev, "nf_conntrack_acct: can't register to sysctl.\n");

Please, use pr_err instead.

And while you are at it, add

#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

whenever possible, thanks!

P.S: Send your netfilter patches to netfilter-devel@vger.kernel.org.

>  		goto out_register;
>  	}
>  	return 0;
> diff --git a/net/netfilter/nf_conntrack_ecache.c b/net/netfilter/nf_conntrack_ecache.c
> index caac41a..c1fb296 100644
> --- a/net/netfilter/nf_conntrack_ecache.c
> +++ b/net/netfilter/nf_conntrack_ecache.c
> @@ -372,7 +372,7 @@ static int nf_conntrack_event_init_sysctl(struct net *net)
>  	net->ct.event_sysctl_header =
>  		register_net_sysctl(net, "net/netfilter", table);
>  	if (!net->ct.event_sysctl_header) {
> -		printk(KERN_ERR "nf_ct_event: can't register to sysctl.\n");
> +		netdev_err(net->loopback_dev, "nf_ct_event: can't register to sysctl.\n");
>  		goto out_register;
>  	}
>  	return 0;
> diff --git a/net/netfilter/nf_conntrack_timestamp.c b/net/netfilter/nf_conntrack_timestamp.c
> index 4c4734b..abd9fbd 100644
> --- a/net/netfilter/nf_conntrack_timestamp.c
> +++ b/net/netfilter/nf_conntrack_timestamp.c
> @@ -58,7 +58,7 @@ static int nf_conntrack_tstamp_init_sysctl(struct net *net)
>  	net->ct.tstamp_sysctl_header = register_net_sysctl(net,	"net/netfilter",
>  							   table);
>  	if (!net->ct.tstamp_sysctl_header) {
> -		printk(KERN_ERR "nf_ct_tstamp: can't register to sysctl.\n");
> +		netdev_err(net->loopback_dev, "nf_ct_tstamp: can't register to sysctl.\n");
>  		goto out_register;
>  	}
>  	return 0;
> diff --git a/net/netfilter/nf_nat_core.c b/net/netfilter/nf_nat_core.c
> index 6c38421..dcda5ac 100644
> --- a/net/netfilter/nf_nat_core.c
> +++ b/net/netfilter/nf_nat_core.c
> @@ -814,7 +814,7 @@ static int __init nf_nat_init(void)
>  	ret = nf_ct_extend_register(&nat_extend);
>  	if (ret < 0) {
>  		nf_ct_free_hashtable(nf_nat_bysource, nf_nat_htable_size);
> -		printk(KERN_ERR "nf_nat_core: Unable to register extension\n");
> +		pr_err("nf_nat_core: Unable to register extension\n");
>  		return ret;
>  	}
>  
> diff --git a/net/netfilter/nfnetlink_queue.c b/net/netfilter/nfnetlink_queue.c
> index 8bba231..4b4bef5 100644
> --- a/net/netfilter/nfnetlink_queue.c
> +++ b/net/netfilter/nfnetlink_queue.c
> @@ -834,8 +834,8 @@ nfqnl_mangle(void *data, int data_len, struct nf_queue_entry *e, int diff)
>  			nskb = skb_copy_expand(e->skb, skb_headroom(e->skb),
>  					       diff, GFP_ATOMIC);
>  			if (!nskb) {
> -				printk(KERN_WARNING "nf_queue: OOM "
> -				      "in mangle, dropping packet\n");
> +				netdev_warn(nskb->dev, "nf_queue: OOM "
> +					    "in mangle, dropping packet\n");
>  				return -ENOMEM;
>  			}
>  			kfree_skb(e->skb);
> -- 
> 2.7.4
> 


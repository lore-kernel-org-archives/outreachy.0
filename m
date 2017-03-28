X-GM-THRID: 6402531164952723456
X-Received: by 10.176.7.210 with SMTP id d18mr8196608uaf.41.1490713214510;
        Tue, 28 Mar 2017 08:00:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.197 with SMTP id t66ls4888749ioi.25.gmail; Tue, 28 Mar
 2017 08:00:13 -0700 (PDT)
X-Received: by 10.99.44.8 with SMTP id s8mr1831939pgs.148.1490713213603;
        Tue, 28 Mar 2017 08:00:13 -0700 (PDT)
Received: by 10.202.107.131 with SMTP id g125msoic;
        Tue, 28 Mar 2017 06:51:07 -0700 (PDT)
X-Received: by 10.157.16.117 with SMTP id o50mr9770279oto.78.1490709067793;
        Tue, 28 Mar 2017 06:51:07 -0700 (PDT)
Return-Path: <jengelh@inai.de>
Received: from a3.inai.de (a3.inai.de. [2a01:4f8:162:73ab::58c6:b4a1])
        by gmr-mx.google.com with ESMTPS id f73si353066ita.1.2017.03.28.06.51.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 06:51:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) client-ip=2a01:4f8:162:73ab::58c6:b4a1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) smtp.mailfrom=jengelh@inai.de
Received: by a3.inai.de (Postfix, from userid 25121)
	id EC8B6193F387A; Tue, 28 Mar 2017 15:51:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by a3.inai.de (Postfix) with ESMTP id EB0321C57EA2;
	Tue, 28 Mar 2017 15:51:05 +0200 (CEST)
Date: Tue, 28 Mar 2017 15:51:05 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: simran singhal <singhalsimran0@gmail.com>
cc: pablo@netfilter.org, kadlec@blackhole.kfki.hu, davem@davemloft.net, 
    netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
    netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    Stephen Hemminger <stephen@networkplumber.org>, 
    Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, James Morris <jmorris@namei.org>, 
    Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
    Patrick McHardy <kaber@trash.net>, bridge@lists.linux-foundation.org
Subject: Re: [PATCH] net: Remove unnecessary cast on void pointer
In-Reply-To: <20170328125048.GA25091@singhal-Inspiron-5558>
Message-ID: <alpine.LSU.2.20.1703281548580.21255@n3.vanv.qr>
References: <20170328125048.GA25091@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (LSU 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tuesday 2017-03-28 14:50, simran singhal wrote:

>The following Coccinelle script was used to detect this:
>@r@
>expression x;
>void* e;
>type T;
>identifier f;
>@@
>(
>  *((T *)e)
>|
>  ((T *)x)[...]
>|
>  ((T*)x)->f
>|
>
>- (T*)
>  e
>)
>
>Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>---
> net/bridge/netfilter/ebtables.c         |  2 +-
> net/ipv4/netfilter/arp_tables.c         | 20 ++++++++------------
> net/ipv4/netfilter/ip_tables.c          | 20 ++++++++------------
> net/ipv6/netfilter/ip6_tables.c         | 20 ++++++++------------
> net/netfilter/ipset/ip_set_bitmap_gen.h |  4 ++--
> net/netfilter/ipset/ip_set_core.c       |  2 +-
> net/netfilter/nf_conntrack_proto.c      |  2 +-
> net/netfilter/nft_set_hash.c            |  2 +-
> net/netfilter/xt_hashlimit.c            | 10 +++++-----
> 9 files changed, 35 insertions(+), 47 deletions(-)
>
>diff --git a/net/bridge/netfilter/ebtables.c b/net/bridge/netfilter/ebtables.c
>index 79b6991..bdc629e 100644
>--- a/net/bridge/netfilter/ebtables.c
>+++ b/net/bridge/netfilter/ebtables.c
>@@ -1713,7 +1713,7 @@ static int compat_copy_entry_to_user(struct ebt_entry *e, void __user **dstptr,
> 	if (*size < sizeof(*ce))
> 		return -EINVAL;
> 
>-	ce = (struct ebt_entry __user *)*dstptr;
>+	ce = *dstptr;
> 	if (copy_to_user(ce, e, sizeof(*ce)))
> 		return -EFAULT;
> 
>diff --git a/net/ipv4/netfilter/arp_tables.c b/net/ipv4/netfilter/arp_tables.c
>index 6241a81..f046c12 100644
>--- a/net/ipv4/netfilter/arp_tables.c
>+++ b/net/ipv4/netfilter/arp_tables.c
>@@ -310,7 +310,7 @@ static int mark_source_chains(const struct xt_table_info *newinfo,
> 	for (hook = 0; hook < NF_ARP_NUMHOOKS; hook++) {
> 		unsigned int pos = newinfo->hook_entry[hook];
> 		struct arpt_entry *e
>-			= (struct arpt_entry *)(entry0 + pos);
>+			= (entry0 + pos);

At this point you can also drop the now-unnecessary parentheses in all 
the lines you changed.


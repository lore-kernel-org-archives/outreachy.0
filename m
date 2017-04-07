X-GM-THRID: 6402837556844560384
X-Received: by 10.46.80.79 with SMTP id v15mr4280714ljd.27.1491581723396;
        Fri, 07 Apr 2017 09:15:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.147 with SMTP id m141ls2896339lfm.8.gmail; Fri, 07 Apr
 2017 09:15:21 -0700 (PDT)
X-Received: by 10.25.215.220 with SMTP id q89mr717029lfi.28.1491581721022;
        Fri, 07 Apr 2017 09:15:21 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id w130si387730wmf.0.2017.04.07.09.15.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 09:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id A6BB91373AF
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 18:15:17 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 8E8D6DA398
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 18:15:17 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 7A1D7DA39A; Fri,  7 Apr 2017 18:15:17 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 48BBADA874
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 18:15:15 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Fri, 07 Apr 2017 18:15:15 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 24381 invoked from network); 7 Apr 2017 18:15:14 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Apr 2017 18:15:14 +0200
Date: Fri, 7 Apr 2017 18:15:07 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	James Morris <jmorris@namei.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Patrick McHardy <kaber@trash.net>, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] net: ipv6: netfilter: Format block
 comments.
Message-ID: <20170407161507.GA9367@salvia>
References: <20170329083943.GA23844@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170329083943.GA23844@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 29, 2017 at 02:09:43PM +0530, Arushi Singhal wrote:
> Fix checkpatch warnings:
> WARNING: Block comments use a trailing */ on a separate line
> WARNING: Block comments use * on subsequent lines
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  net/ipv6/netfilter/ip6_tables.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/net/ipv6/netfilter/ip6_tables.c b/net/ipv6/netfilter/ip6_tables.c
> index b8cb61c27aa1..ac69ce3bfa1e 100644
> --- a/net/ipv6/netfilter/ip6_tables.c
> +++ b/net/ipv6/netfilter/ip6_tables.c
> @@ -51,14 +51,14 @@ void *ip6t_alloc_initial_table(const struct xt_table *info)
>  }
>  EXPORT_SYMBOL_GPL(ip6t_alloc_initial_table);
>  
> -/*
> -   We keep a set of rules for each CPU, so we can avoid write-locking
> -   them in the softirq when updating the counters and therefore
> -   only need to read-lock in the softirq; doing a write_lock_bh() in user
> -   context stops packets coming through and allows user context to read
> -   the counters or update the rules.
> -
> -   Hence the start of any table is given by get_table() below.  */
> +/* We keep a set of rules for each CPU, so we can avoid write-locking
> + * them in the softirq when updating the counters and therefore
> + * only need to read-lock in the softirq; doing a write_lock_bh() in user
> + * context stops packets coming through and allows user context to read
> + * the counters or update the rules.
> + *
> + * Hence the start of any table is given by get_table() below.
> + */

This comment is obsolete and should go.

We have no set of rules per CPU anymore.


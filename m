X-GM-THRID: 6389618895817277440
X-Received: by 10.46.33.163 with SMTP id h35mr3343577lji.17.1487709616953;
        Tue, 21 Feb 2017 12:40:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.89 with SMTP id k86ls5015lfi.7.gmail; Tue, 21 Feb 2017
 12:40:15 -0800 (PST)
X-Received: by 10.46.33.82 with SMTP id h79mr3128364ljh.7.1487709615968;
        Tue, 21 Feb 2017 12:40:15 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0122.hostedemail.com. [216.40.44.122])
        by gmr-mx.google.com with ESMTPS id 14si1188365wmn.2.2017.02.21.12.40.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 12:40:15 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.122 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.122;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.122 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id EFE879EA1C;
	Tue, 21 Feb 2017 20:40:13 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::,RULES_HIT:41:355:379:541:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3868:3872:3874:4321:5007:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12296:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:30034:30054:30056:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: alley72_59141976ee021
X-Filterd-Recvd-Size: 2378
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Tue, 21 Feb 2017 20:40:12 +0000 (UTC)
Message-ID: <1487709610.2853.39.camel@perches.com>
Subject: Re: [PATCH 5/6] staging: lustre: Using macro DIV_ROUND_UP
From: Joe Perches <joe@perches.com>
To: simran singhal <singhalsimran0@gmail.com>, oleg.drokin@intel.com
Cc: andreas.dilger@intel.com, jsimmons@infradead.org, 
	gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Tue, 21 Feb 2017 12:40:10 -0800
In-Reply-To: <20170221174631.GA22466@singhal-Inspiron-5558>
References: <20170221174631.GA22466@singhal-Inspiron-5558>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2017-02-21 at 23:16 +0530, simran singhal wrote:
> The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
> It clarifies the divisor calculations. This occurence was detected using
> the coccinelle script:
> 
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> > 
> 
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )

Coccinelle scripts are great but please
inspect the results for appropriate style
and simplify the patch where possible.

> diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
[]
> @@ -3136,8 +3136,7 @@ void ptlrpc_set_bulk_mbits(struct ptlrpc_request *req)
>  	 * that server can infer the number of bulks that were prepared,
>  	 * see LU-1431
>  	 */
> -	req->rq_mbits += ((bd->bd_iov_count + LNET_MAX_IOV - 1) /
> -			  LNET_MAX_IOV) - 1;
> +	req->rq_mbits += (DIV_ROUND_UP(bd->bd_iov_count, LNET_MAX_IOV)) - 1;

Unnecessary parentheses.

> diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
[]
> @@ -272,7 +272,7 @@ static unsigned long enc_pools_shrink_scan(struct shrinker *s,
>  static inline
>  int npages_to_npools(unsigned long npages)
>  {
> -	return (int)((npages + PAGES_PER_POOL - 1) / PAGES_PER_POOL);
> +	return (int)(DIV_ROUND_UP(npages, PAGES_PER_POOL));
>  }

Here too.



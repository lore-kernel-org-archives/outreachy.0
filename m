X-GM-THRID: 6391852583766458368
X-Received: by 10.46.69.7 with SMTP id s7mr2027032lja.18.1488223571046;
        Mon, 27 Feb 2017 11:26:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls506598lja.48.gmail; Mon, 27 Feb 2017
 11:26:09 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr1991868lja.13.1488223569573;
        Mon, 27 Feb 2017 11:26:09 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0078.hostedemail.com. [216.40.44.78])
        by gmr-mx.google.com with ESMTPS id f7si879151wmg.3.2017.02.27.11.26.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 11:26:07 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.78 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.78;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.78 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id B35802693A1;
	Mon, 27 Feb 2017 19:25:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:541:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3871:3874:4321:4605:5007:7514:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12296:12438:12555:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:14721:14877:21080:21451:30054:30080:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:4,LUA_SUMMARY:none
X-HE-Tag: dad80_4d5df765b7a05
X-Filterd-Recvd-Size: 2657
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Mon, 27 Feb 2017 19:25:31 +0000 (UTC)
Message-ID: <1488223529.25838.8.camel@perches.com>
Subject: Re: [PATCH 1/5] staging: lustre: Remove unnecessary else after
 return
From: Joe Perches <joe@perches.com>
To: simran singhal <singhalsimran0@gmail.com>, gregkh@linuxfoundation.org
Cc: lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Mon, 27 Feb 2017 11:25:29 -0800
In-Reply-To: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
> This patch fixes the checkpatch warning that else is not generally
> useful after a break or return.

checkpatch doesn't actually warn for this style

	if (foo)
		return bar;
	else
		return baz;

> @@
> expression e2;
> statement s1;
> @@
> if(e2) { ... return ...; }
> -else
>          s1
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 3 +--
>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c      | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> index fbbd8a5..02d49b7 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> @@ -1806,8 +1806,7 @@ ksocknal_close_matching_conns(struct lnet_process_id id, __u32 ipaddr)
>  
>  	if (!count)
>  		return -ENOENT;
> -	else
> -		return 0;
> +	return 0;
>  }
>  
>  void
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> index cf3fc57..ac32c82 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> @@ -338,8 +338,7 @@ static int ldlm_cli_pool_shrink(struct ldlm_pool *pl,
>  
>  	if (nr == 0)
>  		return (unused / 100) * sysctl_vfs_cache_pressure;
> -	else
> -		return ldlm_cancel_lru(ns, nr, LCF_ASYNC, LDLM_LRU_FLAG_SHRINK);
> +	return ldlm_cancel_lru(ns, nr, LCF_ASYNC, LDLM_LRU_FLAG_SHRINK);
>  }
>  
>  static const struct ldlm_pool_ops ldlm_cli_pool_ops = {


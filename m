X-GM-THRID: 6331740910266613760
X-Received: by 10.194.191.138 with SMTP id gy10mr464318wjc.9.1474224229179;
        Sun, 18 Sep 2016 11:43:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.154.14 with SMTP id c14ls87982wme.17.gmail; Sun, 18 Sep
 2016 11:43:48 -0700 (PDT)
X-Received: by 10.28.169.81 with SMTP id s78mr296541wme.13.1474224228460;
        Sun, 18 Sep 2016 11:43:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si1238335wmg.3.2016.09.18.11.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 11:43:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,358,1470693600"; 
   d="scan'208";a="193831518"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Sep 2016 20:43:47 +0200
Date: Sun, 18 Sep 2016 20:43:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Use x instead of x
 != NULL.
In-Reply-To: <20160918182821.GA4646@sandhya>
Message-ID: <alpine.DEB.2.10.1609182042160.3350@hadrien>
References: <20160918182821.GA4646@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 18 Sep 2016, Sandhya Bankar wrote:

> This patch was found by checkpatch.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 1ff788e..b078959 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -1701,7 +1701,7 @@ int ll_update_inode(struct inode *inode, struct lustre_md *md)
>  	struct lov_stripe_md *lsm = md->lsm;
>  	struct ll_sb_info *sbi = ll_i2sbi(inode);
>
> -	LASSERT((lsm != NULL) == ((body->mbo_valid & OBD_MD_FLEASIZE) != 0));
> +	LASSERT(lsm == ((body->mbo_valid & OBD_MD_FLEASIZE) != 0));

This is not correct.  I'll let you figure out why.  Think about the types
of the various expressions involved.

julia

>  	if (lsm) {
>  		if (!lli->lli_has_smd &&
>  		    !(sbi->ll_flags & LL_SBI_LAYOUT_LOCK))
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160918182821.GA4646%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>


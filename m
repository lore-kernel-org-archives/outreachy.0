X-GM-THRID: 6472300341971910656
X-Received: by 10.223.165.79 with SMTP id j15mr769663wrb.25.1506950143596;
        Mon, 02 Oct 2017 06:15:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.4 with SMTP id 4ls2048875wmm.11.gmail; Mon, 02 Oct 2017
 06:15:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC413YWwi52SQ0qpQyNVO+pWrgwMfNnjWhd7JBlpWgavSqVsEkIOObAd5DmZbsUmhcY4PXp
X-Received: by 10.28.133.68 with SMTP id h65mr1525149wmd.28.1506950142611;
        Mon, 02 Oct 2017 06:15:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506950142; cv=none;
        d=google.com; s=arc-20160816;
        b=yP4Rbm4y3Ha4AE2ROBpNPNnAI+OIgU0gEslshnvqIFn2LZjJsyV08om3FB+QvH4N+Y
         ix5HXN9x6U9fbn8hERCzctAouD7EAdkodyJRcQVGIBt8TYgirG+LfVNJK41l3Og9ns9T
         7181i/cSy827R8XLz9GAUez1uN5o+XzooIXmWyj2yKjvrFETNvHogY/s4NUAPRWFzgF4
         +4Xh0EA++AoauNaki7ToOUNkhWJdPMZKkM0gDCDjjh+Hsgucg43xp+XmgALoBqRTmCue
         OwwUHs0k92f5M55KDMnGFXo2phKiWH9s+33gO02kFiIXbZmJ2rv+qhhouXuubuRvkwW2
         WF0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=BoAwjtrFnG+tzCotuX4Ex99Iio6dduxk9Lzry0wxJJI=;
        b=iX8yeyVQM0FE8B6oeUuWpJsyNGx714tWhHLnjhAoH+E5bAwRW0ooW2oMaX2ZFz/NdT
         7LSpHcRg+O7UiWOSmjwfoXQZo/cr7bdgPuWU39GY3fKjOhAmz9fz7Ux9xDVMbH0/k5uW
         nVaGvWSJvphJPgJpPW67Dw8vuge/PLvc5btN5KdAhkVPFVHyAEvSD314a6gMTI2RHuWi
         PsrugPqhYiCdGxkhmour6MfIECSm5IRFqaFVsnHFi2zz8NffXayLu+HMJsWgh98aFtIO
         cFad1n1R2EyX5bRdBcWfCdCa9+1JTgr8Sw47WmBhLqFhndAa/HM7uEnS2XOLnMixZXaF
         895w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si1288050wmg.4.2017.10.02.06.15.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 06:15:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,469,1500933600"; 
   d="scan'208";a="293746185"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 15:15:42 +0200
Date: Mon, 2 Oct 2017 15:15:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com, jsimmons@infradead.org, 
    andreas.dilger@intel.com, oleg.drokin@intel.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: use BIT macro
In-Reply-To: <20171002131042.GA12477@manoharreddy>
Message-ID: <alpine.DEB.2.20.1710021514560.3515@hadrien>
References: <20171002131042.GA12477@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 2 Oct 2017, Keerthi Reddy wrote:

> This commit changes changes left shift operator to use BIT macro
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  .../staging/lustre/include/linux/lnet/lib-types.h  | 26 +++++++++++-----------
>  1 file changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
> index eea3b8e..15837a3 100644
> --- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
> +++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
> @@ -160,9 +160,9 @@ struct lnet_libmd {
>  	} md_iov;
>  };
>
> -#define LNET_MD_FLAG_ZOMBIE		(1 << 0)
> -#define LNET_MD_FLAG_AUTO_UNLINK	(1 << 1)
> -#define LNET_MD_FLAG_ABORTED		(1 << 2)
> +#define LNET_MD_FLAG_ZOMBIE		BIT(0)
> +#define LNET_MD_FLAG_AUTO_UNLINK	BIT(1)
> +#define LNET_MD_FLAG_ABORTED		BIT(2)
>
>  struct lnet_test_peer {
>  	/* info about peers we are trying to fail */
> @@ -287,9 +287,9 @@ struct lnet_ni {
>   * of old LNet, so there shouldn't be any compatibility issue
>   */
>  #define LNET_PING_FEAT_INVAL		(0)		/* no feature */
> -#define LNET_PING_FEAT_BASE		(1 << 0)	/* just a ping */
> -#define LNET_PING_FEAT_NI_STATUS	(1 << 1)	/* return NI status */
> -#define LNET_PING_FEAT_RTE_DISABLED	(1 << 2)	/* Routing enabled */
> +#define LNET_PING_FEAT_BASE		BIT(0)	/* just a ping */
> +#define LNET_PING_FEAT_NI_STATUS	BIT(1)	/* return NI status */
> +#define LNET_PING_FEAT_RTE_DISABLED	BIT(2)	/* Routing enabled */
>
>  #define LNET_PING_FEAT_MASK		(LNET_PING_FEAT_BASE | \
>  					 LNET_PING_FEAT_NI_STATUS)
> @@ -440,21 +440,21 @@ struct lnet_rtrbuf {
>
>  enum lnet_match_flags {
>  	/* Didn't match anything */
> -	LNET_MATCHMD_NONE	= (1 << 0),
> +	LNET_MATCHMD_NONE	= BIT(0),
>  	/* Matched OK */
> -	LNET_MATCHMD_OK		= (1 << 1),
> +	LNET_MATCHMD_OK		= BIT(1),
>  	/* Must be discarded */
> -	LNET_MATCHMD_DROP	= (1 << 2),
> +	LNET_MATCHMD_DROP	= BIT(2),
>  	/* match and buffer is exhausted */
> -	LNET_MATCHMD_EXHAUSTED	= (1 << 3),
> +	LNET_MATCHMD_EXHAUSTED	= BIT(3),
>  	/* match or drop */
>  	LNET_MATCHMD_FINISH	= (LNET_MATCHMD_OK | LNET_MATCHMD_DROP),
>  };
>
>  /* Options for lnet_portal::ptl_options */
> -#define LNET_PTL_LAZY		(1 << 0)
> -#define LNET_PTL_MATCH_UNIQUE	(1 << 1)	/* unique match, for RDMA */
> -#define LNET_PTL_MATCH_WILDCARD	(1 << 2)	/* wildcard match,
> +#define LNET_PTL_LAZY		BIT(0)
> +#define LNET_PTL_MATCH_UNIQUE	BIT(1)	/* unique match, for RDMA */
> +#define LNET_PTL_MATCH_WILDCARD	BIT(2)	/* wildcard match,
>  						 * request portal
>  						 */

It looks like the final comment could be on only one line?

julia

>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171002131042.GA12477%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>


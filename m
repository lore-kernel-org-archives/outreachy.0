X-GM-THRID: 6472300341971910656
X-Received: by 10.28.135.132 with SMTP id j126mr1945341wmd.0.1506957155590;
        Mon, 02 Oct 2017 08:12:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.14 with SMTP id r14ls2095842wme.3.canary-gmail; Mon, 02
 Oct 2017 08:12:34 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA/173E1XedeP8pMUUxxXAQYd0KtOfsCBxeY1iZyU3YPKec4x5nLlWW8kxMOYKSxY4f8w5/
X-Received: by 10.28.133.68 with SMTP id h65mr1569291wmd.28.1506957154649;
        Mon, 02 Oct 2017 08:12:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506957154; cv=none;
        d=google.com; s=arc-20160816;
        b=wAPRhg7CJCi75f/43q8zzib+cZwe7W3PbnnXPB6LsLsKBMCeLvnPuKMCP/yNnORAEz
         yVF7C8QrvdmTGsfhsLL0BdG+7LgKwkDEEJyerbT9L44VEKFqMpQ5jxb/RRAjDBlRW1/n
         CRDmng7Px/oObZmcVlOt8q3v5Zj4SUJZsjZSXd9zaJhLEpuMFqp6NHYNsOoVMMhZJn28
         1C/sUiA15yVP9LkRxybb0ip2XlTbmm+srZyMmsSifw60EDK1JHmGRybafIn0j/zCoxbb
         tWirFkHC/EwrRBRfvOO1C4acDbufdSKQvanEE3+t+sQx/rPnoFO5O+OYBJC5LqfJnpj8
         wQ3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=NgfWI50LoK9NmcIJw8QPddwUwpls2XWygJOq2FWYkfo=;
        b=rDGhXmPE42qrEs5Tr00HJW/kOY9oL+cWK4rYt6y6z3mU6t/bxboypPDO9aWrhsVkIN
         7ZeJKLbKGnRvTMw05FYI/PZmZTxFLBYzOrfTG7wUrm2i4wKluFWt2pkF1SuZZgE7HUnW
         uM+SlT9Lq/w9G/Pp+/x/EgzPCtZLTaF7phkiwMwNUgViHC5OBGySptsSlGw4zqSubsBQ
         ZKHTA4sxT6Iy7EAn3MFRWelhAoUhYexWVoT5PWQafrnR6dUN3r9D319ULZGoXuDTFwfk
         U+r3IsBTEqF0grdY5r55HVcT91yCbWQqnNm+kGoxQBgU839UVxFy/ZjI91RPJ59c6Ueb
         uEkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l133si1293853wmb.3.2017.10.02.08.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 08:12:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,469,1500933600"; 
   d="scan'208";a="293776780"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 17:12:34 +0200
Date: Mon, 2 Oct 2017 17:12:32 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com, jsimmons@infradead.org, 
    andreas.dilger@intel.com, oleg.drokin@intel.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: use BIT macro
In-Reply-To: <20171002150623.GA14363@manoharreddy>
Message-ID: <alpine.DEB.2.20.1710021710560.2949@hadrien>
References: <20171002150623.GA14363@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 2 Oct 2017, Keerthi Reddy wrote:

> This commit changes changes left shift operator to use BIT macro
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  changes in v2:
>  convert multi line comment to single line comment
>
>  .../staging/lustre/include/linux/lnet/lib-types.h  | 27 +++++++++++-----------
>  1 file changed, 13 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
> index eea3b8e..72f5b22 100644
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
> @@ -440,22 +440,21 @@ struct lnet_rtrbuf {
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
> -						 * request portal
> +#define LNET_PTL_LAZY		BIT(0)
> +#define LNET_PTL_MATCH_UNIQUE	BIT(1)	/* unique match, for RDMA */
> +#define LNET_PTL_MATCH_WILDCARD	BIT(2)	/* wildcard match, request portal
>  						 */

There is lots of space to the right of portal (even though it doesn't look
like it in the mail message, due to the added > +).  You can put the */ on
the same lien as the rest of the comment.

julia


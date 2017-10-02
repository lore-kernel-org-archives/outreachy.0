X-GM-THRID: 6472300341971910656
X-Received: by 10.223.184.197 with SMTP id c5mr214350wrg.23.1506960108537;
        Mon, 02 Oct 2017 09:01:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.160.247 with SMTP id n52ls3473214wrn.6.gmail; Mon, 02 Oct
 2017 09:01:47 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAWoc7u0NkY/AVALuveC7yAbTUB95jHa9UOt5pq+/8gJhDsFz2WeEr5xumOVhlMqBca0bdB
X-Received: by 10.28.196.79 with SMTP id u76mr1714436wmf.5.1506960107632;
        Mon, 02 Oct 2017 09:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506960107; cv=none;
        d=google.com; s=arc-20160816;
        b=tHwFb4utCTxkLVuWINFh8z9YMCMkPC/d8meDnsPqSAYbGHrepgAkZsovxQ6aW7mq2O
         K5D6cSTUrInJKKuaI98IjzNUHik50xSiowmXCfs9OV7Xo2DkerdMilYKT52EujFT4cOZ
         lv0soO17aIAWJItWfi26LREAgaS7YHYsd6AypUyPVUsGlYaggkgQP+WHXxKDssHQhZZZ
         vCXLgKNjcxG7qKrIywGpWidQ3YYnw9dRWQmuA/rIZq0RsTxHPASzUEfN4gyO/7wXtR+C
         HcLyO/UlH9Z0LgMKYuUVRqlUMqwW3eCuFfRCNdfy2k9ceQswoMMY3Lxn1LxjSJTMV36c
         ooSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=uqx5KgHRtkB4xhtI9Nny/XeaCPQaiu7le6/0Lg95aKw=;
        b=NEzUAxg+7XL1YWtbAsk96wi6MuBFto4JSIyfIXqACZO+WF8yH6I5Eaeupzw2r5zy7r
         qBUw3KPlm5R3TTJjSUS4Ut4KQ/8bcYO/Y6VWyftIAsexbPkyhaHgTSiYhJG6ug1O0Ryt
         fxHoSdS+XpyxEAObTl824opSx2siBiPmG+pNRhOGapkP3Ss5tkqngHhO+Z6cniO+MkY8
         L2zLHiVKxEqwfb9za7cmiJxhqj+PtnFOlij/gsXS5kb6fmmvra4k231C3Qa8k4QntDgb
         e46uaojjocVmXoARxaYZt2Hh17+K+Y0q4/quI6XGNqj6TnYzMFKCjB74eWa6k8lwZa4T
         XVmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si1558093wmj.0.2017.10.02.09.01.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 09:01:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,470,1500933600"; 
   d="scan'208";a="293788297"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 18:01:47 +0200
Date: Mon, 2 Oct 2017 18:01:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com, jsimmons@infradead.org, 
    andreas.dilger@intel.com, oleg.drokin@intel.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: lustre: use BIT macro
In-Reply-To: <20171002153117.GA2109@manoharreddy>
Message-ID: <alpine.DEB.2.20.1710021801330.17762@hadrien>
References: <20171002153117.GA2109@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 2 Oct 2017, Keerthi Reddy wrote:

> This commit changes changes left shift operator to use BIT macro
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  changes in v3:
>  move closing comment '*/' to upperline.
>
>  changes in v2:
>  convert multi line comment to single line comment
>
>  .../staging/lustre/include/linux/lnet/lib-types.h  | 28 ++++++++++------------
>  1 file changed, 13 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
> index eea3b8e..99414c7 100644
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
> @@ -440,23 +440,21 @@ struct lnet_rtrbuf {
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
> -						 */
> +#define LNET_PTL_LAZY		BIT(0)
> +#define LNET_PTL_MATCH_UNIQUE	BIT(1)	/* unique match, for RDMA */
> +#define LNET_PTL_MATCH_WILDCARD	BIT(2)	/* wildcard match, request portal */
>
>  /* parameter for matching operations (GET, PUT) */
>  struct lnet_match_info {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171002153117.GA2109%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>


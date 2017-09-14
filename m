X-GM-THRID: 6465611589668044800
X-Received: by 10.223.185.55 with SMTP id k52mr1445421wrf.23.1505422362523;
        Thu, 14 Sep 2017 13:52:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.232.43 with SMTP id f43ls175995lfh.46.gmail; Thu, 14 Sep
 2017 13:52:40 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBst5xLfdSCW9MAv2HPKddK5krd8fUZav8etFE08+oBnabcyI/+IEM+BMV88aXWDIHQMJZG
X-Received: by 10.46.29.11 with SMTP id d11mr1715443ljd.8.1505422360970;
        Thu, 14 Sep 2017 13:52:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505422360; cv=none;
        d=google.com; s=arc-20160816;
        b=QU76EJKa5LyDcok4LJkGoAQV1u3vCeP6jXVCz30D81w9rf707QBfS06VN2YekefAP4
         fHvXRolcfKIBWTBSCt7K7aO9GjvhcaxANIkEwYyBuOP7+itbusNwJf6f30clFFPWm7ct
         k3xYgGYIz+nfoRMwGwNjWw+TgtuikIF5790sydqR9f9K8EH5vuC3usrefnqKu7/BjphP
         83tQiv3WHnl1iobBH2EsrOvpc4FdrOeJ9gyRYBI4fpfVxJXOV6G3PqyuUsQShuRLm2kp
         F+CsK0xAodHW/ixRyUNA0ZCqd5wkoMbBl9+AuNFWRIhf+kX/nB2BFkGKPQwf/P+rC63j
         IwNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=mHC/sS/zso5/EPANExE8PVbIH+0XsK9sz7IVpkSNFDA=;
        b=GyFYnV3x91qU0DJ8k80eSjJb2vrsqv2E8lZHH4R42bynwLBoc/5x4moNSz43Z7tpn3
         g3YK+A0AwWQJQHOt9DQP9alQPWuPOQuB+qn5X2QRPTi71EYpXG5njo377FT7ii0CeSCG
         HpUnl92QfexBt2bujlDXqGj3HAL+qUuHGtiuaPPLYHF4urIGP7XBc3TO8po4Df2q95aa
         74yq3vq5yyJyI530H1IE0JzUi88NQgouqoXIOHbliRKDw2QFvE1OpTHVUbZ/QHVumv/h
         ulErsxK7/MI55oim8zsjKp2rl3NBt38dVDcLX3c3FIJETFYWqxtI6TTdsgNcHUM6Alep
         yU6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i90si72634wmh.5.2017.09.14.13.52.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 13:52:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,394,1500933600"; 
   d="scan'208";a="291149119"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 22:52:40 +0200
Date: Thu, 14 Sep 2017 22:52:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: lustre: fix macro
 definitions warnings
In-Reply-To: <b2fc843770e35e8fc84e1c4acbdecee869633560.1505421269.git.aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709142251510.4810@hadrien>
References: <alpine.DEB.2.20.1709142137000.2650@hadrien> <cover.1505421269.git.aastha.gupta4104@gmail.com> <b2fc843770e35e8fc84e1c4acbdecee869633560.1505421269.git.aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Aastha Gupta wrote:

> This patch fixes the checkpatch.pl warnings related to macro
> definitions.
> 1. macros with complex values should be enclosed in parentheses.

This one is not represented.

> 2. macros with multiple lines should be enclosed in do-while block.

This one does not cover all of the changes that are made.

julia

> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/lu_object.h | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
> index a3c0481..c8d5e0b 100644
> --- a/drivers/staging/lustre/lustre/include/lu_object.h
> +++ b/drivers/staging/lustre/lustre/include/lu_object.h
> @@ -1151,8 +1151,10 @@ struct lu_context_key {
>  	struct __##mod##__dummy_fini {; } /* semicolon catcher */
>
>  #define LU_KEY_INIT_FINI(mod, type)   \
> +do {					\
>  	LU_KEY_INIT(mod, type);	\
> -	LU_KEY_FINI(mod, type)
> +	LU_KEY_FINI(mod, type); \
> +} while (0)
>
>  #define LU_CONTEXT_KEY_DEFINE(mod, tags)		\
>  	struct lu_context_key mod##_thread_key = {      \
> @@ -1161,10 +1163,8 @@ struct lu_context_key {
>  		.lct_fini = mod##_key_fini	      \
>  	}
>
> -#define LU_CONTEXT_KEY_INIT(key)			\
> -do {						    \
> -	(key)->lct_owner = THIS_MODULE;		 \
> -} while (0)
> +#define LU_CONTEXT_KEY_INIT(key) ((key)->lct_owner = THIS_MODULE)
> +
>
>  int lu_context_key_register(struct lu_context_key *key);
>  void lu_context_key_degister(struct lu_context_key *key);
> @@ -1223,10 +1223,12 @@ void lu_context_key_revive(struct lu_context_key *key);
>  	struct __##mod##_dummy_type_stop {; }
>
>  #define LU_TYPE_INIT_FINI(mod, ...)	     \
> +do {						\
>  	LU_TYPE_INIT(mod, __VA_ARGS__);	 \
>  	LU_TYPE_FINI(mod, __VA_ARGS__);	 \
>  	LU_TYPE_START(mod, __VA_ARGS__);	\
> -	LU_TYPE_STOP(mod, __VA_ARGS__)
> +	LU_TYPE_STOP(mod, __VA_ARGS__);		\
> +} while (0)
>
>  int lu_context_init(struct lu_context *ctx, __u32 tags);
>  void lu_context_fini(struct lu_context *ctx);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b2fc843770e35e8fc84e1c4acbdecee869633560.1505421269.git.aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


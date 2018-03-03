X-GM-THRID: 6528628385749401600
X-Received: by 10.46.89.156 with SMTP id g28mr622027ljf.32.1520090326830;
        Sat, 03 Mar 2018 07:18:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.65.141 with SMTP id d13ls1297109ljf.11.gmail; Sat, 03 Mar
 2018 07:18:44 -0800 (PST)
X-Google-Smtp-Source: AG47ELt/M0uexOU8YY/nUH/kulrZ0M62poqnY8DwSVx9T6Cu6O1E+ANlx74Vopi4fvadL/k3FR9G
X-Received: by 10.46.22.25 with SMTP id w25mr626111ljd.8.1520090324934;
        Sat, 03 Mar 2018 07:18:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520090324; cv=none;
        d=google.com; s=arc-20160816;
        b=b9/N3ZdiiI8TlR7LIfLbA+8CJjyZhQsV5y7cxBoHzSdb7CzXSQDfTfIMpBmYxbDEMS
         crukbKJQVFfDeLLtv0GYeqBBfKE2ttH1lpYxhLgeyt1yULrk1x2fKoHzLL1i59srsFtL
         BnamPqCyzGLsK3w4wJaT/ryXFetpYdkTLkhbBj+LQJphtOt/Quv8EJl6JfHbGgH6MIVW
         9Tg3k3VdL86+5XZMozVYmdxDmwyVULFpwABpSQaqQOMlS2Y59YnrDdXZMtP7Bjm3HL6E
         ITL0rZ4F5gkVh0xE3pEmXqTmbq4WseUxuxL145FTwMLP+YeXWgTWs3R2UNe24cHMne1U
         JYiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=iPetnjDs9NRR/sLC07OflzwBSH/YMfPBm2hq/EdGpNs=;
        b=Sd8WdgP52GDqaPWfJSid25zobrg0Se7xI3YG1lQAJ5zG9PBI9M9+lKEfxthE/0t0p3
         Jfis1wVkzm8V/U9mNvjUhpJYlG3P64nLcKgY8CQHwRssv+zjKj9T/6r6DrT4K1G41l28
         sTiIsgkM8jIm/aIvBk6uByfMeg04zJQa5WiNuVDtXz2Ucu19y4bivYblJPl2nu+Qz2rs
         wLi4fRpZaz6Dox31ZfzrY/8n1qvi+IINk0Z1VzXna/5uGxf7IozuVQ89HGyWO095ceFq
         B12P+P5RPXdVlEvqn4lX3FdODYijwhxHFewRo9GSWALC8u+/hdOxSBbqjI1s7yyKDExv
         IQ5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y2si266444ljd.2.2018.03.03.07.18.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 07:18:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,418,1515452400"; 
   d="scan'208";a="316218824"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 16:18:43 +0100
Date: Sat, 3 Mar 2018 16:18:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: lustre: obdclass: Replace
 'unsigned' with 'unsigned int'
In-Reply-To: <008d96a213ae753dc3f330ca22e09be5471e8ab1.1520014706.git.dafna3@gmail.com>
Message-ID: <alpine.DEB.2.20.1803031618270.2302@hadrien>
References: <cover.1520014706.git.dafna3@gmail.com> <008d96a213ae753dc3f330ca22e09be5471e8ab1.1520014706.git.dafna3@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Mar 2018, Dafna Hirschfeld wrote:

> Replace 'unsigned' with 'unsigned int' to improve readability.
> Issues found with checkpatch.pl
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 2 +-
>  drivers/staging/lustre/lustre/obdclass/lu_object.c      | 8 ++++----
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> index 64cc746..2ed3505 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> @@ -1467,7 +1467,7 @@ int lprocfs_write_frac_u64_helper(const char __user *buffer,
>  {
>  	char kernbuf[22], *end, *pbuf;
>  	__u64 whole, frac = 0, units;
> -	unsigned frac_d = 1;
> +	unsigned int frac_d = 1;
>  	int sign = 1;
>
>  	if (count > (sizeof(kernbuf) - 1))
> diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> index a97b2fe..649eed6 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> @@ -1797,10 +1797,10 @@ int lu_env_refill(struct lu_env *env)
>  EXPORT_SYMBOL(lu_env_refill);
>
>  struct lu_site_stats {
> -	unsigned	lss_populated;
> -	unsigned	lss_max_search;
> -	unsigned	lss_total;
> -	unsigned	lss_busy;
> +	unsigned int	lss_populated;
> +	unsigned int	lss_max_search;
> +	unsigned int	lss_total;
> +	unsigned int	lss_busy;
>  };
>
>  static void lu_site_stats_get(struct cfs_hash *hs,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/008d96a213ae753dc3f330ca22e09be5471e8ab1.1520014706.git.dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6476695783848542208
X-Received: by 10.80.139.209 with SMTP id n17mr1200085edn.10.1507983841181;
        Sat, 14 Oct 2017 05:24:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.167.100 with SMTP id h91ls809829edc.8.gmail; Sat, 14 Oct
 2017 05:24:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCUGTx7DSYxtYmYEXF8x5DeDM82gqgdwOAoaxUAD7u6vnCRJa9+1va67CtjToefliwmHzF7
X-Received: by 10.80.145.13 with SMTP id e13mr1210350eda.12.1507983840477;
        Sat, 14 Oct 2017 05:24:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507983840; cv=none;
        d=google.com; s=arc-20160816;
        b=Lz5gEvFjG4PxHIEgVtk/fKMkZof7PrhGoJhx/hq/Pt8Ji/5xxzIOoC4MPNzcTCsK82
         s1dfv39qWlyaqJvfFPl/SboeW7XPTrcyaiP6ojQtSI/qpWvkVjKtQwfZpKtNe6GRiHQQ
         a0QdnEX59jgFtqlWoKVKdnUaBaosLDt9+rbMN6HWKRsmO8eZ+bV25R5dwOb6mjGOuBr5
         80KV1HAlVWs651xjk2aSw1pPrhI+lwMmKywD2cK6tv/vinHMvZFX0tHMPHa8u5b87BEI
         eVsX++a5ws0Zm7qlQ0nkFpqhdiZ4ni8N+JfLd+O2vWQvy9Qnk7Pe/k8OR3Wwq9Eq0+Qk
         J5Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/0x8fb3uFccc9t3w07Fc1RKcg2Sn4CcswsubL6S1U80=;
        b=uxdgJCdajWPMIo+YbjFv6sSeWBSwivWw6lrOFJxEVgNgJCPVxYDvFrK0QMnLkmeEXM
         MNAslZcef38XGMX08NUa4JKuafbkWB6AkOMSOgR8m2u/g5x8tykHO4eEnQXhDFHcus05
         z4KwKs99XlRJrMjIYpKiROlBfvXBYuOb/B5pNjqB4qynmbDhOvZOVMrCUacrB53O6UeR
         UfAiVjOFWsv6buf1vp2DIsWiNY6vNWPYmmJ4ngp5Ie0Ed7z9d8NwvabzWaNkWLaCY9OH
         rZXWIQ6yniZFUf5G4mFA3TXZmb3+LSp1sX95UW8IYnYvTNm6+JkicsPMML1XCpFr9SpV
         F1Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f21si128070edj.0.2017.10.14.05.24.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 05:24:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,376,1503352800"; 
   d="scan'208";a="240982396"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2017 14:23:59 +0200
Date: Sat, 14 Oct 2017 14:23:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>, 
    Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Use __func__
 instead of function name
In-Reply-To: <20171014092725.GA6081@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1710141422240.1995@hadrien>
References: <20171014092725.GA6081@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Oct 2017, Mihaela Muraru wrote:

> Use identifier __func__ instead of the name of the function.
>
> Issue found by checkpatch.pl.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index a96bae0..88634e4 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -420,7 +420,8 @@ create_pagelist(char __user *buf, size_t count, unsigned short type,
>  				       &dma_addr,
>  				       GFP_KERNEL);
>
> -	vchiq_log_trace(vchiq_arm_log_level, "create_pagelist - %pK",
> +	vchiq_log_trace(vchiq_arm_log_level, "%s - %pK",
> +			__func__,
>  			pagelist);

You have plenty of room on the function call line for at least __func__
and perhaps for both arguments.

>  	if (!pagelist)
>  		return NULL;
> @@ -481,7 +482,8 @@ create_pagelist(char __user *buf, size_t count, unsigned short type,
>
>  		if (actual_pages != num_pages) {
>  			vchiq_log_info(vchiq_arm_log_level,
> -				       "create_pagelist - only %d/%d pages locked",
> +				       "%s - only %d/%d pages locked",
> +				       __func__,
>  				       actual_pages,
>  				       num_pages);

Maybe all of the last three arguments could be put on a single line.

julia

>
> @@ -583,8 +585,8 @@ free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
>  	struct page **pages    = pagelistinfo->pages;
>  	unsigned int num_pages = pagelistinfo->num_pages;
>
> -	vchiq_log_trace(vchiq_arm_log_level, "free_pagelist - %pK, %d",
> -			pagelistinfo->pagelist, actual);
> +	vchiq_log_trace(vchiq_arm_log_level, "%s - %pK, %d",
> +			__func__, pagelistinfo->pagelist, actual);
>
>  	/*
>  	 * NOTE: dma_unmap_sg must be called before the
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014092725.GA6081%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>


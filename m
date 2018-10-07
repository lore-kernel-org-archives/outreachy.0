X-GM-THRID: 6609620704439566336
X-Received: by 2002:a19:d820:: with SMTP id p32-v6mr517190lfg.16.1538925906732;
        Sun, 07 Oct 2018 08:25:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:9145:: with SMTP id y5-v6ls377226lfj.43.gmail; Sun, 07
 Oct 2018 08:25:05 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62xY3A8WKJ4idDL59ahTAmdrNI6Fkxl80/BBpK55BdGKpeYIMPT114HkKSXyYy6L6okAqSq
X-Received: by 2002:a19:99d0:: with SMTP id b199-v6mr535065lfe.4.1538925905871;
        Sun, 07 Oct 2018 08:25:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538925905; cv=none;
        d=google.com; s=arc-20160816;
        b=hTk6YA4cZqWfr4tb1EN1wpiHNK8EOZPdtGG4JjYnpWjgBPwiaQwIbKpoGicl2BpLnr
         UwjNVWHpjBeqvgJE9bdsCLEq1wY+29hHD9io8t3+JmFw/l0KtAS/HWk6Tapc6M0obAGc
         ICcOUiFEea7pQQ4jeeZRxVjdg7Oag/XrdWunaLySY26mDkzeUURVKAMx63CWOOGvfOX6
         MxbcPo453LfXJnPWh4bW6pvps/pZ8INUOf/dnTIO+ZySqOyYWPrLoXzeSYptpQJHPrHs
         jjI6glZNlg9V6p2ajNt88BaEx1WgLk4icctZ9ZyYDQxHyOV/PnsFgYzFgGbzPGCD/eB+
         Y5zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=FtHcC9rFYj+l2unKxe5pqMRJAA12YIsr8/6ZvOAymXM=;
        b=tI5A2ZRUFwzV+h9OPF2hYSZZ+TFBSnRFxpfnSVaM3q8/o+03PGCbbj765waQb0PpM2
         OEVrRl2jeJa81WUkPWoPsdbKKKoK8ZJOmjOUpKP+NqjM9oVh6k+0nIuTxJJB2MoCJpgp
         AzjT4SW0GfOPCTfhulmPC7Sx6PQR2jXBpf/XgWw99k6xFZm80HoTbq1fXvQXdvt4I5kG
         v2xdH3UTd1Vy+0vGsePg50fHgq8/Fv3jUKdDE2/3mk9QV3UT8vfRSXXkct+IJ5ed5IDP
         o65FQADhXOL1HPu3mP6a+u0pNahFHxyAbpxHrbmWNawO+JVQhNzj0jyW/i/OJkZ5bKuR
         leAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y1-v6si491745lfd.3.2018.10.07.08.25.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 08:25:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,353,1534802400"; 
   d="scan'208";a="281299522"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2018 17:25:04 +0200
Date: Sun, 7 Oct 2018 17:25:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: davinci_vpfe: Use
 __func__ instead of function name
In-Reply-To: <20181006205400.GA12894@armorer>
Message-ID: <alpine.DEB.2.21.1810071723360.2347@hadrien>
References: <20181006205400.GA12894@armorer>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 7 Oct 2018, Mamta Shukla wrote:

> Access current function name using __func__.
> Use %s and __func__ instead of function name.
> Predefined identifier __func__ gives the name of current function name.
> Thus, it gives better debug information in this case.

Actually, the debug information produced is the same as before.  Now,
however, the code is more concise and it is more robust, in case the name
of the function changes.

julia

>
> Issue found with checkpatch.pl
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>
> change in v2:
> -Put useful information above ---
>
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 9594276..4d09e81 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
>
>  	if (!gamma->bypass_r) {
>  		dev_err(dev,
> -			"ipipe_get_gamma_params: table ptr empty for R\n");
> +			"%s: table ptr empty for R\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_r, gamma->table_r,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_g) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
> +		dev_err(dev, "%s: table ptr empty for G\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_g, gamma->table_g,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_b) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
> +		dev_err(dev, "%s: table ptr empty for B\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_b, gamma->table_b,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181006205400.GA12894%40armorer.
> For more options, visit https://groups.google.com/d/optout.
>


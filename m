X-GM-THRID: 6205949945587957760
X-Received: by 10.180.189.49 with SMTP id gf17mr140170wic.6.1444938647337;
        Thu, 15 Oct 2015 12:50:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.159.82 with SMTP id i79ls200589lfe.102.gmail; Thu, 15 Oct
 2015 12:50:46 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr2635459lbb.11.1444938646312;
        Thu, 15 Oct 2015 12:50:46 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si5293wiy.3.2015.10.15.12.50.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 12:50:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,687,1437429600"; 
   d="scan'208";a="150698398"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Oct 2015 21:50:45 +0200
Date: Thu, 15 Oct 2015 21:50:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_osc: Change
 the variable to be tested
In-Reply-To: <20151015185507.GA40274@ubuntu>
Message-ID: <alpine.DEB.2.02.1510152150280.2027@localhost6.localdomain6>
References: <20151015185507.GA40274@ubuntu>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:

> The variable rc is supposed to hold the value returned by function
> kstrtoul which can either be 0, -EINVAL (-22) or -ERANGE (-34).
> Therefore, the check must be performed on rc instead of val for error
> values. Also, val can never be positive.

Typo.  val can never be negative.

julia

> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/osc/lproc_osc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> index 053d508..cdc7f88 100644
> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> @@ -61,9 +61,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>  	unsigned long val;
>  
>  	rc = kstrtoul(buffer, 10, &val);
> -	if (rc)
> -		return rc;
> -	if (val < 0 || val > 1)
> +	if (rc < 0)
>  		return -ERANGE;
>  
>  	/* opposite senses */
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151015185507.GA40274%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
> 


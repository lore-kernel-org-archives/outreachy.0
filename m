X-GM-THRID: 6206976986922876928
X-Received: by 10.112.130.41 with SMTP id ob9mr5787618lbb.17.1445174669161;
        Sun, 18 Oct 2015 06:24:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.137 with SMTP id hs9ls451830wib.37.gmail; Sun, 18 Oct
 2015 06:24:28 -0700 (PDT)
X-Received: by 10.180.184.164 with SMTP id ev4mr3345745wic.3.1445174668742;
        Sun, 18 Oct 2015 06:24:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d7si317690wiy.2.2015.10.18.06.24.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:24:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,697,1437429600"; 
   d="scan'208";a="150925181"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Oct 2015 15:24:28 +0200
Date: Sun, 18 Oct 2015 15:24:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_osc: Add check
 on a variable
In-Reply-To: <20151018132030.GA30680@ubuntu>
Message-ID: <alpine.DEB.2.10.1510181523580.2614@hadrien>
References: <20151018132030.GA30680@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 18 Oct 2015, Shivani Bhardwaj wrote:

> Variable rc is not tested for negative values and hence a check should
> be included. Also, a check for variable val should be introduced.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/osc/lproc_osc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> index cdc7f88..c4d44e7 100644
> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> @@ -61,7 +61,9 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>  	unsigned long val;
>
>  	rc = kstrtoul(buffer, 10, &val);
> -	if (rc < 0)
> +	if (rc)

If rc is never > 0, then why do you want to change rc < 0 to just rc?

julia

> +		return rc;
> +	if (val > 1)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151018132030.GA30680%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>


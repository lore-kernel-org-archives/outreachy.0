X-GM-THRID: 6205817882698317824
X-Received: by 10.194.156.193 with SMTP id wg1mr1954292wjb.3.1444905213104;
        Thu, 15 Oct 2015 03:33:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.165.199 with SMTP id o190ls158508lfe.60.gmail; Thu, 15 Oct
 2015 03:33:32 -0700 (PDT)
X-Received: by 10.112.145.3 with SMTP id sq3mr2001052lbb.7.1444905212490;
        Thu, 15 Oct 2015 03:33:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si9252wiz.1.2015.10.15.03.33.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 03:33:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,684,1437429600"; 
   d="scan'208";a="182913058"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Oct 2015 12:33:32 +0200
Date: Thu, 15 Oct 2015 12:33:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: cdev: Remove unnecessary
 check
In-Reply-To: <20151015102240.GA17961@ubuntu>
Message-ID: <alpine.DEB.2.10.1510151232590.2350@hadrien>
References: <20151015102240.GA17961@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 15 Oct 2015, Shivani Bhardwaj wrote:

> The variable mbo is already NULL tested so, check on it should be
> removed.
> Semantic patch used:
>
> @@ expression E;
> statement S1, S2, S3; @@
> if(E==NULL) {... return ...;}
> else S1
> - if(E==NULL)
>   S2
> - else S3

I don't think that this semantic patch actually matches the code below.

julia

>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/most/aim-cdev/cdev.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/most/aim-cdev/cdev.c b/drivers/staging/most/aim-cdev/cdev.c
> index 930ada0..5dc5608 100644
> --- a/drivers/staging/most/aim-cdev/cdev.c
> +++ b/drivers/staging/most/aim-cdev/cdev.c
> @@ -207,8 +207,7 @@ static ssize_t aim_write(struct file *filp, const char __user *buf,
>  	}
>  	return actual_len - retval;
>  error:
> -	if (mbo)
> -		most_put_mbo(mbo);
> +	most_put_mbo(mbo);
>  	return err;
>  }
>
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151015102240.GA17961%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>


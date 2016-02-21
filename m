X-GM-THRID: 6253716590349516800
X-Received: by 10.98.0.132 with SMTP id 126mr21840381pfa.2.1456057332929;
        Sun, 21 Feb 2016 04:22:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.203 with SMTP id b69ls1041666qge.5.gmail; Sun, 21 Feb
 2016 04:22:12 -0800 (PST)
X-Received: by 10.129.158.2 with SMTP id v2mr22032719ywg.42.1456057331990;
        Sun, 21 Feb 2016 04:22:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ui7si2627689pab.0.2016.02.21.04.22.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 04:22:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="203975989"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 13:22:09 +0100
Date: Sun, 21 Feb 2016 07:22:06 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove unnecessary
 braces of single statement block
In-Reply-To: <20160221041414.GA2801@sandhya>
Message-ID: <alpine.DEB.2.10.1602210719270.2782@hadrien>
References: <20160221041414.GA2801@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Sandhya Bankar wrote:

> Remove unnecessary braces of single statement block else

Actually, the rule is that if one branch has braces, the other should too.
Documentation/CodingStyle says the following:

Do not unnecessarily use braces where a single statement will do.

        if (condition)
		action();

and

	if (condition)
                do_this();
	else
                do_that();

This does not apply if only one branch of a conditional statement is a
single statement; in the latter case use braces in both branches:

        if (condition) {
                do_this();
		do_that();
        } else {
                otherwise();
        }

julia

>
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/dcache.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/dcache.c b/drivers/staging/lustre/lustre/llite/dcache.c
> index bc179e5..e3b98b7 100644
> --- a/drivers/staging/lustre/lustre/llite/dcache.c
> +++ b/drivers/staging/lustre/lustre/llite/dcache.c
> @@ -193,13 +193,11 @@ int ll_d_init(struct dentry *de)
>  			if (likely(!de->d_fsdata)) {
>  				de->d_fsdata = lld;
>  				__d_lustre_invalidate(de);
> -			} else {
> +			} else
>  				kfree(lld);
> -			}
>  			spin_unlock(&de->d_lock);
> -		} else {
> +		} else
>  			return -ENOMEM;
> -		}
>  	}
>  	LASSERT(de->d_op == &ll_d_ops);
>
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221041414.GA2801%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>


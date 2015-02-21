X-GM-THRID: 1526974119936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7ff0cbb979278efc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.199.69 with SMTP id ji5mr340567lbc.0.1424533601105;
        Sat, 21 Feb 2015 07:46:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.42 with SMTP id y10ls389131lag.71.gmail; Sat, 21 Feb
 2015 07:46:40 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr338675lbb.6.1424533600660;
        Sat, 21 Feb 2015 07:46:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r6si335156wix.0.2015.02.21.07.46.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:46:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="122808055"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:46:40 +0100
Date: Sat, 21 Feb 2015 16:46:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: Remove unnecessary
 else after return
In-Reply-To: <1424533029-14651-2-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211645310.2480@hadrien>
References: <1424533029-14651-1-git-send-email-aysemelikeyurtoglu@gmail.com> <1424533029-14651-2-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Melike Yurtoglu wrote:

> WARNING: else is not generally useful after a break or return
> Remove unnecessary else after return. That was found by running
> checkpatch
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/lib-ptl.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> index 98318fb..f6bd808 100644
> --- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> +++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> @@ -360,13 +360,12 @@ lnet_mt_match_head(struct lnet_match_table *mtable,
>
>  	if (lnet_ptl_is_wildcard(ptl)) {
>  		return &mtable->mt_mhash[mbits & LNET_MT_HASH_MASK];
> -	} else {
> -		unsigned long hash = mbits + id.nid + id.pid;
> -
> -		LASSERT(lnet_ptl_is_unique(ptl));
> -		hash = hash_long(hash, LNET_MT_HASH_BITS);
> -		return &mtable->mt_mhash[hash];
>  	}
> +	unsigned long hash = mbits + id.nid + id.pid;

This is not correct.  Kernel code only declares variables at the start of
a block.  If you want to remove the else, then the declaration of this
variable has to move to the top of the function.

julia

> +
> +	LASSERT(lnet_ptl_is_unique(ptl));
> +	hash = hash_long(hash, LNET_MT_HASH_BITS);
> +	return &mtable->mt_mhash[hash];
>  }
>
>  int
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424533029-14651-2-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 1786498777088
X-Received: by 10.50.72.98 with SMTP id c2mr2591858igv.0.1424530995821;
        Sat, 21 Feb 2015 07:03:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.171.230 with SMTP id ax6ls456992igc.19.gmail; Sat, 21 Feb
 2015 07:03:15 -0800 (PST)
X-Received: by 10.66.102.66 with SMTP id fm2mr3098570pab.4.1424530995462;
        Sat, 21 Feb 2015 07:03:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x16si654346igx.0.2015.02.21.07.03.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:03:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100855522"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:03:13 +0100
Date: Sat, 21 Feb 2015 16:03:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: lustre: use kstrtoul()
 instead of sscanf()
In-Reply-To: <1424524553-9035-2-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211601410.2480@hadrien>
References: <1424524553-9035-1-git-send-email-aybuke.147@gmail.com> <1424524553-9035-2-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, aybuke ozdemir wrote:

> This patch makes checkpatch.pl by fixing the following warning:
> WARNING: Prefer kstrto<type> to single variable sscanf
>
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 9646e1a..62f923c 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -2190,6 +2190,7 @@ int ll_process_config(struct lustre_cfg *lcfg)
>  	struct lprocfs_static_vars lvars;
>  	unsigned long x;
>  	int rc = 0;
> +	int rc1;
>
>  	lprocfs_llite_init_vars(&lvars);
>
> @@ -2197,7 +2198,8 @@ int ll_process_config(struct lustre_cfg *lcfg)
>  	ptr = strrchr(lustre_cfg_string(lcfg, 0), '-');
>  	if (!ptr || !*(++ptr))
>  		return -EINVAL;
> -	if (sscanf(ptr, "%lx", &x) != 1)
> +	rc1 = kstrtoul(ptr, 16, &x);
> +	if (rc1 != 1)

It doesn't look like it is necessary to introduce rc1.

On the other hand, the documentation for kstrtoul says:

Returns 0 on success, -ERANGE on overflow and -EINVAL on parsing error.

The function never returns 1, so you are not checking for errors in the
right way.

julia

>  		return -EINVAL;
>  	sb = (void *)x;
>  	/* This better be a real Lustre superblock! */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424524553-9035-2-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


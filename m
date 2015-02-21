X-GM-THRID: 1786498777088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2774b652a5e84589
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.189.227 with SMTP id gl3mr458189lbc.2.1424552122416;
        Sat, 21 Feb 2015 12:55:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.12.167 with SMTP id z7ls33179wib.23.canary; Sat, 21 Feb
 2015 12:55:22 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr447579wjz.0.1424552122166;
        Sat, 21 Feb 2015 12:55:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si376212wif.0.2015.02.21.12.55.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 12:55:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="100872216"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 21:55:21 +0100
Date: Sat, 21 Feb 2015 21:55:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] Staging: lustre: use kstrtoul()
 instead of sscanf()
In-Reply-To: <1424551663-14662-1-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212154360.2296@localhost6.localdomain6>
References: <1424551663-14662-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, aybuke ozdemir wrote:

> This patch makes checkpatch.pl by fixing the following warning:
> WARNING: Prefer kstrto<type> to single variable sscanf.
> I used to kstrtoul can convert unsigned long instead of sscanf

This looks better.

This patch is part of a series, so you have to send the whole series 
again as v2.  For the others just put a comment below the --- saying that 
they have not changed.

julia

> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
> Changes since v1:
> * Removed unnecessary variable rc1.
> * The return value is changed(Returns 0 on success).
> * Changed the description
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index a3367bf..fb99cdb 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -2198,7 +2198,8 @@ int ll_process_config(struct lustre_cfg *lcfg)
>  	ptr = strrchr(lustre_cfg_string(lcfg, 0), '-');
>  	if (!ptr || !*(++ptr))
>  		return -EINVAL;
> -	if (sscanf(ptr, "%lx", &x) != 1)
> +	rc = kstrtoul(ptr, 16, &x);
> +	if (rc != 0)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424551663-14662-1-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


X-GM-THRID: 6251095544771379200
X-Received: by 10.112.77.169 with SMTP id t9mr1274652lbw.8.1455467439211;
        Sun, 14 Feb 2016 08:30:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.26.206 with SMTP id a197ls519561lfa.83.gmail; Sun, 14 Feb
 2016 08:30:38 -0800 (PST)
X-Received: by 10.112.16.34 with SMTP id c2mr1291283lbd.19.1455467438662;
        Sun, 14 Feb 2016 08:30:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w197si458546wmw.3.2016.02.14.08.30.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 08:30:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,446,1449529200"; 
   d="scan'208";a="164672972"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 17:30:37 +0100
Date: Sun, 14 Feb 2016 17:30:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging:fbtft: Fix block comment
 coding style
In-Reply-To: <20160214104333.GA27431@life-desktop>
Message-ID: <alpine.DEB.2.02.1602141729570.2066@localhost6.localdomain6>
References: <20160214104333.GA27431@life-desktop>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 14 Feb 2016, Anchal Jain wrote:

> Add the required leading * on subsequent lines as well as move the */ on a separate line. Checkpatch found this issue.

Actually, there is no need for this to be a multiline comment.  The whole 
thing would fit on a single line.

Also, in the subject line, there should be a space after staging:

julia

> 
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
> index 3bcbabf..c61c6ce 100644
> --- a/drivers/staging/fbtft/fbtft-core.c
> +++ b/drivers/staging/fbtft/fbtft-core.c
> @@ -519,7 +519,8 @@ static ssize_t fbtft_fb_write(struct fb_info *info, const char __user *buf,
>  	res = fb_sys_write(info, buf, count, ppos);
>  
>  	/* TODO: only mark changed area
> -	   update all for now */
> +	 * update all for now
> +	 */
>  	par->fbtftops.mkdirty(info, -1, 0);
>  
>  	return res;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160214104333.GA27431%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
> 


X-GM-THRID: 2118621593600
X-Received: by 10.152.4.229 with SMTP id n5mr440084lan.1.1424551858708;
        Sat, 21 Feb 2015 12:50:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.33 with SMTP id cj1ls443209lad.53.gmail; Sat, 21 Feb
 2015 12:50:58 -0800 (PST)
X-Received: by 10.112.160.3 with SMTP id xg3mr433268lbb.5.1424551858164;
        Sat, 21 Feb 2015 12:50:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si377952wid.1.2015.02.21.12.50.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 12:50:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="100872048"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 21:50:56 +0100
Date: Sat, 21 Feb 2015 21:50:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Gulsah Kose <gulsah.1004@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: arch: alpha: boot:
 Deleted unnecessary brackets.
In-Reply-To: <41ef579e532df4325288a101ce4f9aff77aa1d93.1424551058.git.gulsah.1004@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212147350.2296@localhost6.localdomain6>
References: <cover.1424551058.git.gulsah.1004@gmail.com> <41ef579e532df4325288a101ce4f9aff77aa1d93.1424551058.git.gulsah.1004@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Gulsah Kose wrote:

> This patch fixes "braces {} are not necessary for single statement
> blocks" checkpatch.pl warnings in bootp.c

Try to write your commit message in a way that says what you have done, 
rather than just saying that you have fixed something.  Here you could 
say: Remove unneeded braces around a single-statement if branch.

It is not necessary to mention the file name in the commit message.  That 
can be seen easily from the patch.  Likewise, you don't need to put the 
full pathname of the file in the subject line.  You can see the subect 
line that others have used by saying git log --onefile file

Also, you should not be working on files in the arch directory, only on 
files in the drivers/staging directory.  Greg will only take patches on 
drivers/staging.

julia


> Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
> ---
>  arch/alpha/boot/bootp.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/alpha/boot/bootp.c b/arch/alpha/boot/bootp.c
> index 27807f5..c66ea3c 100644
> --- a/arch/alpha/boot/bootp.c
> +++ b/arch/alpha/boot/bootp.c
> @@ -177,9 +177,8 @@ start_kernel(void)
>  	move_stack(initrd_start - PAGE_SIZE);
>  
>  	nbytes = callback_getenv(ENV_BOOTED_OSFLAGS, envval, sizeof(envval));
> -	if (nbytes < 0 || nbytes >= sizeof(envval)) {
> +	if (nbytes < 0 || nbytes >= sizeof(envval))
>  		nbytes = 0;
> -	}
>  	envval[nbytes] = '\0';
>  	srm_printk("Loading the kernel...'%s'\n", envval);
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/41ef579e532df4325288a101ce4f9aff77aa1d93.1424551058.git.gulsah.1004%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


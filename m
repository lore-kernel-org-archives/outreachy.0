X-GM-THRID: 697096470528
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ae4d3b7517c21de2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.171.37 with SMTP id ar5mr722158lbc.16.1424363921158;
        Thu, 19 Feb 2015 08:38:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.101 with SMTP id d5ls1445930wie.53.canary; Thu, 19 Feb
 2015 08:38:39 -0800 (PST)
X-Received: by 10.180.104.101 with SMTP id gd5mr1162028wib.6.1424363919327;
        Thu, 19 Feb 2015 08:38:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si141129wib.1.2015.02.19.08.38.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 08:38:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,609,1418079600"; 
   d="scan'208";a="122552966"
Received: from technetium.rsr.lip6.fr ([132.227.76.37])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 17:38:38 +0100
Date: Thu, 19 Feb 2015 17:40:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: parport: Convert
 simple_strtoul to kstrtoul
In-Reply-To: <1424363402-10346-1-git-send-email-navyasri.tech@gmail.com>
Message-ID: <alpine.DEB.2.10.1502191738120.3284@hadrien>
References: <1424363402-10346-1-git-send-email-navyasri.tech@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Navya Sri Nizamkari wrote:

> This patch fixes the following checkpatch.pl warning:
>
> WARNING: simple_strtoul is obsolete, use kstrtoul instead

simple_strtoul and kstrtoul don't have the same functionality.  You have
to argue carefully why this change is correct.  That is, under what
circumstances does simple_strtoul end up with the value in its second
argument being the same as its first argument, and under what
circumstances does kstrtoul give a non zero result.

julia

> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/media/parport/bw-qcam.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
> index 67b9da1..1b81244 100644
> --- a/drivers/staging/media/parport/bw-qcam.c
> +++ b/drivers/staging/media/parport/bw-qcam.c
> @@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
>  	if (parport[0] && strncmp(parport[0], "auto", 4) != 0) {
>  		/* user gave parport parameters */
>  		for (n = 0; n < MAX_CAMS && parport[n]; n++) {
> -			char *ep;
>  			unsigned long r;
> -			r = simple_strtoul(parport[n], &ep, 0);
> -			if (ep == parport[n]) {
> +			if (kstrtoul(parport[n],0,&r)) {
>  				printk(KERN_ERR
>  					"bw-qcam: bad port specifier \"%s\"\n",
>  					parport[n]);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424363402-10346-1-git-send-email-navyasri.tech%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


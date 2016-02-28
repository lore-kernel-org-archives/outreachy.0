X-GM-THRID: 6256304454696435712
X-Received: by 10.25.136.134 with SMTP id k128mr1046358lfd.5.1456660916893;
        Sun, 28 Feb 2016 04:01:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.144 with SMTP id w138ls186384wmw.22.canary; Sun, 28 Feb
 2016 04:01:56 -0800 (PST)
X-Received: by 10.28.194.213 with SMTP id s204mr161688wmf.1.1456660916394;
        Sun, 28 Feb 2016 04:01:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si411110wmd.1.2016.02.28.04.01.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 04:01:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,514,1449529200"; 
   d="scan'208";a="166229160"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 13:01:55 +0100
Date: Sun, 28 Feb 2016 13:01:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Handle error
 condition.
In-Reply-To: <20160228033629.GA7898@sandhya>
Message-ID: <alpine.DEB.2.02.1602281301100.2147@localhost6.localdomain6>
References: <20160228033629.GA7898@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 28 Feb 2016, Sandhya Bankar wrote:

> Handle error condition.
> Below semantic patch found,their is double assignment to 'result' variable.so instead of deleting double assignment,handling error condition for "result = mkimage(..)".
> @@
> expression e1,e2,e3;
> @@
> 
> (
>  (<+...e1++...+>)=e2;
> |
>  (<+...e1--...+>)=e2;
> |
>  (<+...++e1...+>)=e2;
> |
>  (<+...--e1...+>)=e2;
> |
> e1=e2;
> e1 = <+...e1...+>;
> |
> *e1=e2;
> *e1=e3;
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2fw.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
> index 8fc80df..35fd5fb 100644
> --- a/drivers/staging/wlan-ng/prism2fw.c
> +++ b/drivers/staging/wlan-ng/prism2fw.c
> @@ -333,6 +333,10 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
>  
>  	/* Make the image chunks */
>  	result = mkimage(fchunk, &nfchunks);
> +	if (result) {
> +		netdev_err(wlandev->netdev, "Failed to make image chunk.\n");
> +		return 1;
> +	}

Perhaps it would be possible to move this code away from using 1 for 
failure, towards using actual error codes.

julia

>  
>  	/* Do any plugging */
>  	result = plugimage(fchunk, nfchunks, s3plug, ns3plug, &pda);
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228033629.GA7898%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
> 


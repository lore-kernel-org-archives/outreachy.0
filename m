X-GM-THRID: 3468768051200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,26dddd85f4bffbd9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.29.97 with SMTP id j1mr824238lah.3.1424902816048;
        Wed, 25 Feb 2015 14:20:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.234 with SMTP id ch10ls1055011wib.40.gmail; Wed, 25 Feb
 2015 14:20:13 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr3226898wic.3.1424902813511;
        Wed, 25 Feb 2015 14:20:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ev8si1213245wib.3.2015.02.25.14.20.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 14:20:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,647,1418079600"; 
   d="scan'208";a="101340313"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2015 23:20:12 +0100
Date: Wed, 25 Feb 2015 23:20:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: i2o: Remove unnecessary
 'out of memory' message
In-Reply-To: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.02.1502252319310.2029@localhost6.localdomain6>
References: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, aybuke ozdemir wrote:

> This patch removes unnecessay out of memory message fixing the following

unnecessary

> checkpach.pl warning in device.c
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/i2o/device.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/i2o/device.c b/drivers/staging/i2o/device.c
> index 2af2255..162a887 100644
> --- a/drivers/staging/i2o/device.c
> +++ b/drivers/staging/i2o/device.c
> @@ -566,7 +566,6 @@ int i2o_parm_table_get(struct i2o_device *dev, int oper, int group,
>  
>  	opblk = kmalloc(size, GFP_KERNEL);
>  	if (opblk == NULL) {
> -		printk(KERN_ERR "i2o: no memory for query buffer.\n");
>  		return -ENOMEM;
>  	}

Now you don't need the braces.  Your change should not introduce new 
checkpatch errors.

julia

> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424902222-10105-1-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


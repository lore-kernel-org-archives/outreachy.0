X-GM-THRID: 6250919415582294016
X-Received: by 10.28.45.151 with SMTP id t145mr513944wmt.6.1455434924277;
        Sat, 13 Feb 2016 23:28:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.129.6 with SMTP id c6ls370053wmd.4.gmail; Sat, 13 Feb 2016
 23:28:43 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr1114275wje.1.1455434923312;
        Sat, 13 Feb 2016 23:28:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si314879wmd.1.2016.02.13.23.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 23:28:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,444,1449529200"; 
   d="scan'208";a="203014044"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 08:28:42 +0100
Date: Sun, 14 Feb 2016 08:28:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Include KERN_
 facility level for printk()
In-Reply-To: <20160214041910.GA25485@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602140827100.2039@localhost6.localdomain6>
References: <20160214041910.GA25485@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 13 Feb 2016, Janani Ravichandran wrote:

> This patch includes KERN_ facility level for printk(). KERN_INFO is
> justified here as the messages here are informational.
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_debugfs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_debugfs.c b/drivers/staging/wilc1000/wilc_debugfs.c
> index 8e7186b..da7ec8b 100644
> --- a/drivers/staging/wilc1000/wilc_debugfs.c
> +++ b/drivers/staging/wilc1000/wilc_debugfs.c
> @@ -69,9 +69,9 @@ static ssize_t wilc_debug_level_write(struct file *filp, const char __user *buf,
>  	atomic_set(&WILC_DEBUG_LEVEL, (int)flag);
>  
>  	if (flag == 0)
> -		printk("Debug-level disabled\n");
> +		printk(KERN_INFO "Debug-level disabled\n");
>  	else
> -		printk("Debug-level enabled\n");
> +		printk(KERN_INFO "Debug-level enabled\n");

You shouldn't add new uses of printk.  I would think checpatch would have 
complained about this.  I don't know what kind of driver this is, but 
check whether pr_info, dev_info, or netdev_info would be appropriate.  If 
neither of the last to can be used, pr_info is certainly possible.

julia

>  
>  	return count;
>  }
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160214041910.GA25485%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 


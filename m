X-GM-THRID: 1346431352832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1fdd4451ee4a6ec5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr1372176lbf.21.1424448991277;
        Fri, 20 Feb 2015 08:16:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.42 with SMTP id g10ls294248laa.51.gmail; Fri, 20 Feb
 2015 08:16:30 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr1393429lbo.8.1424448990721;
        Fri, 20 Feb 2015 08:16:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si349703wib.1.2015.02.20.08.16.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 08:16:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,615,1418079600"; 
   d="scan'208";a="122710416"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 17:16:29 +0100
Date: Fri, 20 Feb 2015 17:16:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: i2o : Replace printk with
 dev_warn
In-Reply-To: <1424446833-22298-1-git-send-email-navyasri.tech@gmail.com>
Message-ID: <alpine.DEB.2.10.1502201714490.2375@hadrien>
References: <1424446833-22298-1-git-send-email-navyasri.tech@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote:

> This patch fixes the checkpatch.pl warning:
> WARNING: Prefer netdev_info(netdev, ... then dev_info
> (dev, ... then pr_info(...  to printk(KERN_INFO ...
>
> i2o being a device driver, printk(KERN_WARNING can be
> replaced with the dev_warn function which is preferable.
>
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/i2o/exec-osm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/i2o/exec-osm.c b/drivers/staging/i2o/exec-osm.c
> index 16d857d..89e464d 100644
> --- a/drivers/staging/i2o/exec-osm.c
> +++ b/drivers/staging/i2o/exec-osm.c
> @@ -507,7 +507,7 @@ static int i2o_exec_reply(struct i2o_controller *c, u32 m,
>  	 * to aid in debugging.
>  	 *
>  	 */
> -	printk(KERN_WARNING "%s: Unsolicited message reply sent to core!"
> +	dev_warn(c->pdev->dev, "%s: Unsolicited message reply sent to core!"
>  	       "Message dumped to syslog\n", c->name);

I wonder if c->name is necessary if you are using dev_warn?  Look at the
definition of dev_warn and see if it already prints out something that
looks like the name of the driver.

Another checkpatch warning would be about not breaking up strings.  I'm
surprised that it didn't complain about it.

julia

>  	i2o_dump_message(msg);
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424446833-22298-1-git-send-email-navyasri.tech%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


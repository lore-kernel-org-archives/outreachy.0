X-GM-THRID: 9171390955520
X-Received: by 10.182.142.102 with SMTP id rv6mr89400926obb.47.1426833289996;
        Thu, 19 Mar 2015 23:34:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.98 with SMTP id t2ls699835obf.92.gmail; Thu, 19 Mar
 2015 23:34:49 -0700 (PDT)
X-Received: by 10.182.18.102 with SMTP id v6mr89846800obd.11.1426833289553;
        Thu, 19 Mar 2015 23:34:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k10si258971yho.2.2015.03.19.23.34.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 23:34:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,435,1422918000"; 
   d="scan'208";a="126866350"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Mar 2015 07:34:48 +0100
Date: Fri, 20 Mar 2015 07:34:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: rtl8192e: Delete
 space
In-Reply-To: <1426795774-22420-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1503200734310.2062@localhost6.localdomain6>
References: <1426795774-22420-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1757187722-1426833288=:2062"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1757187722-1426833288=:2062
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

You don't need to duplicate rtl8192e: in the subject line.

julia

On Thu, 19 Mar 2015, Hatice ERTÜRK wrote:

> Deleted spaces before ','.Because it is prohibited by the kernel coding style.
> Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
> index 2fbb964..c6097b3 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
> @@ -1540,7 +1540,7 @@ RESET_START:
>  			SEM_UP_IEEE_WX(&ieee->wx_sem);
>  		} else {
>  			printk(KERN_INFO "ieee->state is NOT LINKED\n");
> -			rtllib_softmac_stop_protocol(priv->rtllib, 0 , true);
> +			rtllib_softmac_stop_protocol(priv->rtllib, 0, true);
>  		}
>  
>  		dm_backup_dynamic_mechanism_state(dev);
> @@ -2530,7 +2530,7 @@ void rtl8192_commit(struct net_device *dev)
>  
>  	if (priv->up == 0)
>  		return;
> -	rtllib_softmac_stop_protocol(priv->rtllib, 0 , true);
> +	rtllib_softmac_stop_protocol(priv->rtllib, 0, true);
>  	rtl8192_irq_disable(dev);
>  	priv->ops->stop_adapter(dev, true);
>  	_rtl8192_up(dev, false);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426795774-22420-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-1757187722-1426833288=:2062--


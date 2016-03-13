X-GM-THRID: 6261235815090749440
X-Received: by 10.28.194.212 with SMTP id s203mr1214036wmf.3.1457841062674;
        Sat, 12 Mar 2016 19:51:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.136 with SMTP id a130ls649358lfe.33.gmail; Sat, 12 Mar
 2016 19:51:02 -0800 (PST)
X-Received: by 10.25.136.134 with SMTP id k128mr2142230lfd.5.1457841062147;
        Sat, 12 Mar 2016 19:51:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si370376wml.0.2016.03.12.19.51.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:51:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,328,1454972400"; 
   d="scan'208";a="207447329"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 04:51:01 +0100
Date: Sun, 13 Mar 2016 04:51:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com, tj@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usb_intf: Remove
 flush_scheduled_work()
In-Reply-To: <20160312183227.GA17219@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1603130450470.2069@localhost6.localdomain6>
References: <20160312183227.GA17219@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 13 Mar 2016, Bhaktipriya Shridhar wrote:

> flush_scheduled_work() flushes out all work items in system_wq.
> Since one doesn't know what could be running there, flushinf work items

flushinf -> flushing

> individually is preferred.
> 
> Since there are finite number of work items to be flushed,(viz
> pwrpriv->SetPSModeWorkItem,pwrpriv->SetPSModeWorkItem,pLed->BlinkWorkItem)
> instead of flushing system_wq, each work item is separately flushed.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8712/usb_intf.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
> index c1a0ca49..32c5798 100644
> --- a/drivers/staging/rtl8712/usb_intf.c
> +++ b/drivers/staging/rtl8712/usb_intf.c
> @@ -627,7 +627,9 @@ static void r871xu_dev_remove(struct usb_interface *pusb_intf)
>  		if (drvpriv.drv_registered)
>  			padapter->bSurpriseRemoved = true;
>  		unregister_netdev(pnetdev); /* will call netdev_close() */
> -		flush_scheduled_work();
> +		cancel_delayed_work(&pwrpriv->SetPSModeWorkItem);
> +		cancel_delayed_work(&pwrpriv->rpwm_workitem);
> +		cancel_delayed_work(&pLed->BlinkWorkItem);
>  		udelay(1);
>  		/* Stop driver mlme relation timer */
>  		r8712_stop_drv_timers(padapter);
> --
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160312183227.GA17219%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
> 


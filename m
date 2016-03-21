X-GM-THRID: 6261235815090749440
X-Received: by 10.182.63.17 with SMTP id c17mr25638311obs.49.1458593432394;
        Mon, 21 Mar 2016 13:50:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.49.6 with SMTP id q6ls893246ign.8.canary; Mon, 21 Mar 2016
 13:50:32 -0700 (PDT)
X-Received: by 10.66.101.4 with SMTP id fc4mr24194686pab.48.1458593432019;
        Mon, 21 Mar 2016 13:50:32 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si4208312pfa.2.2016.03.21.13.50.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:50:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8A2D574;
	Mon, 21 Mar 2016 20:50:31 +0000 (UTC)
Date: Mon, 21 Mar 2016 16:50:30 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: usb_intf: Remove
 flush_scheduled_work()
Message-ID: <20160321205030.GA4922@kroah.com>
References: <20160313072516.GA22863@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160313072516.GA22863@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 13, 2016 at 12:55:16PM +0530, Bhaktipriya Shridhar wrote:
> flush_scheduled_work() flushes out all work items in system_wq.
> Since one doesn't know what could be running there, flushing work items
> individually is preferred.
> 
> Since there are finite number of work items to be flushed,(viz
> pwrpriv->SetPSModeWorkItem,pwrpriv->SetPSModeWorkItem,pLed->BlinkWorkItem)
> instead of flushing system_wq, each work item is separately flushed.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> Acked-by: Tejun Heo <tj@kernel.org>
> ---
>  Changes in v2:
> 	-Fixed typo in commit message.
> 
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

This patch does not even build!

Please always test build your patches, to not do so makes maintainers
very grumpy...


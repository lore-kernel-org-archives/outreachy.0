X-GM-THRID: 6250414560297091072
X-Received: by 10.28.30.147 with SMTP id e141mr411361wme.0.1455288730114;
        Fri, 12 Feb 2016 06:52:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.207 with SMTP id m198ls131825wmg.50.canary; Fri, 12 Feb
 2016 06:52:09 -0800 (PST)
X-Received: by 10.28.172.194 with SMTP id v185mr564346wme.5.1455288729610;
        Fri, 12 Feb 2016 06:52:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si103848wme.2.2016.02.12.06.52.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:52:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="164490592"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 15:52:09 +0100
Date: Fri, 12 Feb 2016 15:52:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: rtl8192u: r8192U_dm:
 Replace MSECS with msecs_to_jiffies
In-Reply-To: <20160212144041.GA1328@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602121547280.2510@hadrien>
References: <20160212144041.GA1328@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 12 Feb 2016, Amitoj Kaur Chawla wrote:

> Replace driver specific macro MSECS with msecs_to_jiffies().
>
> This was found using the following Coccinelle semantic patch:
>
> //<smpl>
> @@
> expression e;
> @@
>
> - MSECS(e)
> + msecs_to_jiffies(e)
> //</smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_dm.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> index 9b58b1a..d2e86b9 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> @@ -2769,12 +2769,14 @@ void dm_fsync_timer_callback(unsigned long data)
>  		if (bDoubleTimeInterval) {
>  			if (timer_pending(&priv->fsync_timer))
>  				del_timer_sync(&priv->fsync_timer);
> -			priv->fsync_timer.expires = jiffies + MSECS(priv->ieee80211->fsync_time_interval*priv->ieee80211->fsync_multiple_timeinterval);
> +			priv->fsync_timer.expires = jiffies +
> +				msecs_to_jiffies(priv->ieee80211->fsync_time_interval*priv->ieee80211->fsync_multiple_timeinterval);

You're no worse than before, but maybe there could be some way not to
exceed the 80 character limit quite so much.  Maybe some subcomputation
that could get a meaningful name.

julia

>  			add_timer(&priv->fsync_timer);
>  		} else {
>  			if (timer_pending(&priv->fsync_timer))
>  				del_timer_sync(&priv->fsync_timer);
> -			priv->fsync_timer.expires = jiffies + MSECS(priv->ieee80211->fsync_time_interval);
> +			priv->fsync_timer.expires = jiffies +
> +				msecs_to_jiffies(priv->ieee80211->fsync_time_interval);
>  			add_timer(&priv->fsync_timer);
>  		}
>  	} else {
> @@ -2847,7 +2849,8 @@ static void dm_StartSWFsync(struct net_device *dev)
>  	}
>  	if (timer_pending(&priv->fsync_timer))
>  		del_timer_sync(&priv->fsync_timer);
> -	priv->fsync_timer.expires = jiffies + MSECS(priv->ieee80211->fsync_time_interval);
> +	priv->fsync_timer.expires = jiffies +
> +			msecs_to_jiffies(priv->ieee80211->fsync_time_interval);
>  	add_timer(&priv->fsync_timer);
>
>  	write_nic_dword(dev, rOFDM0_RxDetector2, 0x465c12cd);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160212144041.GA1328%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6250414458663862272
X-Received: by 10.112.77.169 with SMTP id t9mr303131lbw.8.1455289193443;
        Fri, 12 Feb 2016 06:59:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.16.198 with SMTP id 189ls133713wmq.45.gmail; Fri, 12 Feb
 2016 06:59:52 -0800 (PST)
X-Received: by 10.28.225.8 with SMTP id y8mr409734wmg.7.1455289192856;
        Fri, 12 Feb 2016 06:59:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 141si128417wmy.2.2016.02.12.06.59.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:59:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="202851194"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 15:59:52 +0100
Date: Fri, 12 Feb 2016 15:59:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: rtl8192u: ieee80211:
 ieee80211_softmac: Replace MSECS with msecs_to_jiffies
In-Reply-To: <20160212144017.GA1301@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602121558450.2510@hadrien>
References: <20160212144017.GA1301@amitoj-Inspiron-3542>
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
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index 21ee410..6d85648 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -380,7 +380,8 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
>  	if (ieee->beacon_txing && ieee->ieee_up) {
>  //		if(!timer_pending(&ieee->beacon_timer))
>  //			add_timer(&ieee->beacon_timer);

The above comment doesn't seem necessary.  It would be for a different
patch than this issue.

julia

> -		mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->current_network.beacon_interval-5)));
> +		mod_timer(&ieee->beacon_timer,
> +			  jiffies + msecs_to_jiffies(ieee->current_network.beacon_interval-5));
>  	}
>  	//spin_unlock_irqrestore(&ieee->beacon_lock,flags);
>  }
> @@ -1735,10 +1736,12 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
>  	if(dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)& ieee->ps))
>  		return 2;
>
> -	if(!time_after(jiffies, ieee->dev->trans_start + MSECS(timeout)))
> +	if(!time_after(jiffies,
> +		       ieee->dev->trans_start + msecs_to_jiffies(timeout)))
>  		return 0;
>
> -	if(!time_after(jiffies, ieee->last_rx_ps_time + MSECS(timeout)))
> +	if(!time_after(jiffies,
> +		       ieee->last_rx_ps_time + msecs_to_jiffies(timeout)))
>  		return 0;
>
>  	if((ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE ) &&
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160212144017.GA1301%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>


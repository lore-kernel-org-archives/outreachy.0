X-GM-THRID: 6394467446448717824
X-Received: by 10.46.84.13 with SMTP id i13mr2713142ljb.2.1488836806171;
        Mon, 06 Mar 2017 13:46:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls1450581ljd.17.gmail; Mon, 06 Mar
 2017 13:46:45 -0800 (PST)
X-Received: by 10.46.5.136 with SMTP id 130mr2671608ljf.6.1488836805554;
        Mon, 06 Mar 2017 13:46:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si103403wmg.3.2017.03.06.13.46.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 13:46:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,255,1484002800"; 
   d="scan'208";a="263395218"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 22:46:45 +0100
Date: Mon, 6 Mar 2017 22:46:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging:rtl8192e: Indent the code
In-Reply-To: <20170306191929.GA5046@fireworks>
Message-ID: <alpine.DEB.2.20.1703062245410.2172@hadrien>
References: <20170306191929.GA5046@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 6 Mar 2017, Georgiana Rodica Chelu wrote:

> Indent the code in order to follow the rules and to
> increase the readability of the code.
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_wx.c                   | 6 +++---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      | 2 +-
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
> index b1500ee..48109f6 100644
> --- a/drivers/staging/rtl8192e/rtllib_wx.c
> +++ b/drivers/staging/rtl8192e/rtllib_wx.c
> @@ -668,11 +668,11 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
>  	if (ieee->set_security)
>  		ieee->set_security(ieee->dev, &sec);
>
> -	 if (ieee->reset_on_keychange &&
> +	if (ieee->reset_on_keychange &&
>  	    ieee->iw_mode != IW_MODE_INFRA &&
>  	    ieee->reset_port && ieee->reset_port(dev)) {
> -		netdev_dbg(ieee->dev, "Port reset failed\n");
> -		return -EINVAL;
> +			netdev_dbg(ieee->dev, "Port reset failed\n");
> +			return -EINVAL;

I think that the last two lines were already fine here.  Good catch for
the next two.

julia

>  	}
>  	return ret;
>  }
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index f0fba81..10ab2bf0 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -939,7 +939,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	if (HTCCheck(ieee, skb->data))
>  	{
>  		if(net_ratelimit())
> -		printk("find HTCControl\n");
> +			printk("find HTCControl\n");
>  		hdrlen += 4;
>  		rx_stats->bContainHTC = true;
>  	}
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index 1bff0e9..14f3d9c 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -466,7 +466,7 @@ void ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
>  			goto out;
>  		ieee->set_chan(ieee->dev, ch);
>  		if(channel_map[ch] == 1)
> -		ieee80211_send_probe_requests(ieee);
> +			ieee80211_send_probe_requests(ieee);
>
>  		/* this prevent excessive time wait when we
>  		 * need to wait for a syncro scan to end..
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306191929.GA5046%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>


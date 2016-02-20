X-GM-THRID: 6253454979365863424
X-Received: by 10.112.204.97 with SMTP id kx1mr2566043lbc.0.1455998415797;
        Sat, 20 Feb 2016 12:00:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.125.195 with SMTP id y186ls152027wmc.6.canary; Sat, 20 Feb
 2016 12:00:14 -0800 (PST)
X-Received: by 10.28.63.19 with SMTP id m19mr337068wma.0.1455998414100;
        Sat, 20 Feb 2016 12:00:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si634108wme.2.2016.02.20.12.00.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 12:00:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,477,1449529200"; 
   d="scan'208";a="165397472"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 21:00:12 +0100
Date: Sat, 20 Feb 2016 15:00:10 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: wlan-ng: Convert explicit
 comparison to NULL to !x.
In-Reply-To: <20160220115438.GA3260@sandhya>
Message-ID: <alpine.DEB.2.10.1602201458520.2711@hadrien>
References: <20160220115438.GA3260@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 20 Feb 2016, Sandhya Bankar wrote:

> Convert explicit comparison to NULL to !x.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>

Everything looks fine now, but the change was already made in the
following commit:

d23054350d0fafdc4a6f8d68b18cd70ec581c95d

Maybe you need to update your kernel.

julia

> ---
> Changes in v3:
> *In v2,missed to add comment below --- so adding comment
> *Adding Full name in signed-off-by line.
>
>  drivers/staging/wlan-ng/p80211conv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> index 1b02cdf..86fd23f 100644
> --- a/drivers/staging/wlan-ng/p80211conv.c
> +++ b/drivers/staging/wlan-ng/p80211conv.c
> @@ -613,7 +613,7 @@ int p80211skb_rxmeta_attach(struct wlandevice *wlandev, struct sk_buff *skb)
>  	/* Allocate the rxmeta */
>  	rxmeta = kzalloc(sizeof(struct p80211_rxmeta), GFP_ATOMIC);
>
> -	if (rxmeta == NULL) {
> +	if (!rxmeta) {
>  		netdev_err(wlandev->netdev,
>  			   "%s: Failed to allocate rxmeta.\n", wlandev->name);
>  		result = 1;
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160220115438.GA3260%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>


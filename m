X-GM-THRID: 6343298226858229760
X-Received: by 10.129.148.67 with SMTP id l64mr2890996ywg.128.1476954239266;
        Thu, 20 Oct 2016 02:03:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.182 with SMTP id q51ls4065846otd.27.gmail; Thu, 20 Oct
 2016 02:03:58 -0700 (PDT)
X-Received: by 10.157.58.10 with SMTP id j10mr3522281otc.138.1476954238687;
        Thu, 20 Oct 2016 02:03:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si5955036vkd.0.2016.10.20.02.03.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 02:03:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,518,1473112800"; 
   d="scan'208";a="197465456"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Oct 2016 11:03:57 +0200
Date: Thu, 20 Oct 2016 11:03:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Move
 assignment out of the if.
In-Reply-To: <20161019215641.GA309@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610201103360.2943@hadrien>
References: <20161019215641.GA309@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 19 Oct 2016, Elise Lennion wrote:

> Assignments inside of if statements confuse the reader and should be
> avoided, so it was moved out before the if.
>
> Found with Coccinelle, semantic patch:
> @@
> expression e1, e2;
> statement S;
> position p;
> @@
>
> + e1 = e2;
> if (<+...
> - (e1 = e2)
>  @p
> + e1
>  ...+>)
> S
>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 89cbc07..0d81b3a 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -1145,8 +1145,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>
>  	/* skb: hdr + (possibly fragmented, possibly encrypted) payload */
>
> -	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
> -	    (keyidx = ieee80211_rx_frame_decrypt(ieee, skb, crypt)) < 0)
> +	keyidx = ieee80211_rx_frame_decrypt(ieee, skb, crypt);
> +	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) && keyidx < 0)

Yeah, this is indeed not a good idea.

julia

>  	{
>  		printk("decrypt frame error\n");
>  		goto rx_dropped;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161019215641.GA309%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>


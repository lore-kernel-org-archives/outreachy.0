X-GM-THRID: 6525272592807362560
X-Received: by 10.28.88.195 with SMTP id m186mr502284wmb.31.1519286690009;
        Thu, 22 Feb 2018 00:04:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.145.3 with SMTP id j3ls911973wrj.8.gmail; Thu, 22 Feb 2018
 00:04:48 -0800 (PST)
X-Google-Smtp-Source: AH8x225B55nogIsTPq3q4z9GlSB3Q5uA5vTJ6mm54J3K1BgCgzmeIR4uFYhjH4YL0RYL+105p92n
X-Received: by 10.223.180.86 with SMTP id v22mr563622wrd.1.1519286688950;
        Thu, 22 Feb 2018 00:04:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519286688; cv=none;
        d=google.com; s=arc-20160816;
        b=FEPK7woXijnwDW87VXshshRviliLTOU1ydYO10zocFHHift7jySu/8uI9Wu5x/EuC4
         E3BHUW6PdTf3JfX1LU3hmUsHr9MZF7yw/tVjD+T2tGX9gThGAZ/ftVPLwHbGeMJ7WWTQ
         Pc3j8jkg9mmqKrKR9wczaSq5deXnk6jf7sT8rOMx12qViM8lCHDlHFNzoz+2UQ/RGqQQ
         vU38i+VyBpu/lpSg97i/FrU2j70gR5oKEKu4+ReeukRlMAaz1Gn2LS6eZXC0j+BLIv8Y
         t4fZDkgcNQLk/utD52KVHTAtHIAYU//y1hG3/NZB2tqrWzh8TLMVaXrRTkHvKd5pIpTC
         nDqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=YBcbbBdBsXzIJsq6MYDhsbyIERVXEUEH4NjWg08VOCU=;
        b=EOQv9ZNB9D4B3Y2UrxtYB0H/XZfj03fANHejjlUPbL+sqjWsjqBdalCecDNH7ZWLSZ
         eC7pqJ+Bb3brdHjStsEoEWV3BwwH7ZHYRUSnphx5UY3sELVoQYr5Q/7pq1iK7lRsAaKb
         VSWzcaOnkn6F/oA9LMYi9+rWQQoeTn+i7gh9usPJUs69FV+OnTS8pvzKT/MS4cY42Mmx
         4+feYPtT0H2+vAXgHpl2RmolJKarx/i1mG4ARtGCpEvZxgPXL3YZ9Wu6quT3WTuOnKUy
         WJnVKFiXz4+nEEup0hpJzuldoqTFQigStsvbD1rKe66xmgwCyAdvbuOZvidJUMahiVlZ
         A8Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a72si232664wme.1.2018.02.22.00.04.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 00:04:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,377,1515452400"; 
   d="scan'208";a="314786438"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2018 09:04:48 +0100
Date: Thu, 22 Feb 2018 09:04:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: remove 'if' on
 field address
In-Reply-To: <20180222071009.GA4082@gmail.com>
Message-ID: <alpine.DEB.2.20.1802220904230.2281@hadrien>
References: <20180222071009.GA4082@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 22 Feb 2018, Dafna Hirschfeld wrote:

> Remove 'if' statements testing struct's field address.
> Since such statements always return true, they are redundant.
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Good catch :)

> ---
>  drivers/staging/wilc1000/linux_wlan.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index d9725ef..cf746f2 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -628,8 +628,7 @@ void wilc1000_wlan_deinit(struct net_device *dev)
>  			wl->hif_func->disable_interrupt(wl);
>  			mutex_unlock(&wl->hif_cs);
>  		}
> -		if (&wl->txq_event)
> -			complete(&wl->txq_event);
> +		complete(&wl->txq_event);
>
>  		wlan_deinitialize_threads(dev);
>  		deinit_irq(dev);
> @@ -677,11 +676,8 @@ static int wlan_deinit_locks(struct net_device *dev)
>  	vif = netdev_priv(dev);
>  	wilc = vif->wilc;
>
> -	if (&wilc->hif_cs)
> -		mutex_destroy(&wilc->hif_cs);
> -
> -	if (&wilc->rxq_cs)
> -		mutex_destroy(&wilc->rxq_cs);
> +	mutex_destroy(&wilc->hif_cs);
> +	mutex_destroy(&wilc->rxq_cs);
>
>  	return 0;
>  }
> @@ -716,8 +712,7 @@ static void wlan_deinitialize_threads(struct net_device *dev)
>
>  	wl->close = 1;
>
> -	if (&wl->txq_event)
> -		complete(&wl->txq_event);
> +	complete(&wl->txq_event);
>
>  	if (wl->txq_thread) {
>  		kthread_stop(wl->txq_thread);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180222071009.GA4082%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


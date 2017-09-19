X-GM-THRID: 6467580145196597248
X-Received: by 10.46.16.8 with SMTP id j8mr290377lje.18.1505852914856;
        Tue, 19 Sep 2017 13:28:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.4.13 with SMTP id 13ls472971lje.18.gmail; Tue, 19 Sep 2017
 13:28:33 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC3VGJwFPQmAKsrlkoBLJRx8arI+FlLaRe+49Q2lzIu1++uQtuRVabai0M6/zEUC4dBIX5h
X-Received: by 10.25.181.214 with SMTP id g83mr296146lfk.17.1505852913321;
        Tue, 19 Sep 2017 13:28:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505852913; cv=none;
        d=google.com; s=arc-20160816;
        b=ZG7QUwk2v6xxcRyGj3Wf9DtAnn8gHqEThvDzBNxezshsBc24Hue1VbFuJQ3UtpPsMQ
         wErUxmlEKsb4O/1LeC/dxYPqpJ/hjMycJuJzlAJdqJGpTzbS3mfKt1dK45XkvpJhVY28
         FsEFBbpcl8bnLRJOEkkRvb1esErC0J1+Lwy5YcdJBMyVwqQZtg+Yf3ekPbQ2B91gVKUw
         Z4DYPpvs4t0B/XF06ZRPds/WbNZdcPbsvOSBBrQxK9Ib84uFqrA6FcIzk9ABZwfmOR3L
         +nEvpCiVH6E5VUFn4xhjzAP05qPJlkZb3h3JeuY0Dy5qTKTinjx3ZjsLh0dmZ79UhfCK
         R9TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=XFzvQb71X/PpAS0aqKt3xyNkCAskjmZQfRg0dHVazRc=;
        b=ZGtzFrGv8/BO1j/vuMwT44XyAOYIY89VpiSzAqYwSWmeXmckokjKWpnSbSHJIvAMk2
         XB9/7lIlTw69fRvXGKRGBGGi1CdL56cuXTiaNLVt25Vt0RkNxa1di6rZBcXAKbVEcWkC
         9ErNhC1FT/z4wH/57cw10/WSuIsN2vC9Djgvfy0sUuREf85IgYRARYEQcZYXYWNuLwwA
         Ajp0o5ijtMmZwG/VthjtKd96K96EfohO4vawZW6+x55vO6GpJXsOXxzqbfHYK8R2abyu
         nslIIi4i2eqU+hhACGs2kizElP9DedjbI3mZ2XWt+clawVQaOauPaDBFy2UvUbc1iEqR
         j0Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si6131wmg.4.2017.09.19.13.28.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 13:28:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,418,1500933600"; 
   d="scan'208";a="291836691"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2017 22:28:17 +0200
Date: Tue, 19 Sep 2017 22:28:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Use
 netdev_info instead of printk
In-Reply-To: <20170919195406.n6kztu5q3pnduhir@fireworks>
Message-ID: <alpine.DEB.2.20.1709192225010.2518@hadrien>
References: <20170919195406.n6kztu5q3pnduhir@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Sep 2017, Georgiana Chelu wrote:

> Replace printk with netdev_info because struct ieee80211_device
> contains a net_device structure.
>
> Issue found by checkpatch.pl script.
> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
>
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Maybe all the locally defined debug levels are not really needed, and the
calls to the debug macros could also be replaced by appropriate calls to
netdev logging functions.

julia

> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> index 8aa38dcf0dfd..0f86195680e8 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> @@ -143,7 +143,7 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, P
>
>  	if (ACT_ADDBARSP == type) {
>  		// Status Code
> -		printk(KERN_INFO "=====>to send ADDBARSP\n");
> +		netdev_info(ieee->dev, "=====>to send ADDBARSP\n");
>
>  		put_unaligned_le16(StatusCode, tag);
>  		tag += 2;
> @@ -345,7 +345,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
>  	pBaTimeoutVal = (u16 *)(tag + 5);
>  	pBaStartSeqCtrl = (PSEQUENCE_CONTROL)(req + 7);
>
> -	printk(KERN_INFO "====================>rx ADDBAREQ from :%pM\n", dst);
> +	netdev_info(ieee->dev, "====================>rx ADDBAREQ from :%pM\n", dst);
>  //some other capability is not ready now.
>  	if ((ieee->current_network.qos_data.active == 0) ||
>  		(!ieee->pHTInfo->bCurrentHTSupport)) //||
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170919195406.n6kztu5q3pnduhir%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>


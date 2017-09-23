X-GM-THRID: 6469049838689320960
X-Received: by 10.46.66.81 with SMTP id p78mr148996lja.33.1506197031557;
        Sat, 23 Sep 2017 13:03:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.207 with SMTP id m15ls1960095wrb.13.gmail; Sat, 23 Sep
 2017 13:03:50 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDZJf+pMWSKr2BKGrrK87p81i/EtIGqSNhlO5bIsEC+vHY7qbHmdmSqgzPsPvcyVgAvkh3j
X-Received: by 10.28.35.142 with SMTP id j136mr188454wmj.1.1506197030530;
        Sat, 23 Sep 2017 13:03:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506197030; cv=none;
        d=google.com; s=arc-20160816;
        b=Rx9jGKiNA9LOJ1tBKX42KjqLKFwn/kdGBoV/iyexnp31NA4RfrC0xdTyD76uVSPaTT
         I3WCyHP66BSoleo3ffaHDXMmB1jm4eyzqP2t5mYjDZZwqOIe7GNlcmLjX1r1UKhr/WsX
         59nOz6uJbbfIyk1BtkveEFnKMRvxpe6h5cLBVKVFLUDP83Q3BibVQZwyK4hBu6PRdXrs
         wFbVDRJErZskNriaas5+yRc9XtQV65G0wIEqgoGNa1msMggj2lrPOKO1fXFOze1Fee+W
         9NBTSj46WBTQq1DI3tcVnln6jCzuY4SXhiMInhTPTkG7H4CCOZJJnd+/RxDIrPde/+sf
         T5cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=xpkxWe5a0jWjdWTU86ih0ldp1r39ZfPsWRi6izkdMos=;
        b=F5ym/z31Vaw+gSVMiK2/x6Y/lp7tOeYpl8frSkK6N+7nKcaUrXuqN0aSqfdcWe/DRY
         fjZzA+a/2v25AbChH+DC0jXLnE3CLjAD4GFvonpNm0LyKP7q55U8u7qGgM5VQt2phwqH
         T5XT25I3b4pPkFb037t09IeY1tJVqQf6U60utxjj/mwZ1VRzO4XFa3ADvEdRcfygGd9Q
         HPxTfKt8DpbTHN9V1hURDh2srXDYSOUvq7liEpmjF11GbzBr8IfIRiOusN3XqZbwuslH
         h7LXEFYcMnY/FKFSfNehaNt67c5O2qaZRmOqTVl/Qy6UDjylk+WaIHD8CaS8bQJVKi2s
         4OLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j4si239049wmi.2.2017.09.23.13.03.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 13:03:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,430,1500933600"; 
   d="scan'208";a="238498846"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Sep 2017 22:03:49 +0200
Date: Sat, 23 Sep 2017 22:03:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: wilc1000: No space is
 necessary after a cast
In-Reply-To: <0a42225d2ac8416a7b74f2c9cea55bfd4d0521e8.1506192874.git.keerthigd4990@gmail.com>
Message-ID: <alpine.DEB.2.20.1709232203370.5987@hadrien>
References: <cover.1506192874.git.keerthigd4990@gmail.com> <0a42225d2ac8416a7b74f2c9cea55bfd4d0521e8.1506192874.git.keerthigd4990@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Sep 2017, Keerthi Reddy wrote:

> A space after type casting is not needed. All the other typecasts
> in this file don't put space after typecast. so remove space
> after typecast at this line.
>
> checked with checkpatch.pl script
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index ac5aaaf..36dc2a0 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -1617,7 +1617,7 @@ static int mgmt_tx(struct wiphy *wiphy,
>
>  	*cookie = (unsigned long)buf;
>  	priv->u64tx_cookie = *cookie;
> -	mgmt = (const struct ieee80211_mgmt *) buf;
> +	mgmt = (const struct ieee80211_mgmt *)buf;
>
>  	if (ieee80211_is_mgmt(mgmt->frame_control)) {
>  		mgmt_tx = kmalloc(sizeof(struct p2p_mgmt_data), GFP_KERNEL);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0a42225d2ac8416a7b74f2c9cea55bfd4d0521e8.1506192874.git.keerthigd4990%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


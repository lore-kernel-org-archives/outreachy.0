X-GM-THRID: 6469021492969472000
X-Received: by 10.25.229.18 with SMTP id c18mr143400lfh.1.1506187642925;
        Sat, 23 Sep 2017 10:27:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.46.11 with SMTP id u11ls1798629lju.13.gmail; Sat, 23 Sep
 2017 10:27:21 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCwwYhfEUxCNa4nDY1XWB5JIFEcAmF/52DjRbzY7Esh9rg61jK64fFME1KcXb0K+YuNS96q
X-Received: by 10.46.84.69 with SMTP id y5mr123696ljd.37.1506187641386;
        Sat, 23 Sep 2017 10:27:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506187641; cv=none;
        d=google.com; s=arc-20160816;
        b=z0SKAK95fBCBVbOIobjGZlgu3amFxLtVXAcAmhCf2JHrDAZn6FXekatvzYvlBdm8oX
         3048wVsrjUELCmqG0fQ0as8u3YCz9GIxKB58D5G+sld+27Q1pWi98JcwnVGWODf+CpYL
         p0/882kHVE+Tl47H5eHHro1SVqYlNP1C0wT9rZc/eo5omcY99Y+7If//k4qpdcPuuZBH
         KeGA304L9SC/UiPUal8PktFrGSfPz08V3wLfEqdmp2gkUAqUUDK7evk5nv4BgM1nrEdW
         YRbpxX1SJsSPwfHgwouLvvd3rC7qAF18pLnqEieBffuONcDNfWCmnIAC+pRtQBQRgBJz
         479A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/E6QI0DibuHPMNsVycPIPR6IzIA/Ndr1qntxsjY5Mys=;
        b=BWe6+YzdUoqDNG4h8rfS5ZQNCxJ2VwF6xf6B+356/HCiOsNgFcatPIfbulEA+wNX9y
         MoeNgZLKXrvRQeNS2s9o1hE52x9eiGiP8g3zJ5Uv0eLOkKeg55CLFlZ9J6xsqDUdPfpy
         SyL+anPuNZxewABBGbTildDYR5aMT3EKLez4xHYacTiGHEXeDl2GbhGlqtmA/6mDv268
         ZOFs4VrDTOT6xcMaTGJZcJ+xWXxa6saXKVASjOLbMq5QL45oux3fPsdONKcWCv+qirNX
         ix75SSiZNlE9rQ2eYIQADS8CM//MOAwjqUCasJv1ku7gsYcIrLbuCLTS21FnFscoBvtB
         1y7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si222892wmi.2.2017.09.23.10.27.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 10:27:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,430,1500933600"; 
   d="scan'208";a="292418793"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Sep 2017 19:27:21 +0200
Date: Sat, 23 Sep 2017 19:27:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com, johnny.kim@atmel.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: No space is
 necessary after a cast
In-Reply-To: <20170923170715.GA8329@manoharreddy>
Message-ID: <alpine.DEB.2.20.1709231926590.5987@hadrien>
References: <20170923170715.GA8329@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Sep 2017, Keerthi Reddy wrote:

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923170715.GA8329%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>


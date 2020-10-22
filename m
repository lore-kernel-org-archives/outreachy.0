X-GM-THRID: 6886430706216468480
X-Received: by 2002:a50:eb8c:: with SMTP id y12mr2182729edr.61.1603374431570;
        Thu, 22 Oct 2020 06:47:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:5208:: with SMTP id g8ls876336ejm.11.gmail; Thu, 22
 Oct 2020 06:47:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwgCeS3ETWE7gVqQt8s318mdE9YWTGFtrdfQHWeI4XWECqCI5mQ7D9oC897SKw5VoNq+7aA
X-Received: by 2002:a17:906:1150:: with SMTP id i16mr1999348eja.90.1603374429118;
        Thu, 22 Oct 2020 06:47:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603374429; cv=none;
        d=google.com; s=arc-20160816;
        b=tGn1yBl7fQpcuMZIIxVlc9lylCyiBN40DUecE8yAQSlOWfH/6pwoxpD3Sv+FeQoMrf
         mkAjOgFqhBOZlh0PKQLIOqgw9nUOSDhkbdpVxlNIEhnVeCuT0DxOirr5bYe4Mkwz9Qrf
         18tgoEs5r5gla/EFLCAijJvstZD8IEZOT6v4zc2C8GPr22gh+jnja4I4Fg23o60mAWTR
         g+ZaaiyYaD9KrOn1cdHh3fggF7W72D8BM7vTu53DnEWk7A6Y4vfifVLXvHKFkqKIDgFI
         97csmHd6RS9Ocfhq+JsGUbCEkRmVZbzaiucBlZoI6OpV1THa0H0h7hTI/+SduSL3Pkh7
         hvZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ff6ogGkVNq6uPdcTuLOUItHwRb2hDkhOefpGDmPr9gY=;
        b=isQI5UivtPEvbryMzOxptvXXf4NRvbQXfEL7g8CJ0OI87yKNgEjKu93HFZFfTi9m1R
         pWRBeb6KWFTHf2Sau0qt2tHW9R2jSo2dV+FYqfqYkzefm+id24fjk36Zhn9SD9A9D566
         8Ugy7AUbem0PnH95LFEEXUWy8m4tWYnHaI5aG8t1zzz+Y2NMZq0FdrRhWbgXPOrcY8IQ
         8UcesFNP0PxH1Eztm5jQcYnjUpbEVDaq2k9o0N6xvaffANqrt2SnhgG5/DfTUp64c3sJ
         AR3PFlXsgPN1go6OUmG5WtqjMSu+PwZKShjGcYknwXKsDLsbi42vY1ALXsPEOqmxJxd+
         Cwig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n11si61770edi.1.2020.10.22.06.47.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:47:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,404,1596492000"; 
   d="scan'208";a="473874482"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2020 15:47:08 +0200
Date: Thu, 22 Oct 2020 15:47:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Izabela Bakollari <izabela.bakollari@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging/wlan-ng: Fix line that exceeds
 100 columns
In-Reply-To: <20201022130807.212454-1-izabela.bakollari@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010221545480.5113@hadrien>
References: <20201022130807.212454-1-izabela.bakollari@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 22 Oct 2020, izabela.bakollari@gmail.com wrote:

> From: Izabela Bakollari <izabela.bakollari@gmail.com>
>
> Rearrange comment that exceeds 100 columns length. Issue reported
> by checkpatch.pl
>
> Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 759e475e303c..5fad37a49aa5 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -366,7 +366,8 @@ static int prism2_scan(struct wiphy *wiphy,
>  					  msg2.beaconperiod.data,
>  					  ie_buf,
>  					  ie_len,
> -					  (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
> +					  (msg2.signal.data - 65536) * 100,
> +					  /* Conversion to signed type */

I think that the comment is in the wrong place.  GFP_KERNEL has to do with
whether the allocation can wait in case of insufficient memory, and not
with signed types.  The signed type thing must be the argument before.  Si
it would be better to put the comment above that code.

julia


>  					  GFP_KERNEL);
>
>  		if (!bss) {
> --
> 2.18.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201022130807.212454-1-izabela.bakollari%40gmail.com.
>


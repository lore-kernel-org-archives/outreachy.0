X-GM-THRID: 6527683536897441792
X-Received: by 10.46.29.133 with SMTP id w5mr1300031lje.26.1519850599115;
        Wed, 28 Feb 2018 12:43:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.114.14 with SMTP id n14ls553373ljc.14.gmail; Wed, 28 Feb
 2018 12:43:15 -0800 (PST)
X-Google-Smtp-Source: AG47ELvImGX749zJyp3ja2Bb0swRnO+EQvsB6MB0fzSkZk3zO+KCimPjYrpc52sCOe3zDCzOcgYv
X-Received: by 10.46.129.134 with SMTP id e6mr1320787ljg.41.1519850595668;
        Wed, 28 Feb 2018 12:43:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519850595; cv=none;
        d=google.com; s=arc-20160816;
        b=Fs0IVOeDdwiiA48G1Y6cmizfyIxVAzcWgs88mN/W76A3cmmafUWklWMDidEeNTqMD4
         B1KvYwXEuDxFQC1tMtaa9x4q6ggd6AxcmDley5mvY79knQxhItEk+jS2uLaOFoCPvcCO
         3JRg7l4duz16Q9RtecVaKQ4R01hQIbLGgqIfFjiG7MODISgCyNaggk9Y+Rt/rAsy3CtN
         bzQ0fmCRPszdsunH1xupFVTnJ8nkoP0TS0dsycpFiMQk9gxx0/P8iw2f8bdeCpLvMO5z
         zvKFtrstu57PkjgcdEp+IA+6mF4AXgBRR3zLlTG/Pg0XMFXk5SBUseLWlpqgHdkoKv42
         /i8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=53BgraoHJcEJisc4BmcjhddspEKf60FLtbb+IVIvs40=;
        b=UTnLJNrFm95p8uRa35OMazbVloOLeogcJ98cJZbyQ3mV5tbQ/DkTm3ZJkD6gJz/dZY
         3cSjj7gPBsEtC34U3q8wYooFwKoBrsjITSq6q7SNo0IsMtXs8O0LTqUwRZs+9CCnShOh
         tO/IiPXhwzuYKoV57P3uh+f8TrSG3gJTVgwlto7btnVJkTKKEr/IEwa9U3WyNuIpR54C
         DmN3ipRYgj6V5smyIFWGfA3KVa4fmWj5xLsOPsflYnXSrt8QH+ki50GQ7yeMrBg9Xxi7
         9Il5P6FsVKocf0zveOzSUjlYffke3GPEcPGSChIU1XUFKbkxfnVbXxGLjcXXY6u6yflv
         rQbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u16si101430lfc.3.2018.02.28.12.43.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 12:43:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,406,1515452400"; 
   d="scan'208";a="256461425"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2018 21:43:14 +0100
Date: Wed, 28 Feb 2018 21:43:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192e: move logical
 continuation to previous line
In-Reply-To: <1519850448-21871-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802282142550.2582@hadrien>
References: <1519850448-21871-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 28 Feb 2018, Santha Meena Ramamoorthy wrote:

> Move logical continuation '&&' to the previous line to conform to the
> Linux kernel coding style. Issue found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Change in v2:
>  - Match alignment with the appropriate open parenthesis.
>
>  drivers/staging/rtl8192e/rtllib_rx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
> index 30f72d2..fa580ce 100644
> --- a/drivers/staging/rtl8192e/rtllib_rx.c
> +++ b/drivers/staging/rtl8192e/rtllib_rx.c
> @@ -2644,8 +2644,8 @@ static inline void rtllib_process_probe_response(
>  	   (network->ssid_len ? 1 : 0))) {
>  		update_network(ieee, &ieee->current_network, network);
>  		if ((ieee->current_network.mode == IEEE_N_24G ||
> -		     ieee->current_network.mode == IEEE_G)
> -		     && ieee->current_network.berp_info_valid) {
> +		     ieee->current_network.mode == IEEE_G) &&
> +		    ieee->current_network.berp_info_valid) {
>  			if (ieee->current_network.erp_value & ERP_UseProtection)
>  				ieee->current_network.buseprotection = true;
>  			else
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519850448-21871-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


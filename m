X-GM-THRID: 6803327190249242624
X-Received: by 2002:a19:6f44:: with SMTP id n4mr5607724lfk.59.1584024004009;
        Thu, 12 Mar 2020 07:40:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls912637lfe.4.gmail; Thu, 12
 Mar 2020 07:40:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtVyXuyIEGX362kuJGx7sq6igG2U9HMsGb2NSuPpZddSgsQbm1Gz5mD/WOwdCDPBdrT6QHB
X-Received: by 2002:a19:7b18:: with SMTP id w24mr5525640lfc.188.1584024002369;
        Thu, 12 Mar 2020 07:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584024002; cv=none;
        d=google.com; s=arc-20160816;
        b=pC6bt9/a4ZeRhHGvVlV/3jcOqu8ORw+vpVtw66/eZig6lWMT6IXTZ+h2o2B7SHcioh
         6yYzF4IBvdRGOgN381tC+UekWhZ3qGbVMrM8EEBKOupnV37q879Xoh2baCe5m4GJAMdC
         f6m/VrUxmS40M9Y4pkIxE2HpC5BNstzkVvew/+GC4tpPT/dXAXLupFM4nIWq76G9RHY3
         lGW3PsDQwcltAvGGlP8Wredkwi+DpT4I8GnYh+Jldjrzhwz6GncNwpE3JQyq7mM5/4Dp
         SWrhhuK8Q+Adw0W/Dkis3Pv70iyFDuErL1OUaC2rqe3Nx9ZKtNxMd6V9mIlQ/3vzUmRc
         Z5RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=r9iY9rI4a1Wboe8mGYOyK9DkaCrbLNFaZPP2j2XzOM8=;
        b=SQsPuoM5w4wCuxkbQ4ZM5VK5lEgPw/wnEfZ7Pcsq0CSo/Zd9Yvdo5rgylSunn7DWDj
         ik742nIEAtQ4yV6Y8YUmoPrY5Y+DiHQ9dAO95WeX6JNLBwlF1q2ZVj/yOnzwgUPzn05P
         rwvBr+uAVEfiewaoI/K9svLIVlZQpS/MEmiopAjWWRHz1xqKIeYiGDSlEmdHzJgNliAP
         hA/4seZsNRg9WZi/i+tSlOXe86/QtuDrV9zeY2So58AerPtDBioHazwNi+oI0JsLgiMJ
         1gELMEYxQV2t/YmXvZehNPf+3UCewH2EGIVYwogIxEqL3j2vqMuhanr1qZHmLxdIqXpa
         +cMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r20si231108ljp.5.2020.03.12.07.40.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:40:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,545,1574118000"; 
   d="scan'208";a="342154261"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2020 15:39:30 +0100
Date: Thu, 12 Mar 2020 15:39:30 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Reformat longer
 macro definitions
In-Reply-To: <20200312142357.GA29468@deeUbuntu>
Message-ID: <alpine.DEB.2.21.2003121538470.2418@hadrien>
References: <20200312142357.GA29468@deeUbuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Mar 2020, Deepak R Varma wrote:

> Multiple macro definitions crossings 80 character line length nakes it
> hard to understand. Reformating the these lines makes the code more
> readable and easy to understand. Issue flagged by checkpatch script.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
>
> Changes in V2:
> 	- Update patch short description to avoid confution with an earlier patch
> description.

Thsi information goes below the --- so that it will be dropped when the
patch is applied.  When someone looks through the git history they will
have no idea what "and earlier patch description" refers to.

julia

> ---
>  drivers/staging/fbtft/fbtft.h | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 5f782da51959..81da30f4062e 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -348,9 +348,17 @@ module_exit(fbtft_driver_module_exit);
>
>  /* shorthand debug levels */
>  #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
> -#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
> -#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> -#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
> +#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS        \
> +				       | DEBUG_TIME_FIRST_UPDATE)
> +#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY   \
> +				       | DEBUG_BLANK | DEBUG_REQUEST_GPIOS  \
> +				       | DEBUG_FREE_GPIOS                   \
> +				       | DEBUG_VERIFY_GPIOS                 \
> +				       | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> +#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE     \
> +				       | DEBUG_FB_FILLRECT                  \
> +				       | DEBUG_FB_COPYAREA                  \
> +				       | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
>  #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
>  #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>  #define DEBUG_LEVEL_7	0xFFFFFFFF
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200312142357.GA29468%40deeUbuntu.
>


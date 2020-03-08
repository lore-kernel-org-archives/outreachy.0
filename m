X-GM-THRID: 6801839515695579136
X-Received: by 2002:ac2:54b4:: with SMTP id w20mr550368lfk.39.1583679186703;
        Sun, 08 Mar 2020 07:53:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b4e5:: with SMTP id s5ls537875ljm.6.gmail; Sun, 08 Mar
 2020 07:53:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuyvkZQs46MvPtLqszdWy9+cq/m+qL1/SjdtjOB6/UB7QpHRWqd6BATCVNrfhF/M9l4v0LC
X-Received: by 2002:a2e:8097:: with SMTP id i23mr7356590ljg.127.1583679185176;
        Sun, 08 Mar 2020 07:53:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583679185; cv=none;
        d=google.com; s=arc-20160816;
        b=sFGNMa1Qbe7sv7qLNqDZwZ2nHRynuhGtCmvYhcj0r5O5nOufKZ3hpNHP+zFQBbTRhk
         Jb8oMe8aNnzklMPWV3K9HhvfJV0/Cby+3y6p3zqi4FT4lnWVjxsDekfT15HbfYZ74UMb
         fhlLj9jG8rNi7ThsgYj/yfH185wEXt74Gda9g64ih9yObZhYznQBFMmIWcRHPD91eUDC
         Y8kOosYFU/S3O0eSNUzWWoHTx8iqNWqGrWy/Aky4NL9LRKlUUneW9BFPMdGPk8A+rwFa
         T1ZOQPvBCoffcY59+59V78CSjRmdPSh3Bcg5BELe8GtLGcPY0e7uYhv2+EHyrSVwGnQf
         g5QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=R2VG9c/e+k/ZwERlWdo8osIivMBqVMihV3ZpTEk/c1g=;
        b=UL/DwN3bCoZ8X+p73az4EXzbCvbMp2+lshxH388tdD0W0zV0dCuDVbeoj4fNstMbSf
         6vOEib6pSZTbHd9RPR/iOn32pbClh2w3aR7ChbbcVbazUSnuQyv/wskMFPgAQpQxhZ6b
         N+5aFhpeOgRj9v56dda6tIy2oogJFHXTWsW7WEDPFPKo1Ow02qAjDqTP7gJICBI86/lC
         btAJrFAdYFzykgCpKPzZDjvkT411JtLUPS7mTHnxsRlULLfeiF841jdUvX1J3SnguFWG
         x/mS/zVKKR+KDme6ZdyvA2OEpEW28mWALBW9qtmPZoGhRQkO/CTOoibt9/HFzFrwTCUb
         kZWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p14si38948lfo.0.2020.03.08.07.53.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 07:53:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,530,1574118000"; 
   d="scan'208";a="439369821"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2020 15:53:04 +0100
Date: Sun, 8 Mar 2020 15:53:04 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: rts5208: Replace bit shifting
 with BIT macro
In-Reply-To: <20200308141057.5857-1-payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003081551150.2400@hadrien>
References: <20200308141057.5857-1-payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 8 Mar 2020, Payal Kshirsagar wrote:

> Prefer using BIT macro and replace bit shifting with the BIT(x) macro.
>
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_card.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_card.h b/drivers/staging/rts5208/rtsx_card.h
> index 39727371cd7a..9d2504fddb13 100644
> --- a/drivers/staging/rts5208/rtsx_card.h
> +++ b/drivers/staging/rts5208/rtsx_card.h
> @@ -338,7 +338,7 @@
>  #define DMA_DIR_FROM_CARD		0x02
>  #define DMA_EN				0x01
>  #define DMA_128				(0 << 4)
> -#define DMA_256				(1 << 4)
> +#define DMA_256				BIT(4)
>  #define DMA_512				(2 << 4)
>  #define DMA_1024			(3 << 4)

It would be better to keep them all being expressed in the same way, in
this case and the next one.

julia

>  #define DMA_PACK_SIZE_MASK		0x30
> @@ -542,7 +542,7 @@
>
>  #define BLINK_EN			0x08
>  #define LED_GPIO0			(0 << 4)
> -#define LED_GPIO1			(1 << 4)
> +#define LED_GPIO1			BIT(4)
>  #define LED_GPIO2			(2 << 4)
>
>  #define SDIO_BUS_CTRL		0x01
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200308141057.5857-1-payalskshirsagar1234%40gmail.com.
>


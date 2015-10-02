X-GM-THRID: 6200961771427069952
X-Received: by 10.112.145.3 with SMTP id sq3mr1660526lbb.7.1443776166944;
        Fri, 02 Oct 2015 01:56:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.133 with SMTP id jg5ls290954wid.14.canary; Fri, 02 Oct
 2015 01:56:06 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr685598wic.3.1443776166564;
        Fri, 02 Oct 2015 01:56:06 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id hs5si200822wib.1.2015.10.02.01.56.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:56:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx3so23807809wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Z2p7JEJ8tZfX5nr84tbEWFMcNefAHMMlxKDWL2cyeqY=;
        b=nOtW4FvQcW/gXmjLgwLqv5Syr08DdFY6ZAaynb0gNabiD/W5JanZ4bLx7ILaiOX637
         QEtPbTaBvdGNbyFpvUFoo3SgHi+ADf0TFD4hhzmNRNAA6zN6C4AKG5EZ/NxWvcJB3v1k
         jF7V6GvhzPWY06+oRdwKgCdDWrUeThv+SIoeEk22sfuGkHaf9XHsvoAR2wJtxV42GSbv
         PWG384PVzacWPtoOhDN50715xNSCELAmswS1VswQlVFvAonbGb7tyQx/hs9im9g+RuBm
         oMx8fAr6+I8p4OepMr99GCGXHQ7LiFDUgRBjtz7S0B6TCvGfw2Jh/gex5YwoOeJnz5l/
         px4w==
MIME-Version: 1.0
X-Received: by 10.194.176.6 with SMTP id ce6mr14916678wjc.101.1443776166367;
 Fri, 02 Oct 2015 01:56:06 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Fri, 2 Oct 2015 01:56:05 -0700 (PDT)
In-Reply-To: <20151002081827.GA56279@ubuntu>
References: <20151002081827.GA56279@ubuntu>
Date: Fri, 2 Oct 2015 14:26:05 +0530
Message-ID: <CAK-LDbJhs2szTJu0o7A05Qe=xY1trVye8PvngQVJwd17G3bC6g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: board: Removed unnecessary
 header file
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 1:48 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Fixed the problem with previous version by removing the unnecessary
> header file that was added in previous version.

Hi,

Version 2 should be on top of the actual file and not on the version 1
of the patch.

> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/board/board.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/board/board.c b/drivers/staging/board/board.c
> index 8d0ac82..edbc590 100644
> --- a/drivers/staging/board/board.c
> +++ b/drivers/staging/board/board.c
> @@ -19,8 +19,6 @@
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_domain.h>
> -#include <asm/prom.h>
> -
>  #include "board.h"
>
>  static struct device_node *irqc_node __initdata;
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151002081827.GA56279%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali


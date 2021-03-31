X-GM-THRID: 6945917032908980224
X-Received: by 2002:a2e:91c2:: with SMTP id u2mr3209042ljg.301.1617222984246;
        Wed, 31 Mar 2021 13:36:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls2886191lfo.0.gmail; Wed, 31 Mar
 2021 13:36:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvVoxOOIpK/VjRvRzfZg8TMvvCabgOLbxEC54ymclY+dfHfZCXtE+WccoLMkX5V2/G3GBx
X-Received: by 2002:ac2:5973:: with SMTP id h19mr3149031lfp.120.1617222982211;
        Wed, 31 Mar 2021 13:36:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617222982; cv=none;
        d=google.com; s=arc-20160816;
        b=Ud5/3x1JIJD6f1M++y0CASxCQ/s8Wu90qyP+yR84i0otDA0OTHjB2Z5p5yfzAm8oJT
         87PXBnAGv9iTwUukiueegtzd7dqrw/cxpzt/+odq/gnYZX+/VYDoQ4m6XSbHK9MJjY/J
         BrNWRmgQn6nGOglFUX4fA5C5yKjma8+ETR+eUL+slmxq7ebkXgHHvWQ1wqhkYZHBer+i
         YKtpBTd5kCZUg24SmgxkL15HuAEIQYcXZO4ybHQwodptl5eNT9nQSIBedAlP//7it+Ft
         CbitrBeFosX7SdfFWLdxoeMjZGRZ4eRQKuGi7ZWiDxeHD28gskszv41KNKKvqDaNBGAP
         9v1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=WcYsy3kXoDCePvIhmLlwLtZLzQMPTt5v0u+Cf7jdRZ0=;
        b=XQu0oRuPgkaLQu1b4Wcd3Gf3xOcW6Qunlq+GaJaV9KY9L86jAgZlR5ohFtMT9XTHGY
         9PP5hbqQgkm7VmrKtpsEIEfBGAZnAi01rxB1PGupGbX/bibghg4ACVzXFEVAH5FHedAv
         YHbRLFdKj/PMIer3PZg735OwvSroTUN99JJduvCzDbsivsnJMKIDpHT6QWOWqLP4wo4a
         XZFH/x4MaFExzCppeCo2Uymm/LLGERNA5q6DedpmdcMBidZxHUdJPRaieRX8p8EbElo4
         yNPg3Erb3W0TZPQc9Qvv0lRw4iFIsTg9gGRnmup94Hr8jB1+muWqSosFwzKdgKc9Ksif
         AkhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q3si371939lji.2.2021.03.31.13.36.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:36:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A0e7n4K3lt3cyUy4jZdcelwqjBepyeYIsi2QD?=
 =?us-ascii?q?101hICF9WsaTm9my2NES0hHpgDgcMUtQ+uyoEq+GXH/a6NpR6Y4eIb+tUGDdyQ?=
 =?us-ascii?q?mVBatl6pbvxCClJj3m+odmpMFdWoV3FdGYNzlHpOng5g3QKbsd6f2m1IztuuvE?=
 =?us-ascii?q?1XdqSmhRGthdxiN0EBySHEEzZCQuP/oEPaGR7MZGuDasEE5/Bq/QOlA+Q+PBq9?=
 =?us-ascii?q?fX/aiLXTc6BgUq4ATLrTSk5K+SKXal9yoeSD9GzPMe93HEmWXCiZmLgrWe8Fv8?=
 =?us-ascii?q?33WWx4lKkNHho+EzYfCku4wwEHHQrSqGIK5mQKaPuTgppvrH0idPrPDc5xE6P8?=
 =?us-ascii?q?py7HvNfma65Rv1sjOQtwoT1w=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.81,293,1610406000"; 
   d="scan'208";a="500983645"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2021 22:36:21 +0200
Date: Wed, 31 Mar 2021 22:36:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
cc: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org, 
    gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: arche-platform:
 Fix ending '(' warnings
In-Reply-To: <20210331202445.108678-1-martinsdecarvalhobeatriz@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2103312235040.3008@hadrien>
References: <20210331202445.108678-1-martinsdecarvalhobeatriz@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Mar 2021, Beatriz Martins de Carvalho wrote:

> Fix checkpatch check "CHECK: Lines should not end with a '('"
> in arche-platform.c:80 and arche-platform.c:184.

Please try to express what you have done and why, without using the word
Fix.  "Fix" doesn't explain what you have done.  It just says that you
have done something that you consider has made the code better.  But the
person receiving the message may have something else in mind.

julia

>
> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index eebf0deb39f5..e374dfc0c92f 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -77,9 +77,8 @@ static void arche_platform_set_state(struct arche_platform_drvdata *arche_pdata,
>  }
>
>  /* Requires arche_pdata->wake_lock is held by calling context */
> -static void arche_platform_set_wake_detect_state(
> -				struct arche_platform_drvdata *arche_pdata,
> -				enum svc_wakedetect_state state)
> +static void arche_platform_set_wake_detect_state(struct arche_platform_drvdata *arche_pdata,
> +						 enum svc_wakedetect_state state)
>  {
>  	arche_pdata->wake_detect_state = state;
>  }
> @@ -181,9 +180,8 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>  						WD_STATE_COLDBOOT_START) {
>  					arche_platform_set_wake_detect_state(arche_pdata,
>  									     WD_STATE_COLDBOOT_TRIG);
> -					spin_unlock_irqrestore(
> -						&arche_pdata->wake_lock,
> -						flags);
> +					spin_unlock_irqrestore(&arche_pdata->wake_lock,
> +							       flags);
>  					return IRQ_WAKE_THREAD;
>  				}
>  			}
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210331202445.108678-1-martinsdecarvalhobeatriz%40gmail.com.
>


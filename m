X-GM-THRID: 6664067951305424896
X-Received: by 2002:a05:6000:1ce:: with SMTP id t14mr667805wrx.29.1551607597702;
        Sun, 03 Mar 2019 02:06:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d49:: with SMTP id t70ls1058727wmt.12.canary-gmail;
 Sun, 03 Mar 2019 02:06:37 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaG0FDYjEhl6PysPcAC++iMidlzVpGYORx44XQakHvhSLVZcAVRA2Fsu6obVRzpRd/Vs/9M
X-Received: by 2002:a1c:4087:: with SMTP id n129mr865115wma.13.1551607596989;
        Sun, 03 Mar 2019 02:06:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551607596; cv=none;
        d=google.com; s=arc-20160816;
        b=DYOC8c8RLlODEQYmO6ConcHIRwIWVgBK+AhtnnUOP0+e4Fxag8upyzikjffkoUW5Zq
         LkORn5zFoG8oKYBeiBUTz5P30naGtNG2ycIbwnZD7qVC1szQRMN1OOuX2G6DmOu6CSLW
         9oh6Y1BueLXCdfvyXlK58N+Xwxu0QgfG0BK2HKhYax4T+eHnYRjgDF4FmmBTgg+NomOb
         IB8FRFq9K4+roLjAMwn/Y7xcI5L4Ihr8FKZogFENivmNEe5BovTcWCi2j216ILNqSAD2
         TjEjsPamNoBK+pwfoVYG7omZMeD/smRxnUknZLwg/Bqv5a6BuvWiNYdNVA3orZdChNPp
         JWUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=E1je7YiDS36WYMV0hHHfEEi7jB6/pkuBXiINyGEQUBk=;
        b=tR/oHL4i1WBWp1ZVjPIFq8AdcvIhq8khMrU6FPTiOHvONgGqra7ATulMOFFH+24MRD
         Jhla12+gAzO7u9+czfQhMaOIvaxCKinOCQQNNgIULHcNx3+4TDO+0qNRBiOs81mOx3OC
         H+AJdOjsVEpJf5sv3WS2ZR1w7+CqBRMHQr3jwY6BV0q0/y93o3JG+YXrRofCRaXL3qTN
         sYCLT230nnNqEg8t5+kJ1piWM/UACV5iv2G5309/728BZDruvfdM80kg6tDJYkyt+O8v
         ugXHZsxT76NE2PuKvNDC9VM3OpQNCOCPdb9TYZX5o9tmh+cKS1nnxeOPdNLcsTM3qcuk
         p+7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g10si148541wmk.1.2019.03.03.02.06.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:06:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,435,1544482800"; 
   d="scan'208";a="297912907"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 11:06:36 +0100
Date: Sun, 3 Mar 2019 11:06:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: pi433: Fix line over 80
 characters issue
In-Reply-To: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com>
Message-ID: <alpine.DEB.2.21.1903031106230.3207@hadrien>
References: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Mar 2019, Debleena Sen wrote:

> Break the line and match the indentation to remove the
> checkpatch.pl warning:
> WARNING: line over 80 characters
>
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/pi433/rf69.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
> index e19b9ce..0c189a7 100644
> --- a/drivers/staging/pi433/rf69.c
> +++ b/drivers/staging/pi433/rf69.c
> @@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
>  {
>  	switch (flag) {
>  	case mode_switch_completed:
> -		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
> +		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
> +			MASK_IRQFLAGS1_MODE_READY);
>  	case ready_to_receive:
>  		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
>  	case ready_to_send:
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551607296-33723-1-git-send-email-idebleenasen%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6332712433108385792
X-Received: by 10.28.27.207 with SMTP id b198mr135968wmb.12.1474449843854;
        Wed, 21 Sep 2016 02:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.149.67 with SMTP id x64ls319639lfd.44.gmail; Wed, 21 Sep
 2016 02:24:03 -0700 (PDT)
X-Received: by 10.46.0.196 with SMTP id e65mr1311556lji.25.1474449843399;
        Wed, 21 Sep 2016 02:24:03 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si2112298wmg.3.2016.09.21.02.24.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 02:24:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,373,1470693600"; 
   d="scan'208";a="237688875"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Sep 2016 11:24:03 +0200
Date: Wed, 21 Sep 2016 11:23:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: outreachy-kernel@googlegroups.com, johan@kernel.org, elder@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: greybus: arche-apb-ctrl:
 declare struct of_device_id as const
In-Reply-To: <1474449487-9524-2-git-send-email-eraretuya@gmail.com>
Message-ID: <alpine.DEB.2.10.1609211123440.3008@hadrien>
References: <1474449487-9524-1-git-send-email-eraretuya@gmail.com> <1474449487-9524-2-git-send-email-eraretuya@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 21 Sep 2016, Eva Rachel Retuya wrote:

> Change the declaration of the structure of_device_id arche_apb_ctrl_of_match
> into const as suggested by checkpatch.

The same for this one.

julia

>
> WARNING: struct of_device_id should be normally const
>
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/greybus/arche-apb-ctrl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/arche-apb-ctrl.c b/drivers/staging/greybus/arche-apb-ctrl.c
> index 59d9d42..70323aa 100644
> --- a/drivers/staging/greybus/arche-apb-ctrl.c
> +++ b/drivers/staging/greybus/arche-apb-ctrl.c
> @@ -495,7 +495,7 @@ static void arche_apb_ctrl_shutdown(struct platform_device *pdev)
>  static SIMPLE_DEV_PM_OPS(arche_apb_ctrl_pm_ops, arche_apb_ctrl_suspend,
>  			 arche_apb_ctrl_resume);
>
> -static struct of_device_id arche_apb_ctrl_of_match[] = {
> +static const struct of_device_id arche_apb_ctrl_of_match[] = {
>  	{ .compatible = "usbffff,2", },
>  	{ },
>  };
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474449487-9524-2-git-send-email-eraretuya%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


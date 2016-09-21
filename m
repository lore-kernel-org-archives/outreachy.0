X-GM-THRID: 6332712433108385792
X-Received: by 10.194.172.9 with SMTP id ay9mr3643250wjc.2.1474449815532;
        Wed, 21 Sep 2016 02:23:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.69 with SMTP id 66ls664953ljj.3.gmail; Wed, 21 Sep 2016
 02:23:34 -0700 (PDT)
X-Received: by 10.46.1.225 with SMTP id f94mr3619207lji.8.1474449814907;
        Wed, 21 Sep 2016 02:23:34 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si2641673wmr.2.2016.09.21.02.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 02:23:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,373,1470693600"; 
   d="scan'208";a="194149458"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Sep 2016 11:23:34 +0200
Date: Wed, 21 Sep 2016 11:23:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: outreachy-kernel@googlegroups.com, johan@kernel.org, elder@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: greybus: arche-platform:
 declare struct of_device_id as const
In-Reply-To: <1474449487-9524-3-git-send-email-eraretuya@gmail.com>
Message-ID: <alpine.DEB.2.10.1609211121280.3008@hadrien>
References: <1474449487-9524-1-git-send-email-eraretuya@gmail.com> <1474449487-9524-3-git-send-email-eraretuya@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 21 Sep 2016, Eva Rachel Retuya wrote:

> Constify of_device_id structure declarations as suggested by checkpatch.

It would be good to describe why the change is correct in this particular
case.  How is the array used in this code?

julia

>
> WARNING: struct of_device_id should be normally const
>
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index d6b3609..e36ee98 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -776,12 +776,12 @@ static SIMPLE_DEV_PM_OPS(arche_platform_pm_ops,
>  			arche_platform_suspend,
>  			arche_platform_resume);
>
> -static struct of_device_id arche_platform_of_match[] = {
> +static const struct of_device_id arche_platform_of_match[] = {
>  	{ .compatible = "google,arche-platform", }, /* Use PID/VID of SVC device */
>  	{ },
>  };
>
> -static struct of_device_id arche_combined_id[] = {
> +static const struct of_device_id arche_combined_id[] = {
>  	{ .compatible = "google,arche-platform", }, /* Use PID/VID of SVC device */
>  	{ .compatible = "usbffff,2", },
>  	{ },
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474449487-9524-3-git-send-email-eraretuya%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


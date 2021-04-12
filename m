X-GM-THRID: 6950274232690409472
X-Received: by 2002:a5d:4bcb:: with SMTP id l11mr32864905wrt.390.1618237222736;
        Mon, 12 Apr 2021 07:20:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:c205:: with SMTP id s5ls1976706wmf.3.canary-gmail; Mon,
 12 Apr 2021 07:20:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJynfBmzNf8Toe4q7w5WCHU7lOhkdQ5lvMipC+71khHhbgQGNBuDjOFElAU5aCcNg2qCK/br
X-Received: by 2002:a05:600c:410c:: with SMTP id j12mr1953372wmi.112.1618237221178;
        Mon, 12 Apr 2021 07:20:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618237221; cv=none;
        d=google.com; s=arc-20160816;
        b=VcjzfxdtYXRVNfabzhbp7QgrR/SZqXUfCs2EBP8mBUtRWyhwIoxM87OwrflOWrDcBI
         pxscAc+TrO9wCbLvtHvNKo4ag/iQWWDlXMTxUUQM7suKOj9Gv87HKgf7NN1hfKj5VCX7
         PPygMPQmQK78e3KphG4qYvg9u1jEp/Da573uPJIAi+4HDYPbglqfEhLt13YnlU2MKDjZ
         rr0kb1qpW1btx1OpMOYLg358el7eUyI1u5GQt0g1F73K0xH4TdivgAO4QVGa4X2K9dlo
         CCvZ8vJ5/Xq+2rN3y5D9CBwPUVIkQ6ltJpaPAT8Y4j96bKIVXLAE4G5ci+ylmIcma2DL
         hPag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=+AZ1TGgfaf1KoLXYI0HvGDkJ6xQIfrNYNBJFQJO/CgQ=;
        b=ipnEjKwS1QBFTxm+kUB2u2BOwY4gcNGHeanHHa3ZQMa6pV79WDg6Iy/u6UCeH2cdS1
         Y+nNtB8RXhY1wiEyr4/uwDDqIpR4VL4Keb+c8RIYR7UIpT3lq5L7gWRFtMa4qdn2BlUl
         9+zxVv6GKwiYf2i4MXef8gDKcNKqNJnX4iJGgjh4ozQ5TbK0Dm5DWQP6Tc4kN6Sh590j
         QSRAUJfqT44+TBovGL2x1CJq8SwDbWRoMQrvnLPVEzWbkEB85Ct4h1dBOFy/9jmlKNjZ
         JakHZ6qtYVsH2PiEcHdjhTq85abhbOhRTAw+T7Da5d0NhKXwpiO0mfOxeoV2nYbPs7ys
         bCwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i16si507670wmq.2.2021.04.12.07.20.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 07:20:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ar+bIfqNf7CK/pMBcTlajsMiAIKoaSvp033AA?=
 =?us-ascii?q?3SlKJCB9WMqeisyogbA/3Rj7lD4eVBgb6Le9EYOHRm7R8oMw3JkJMd6ZLWvbkU?=
 =?us-ascii?q?ahMY0K1+rf6hL6HSmWzIVg/IdmN5NzEdjhSWV95PyU3CCdM/INhOaK67qpg+C2?=
 =?us-ascii?q?9QYPcShPZ7t75wl0Tia3e3cXeCB8CZA0FIWR66N8zlKdUE8aYcihCn4OU/Krnb?=
 =?us-ascii?q?H2vaj7ah0LDQNP0mezpA6o87LzHly52RoTQlp0sNMf2FXC+jaS2oyT99WyyhrR?=
 =?us-ascii?q?zAbonvFrpOc=3D?=
X-IronPort-AV: E=Sophos;i="5.82,216,1613430000"; 
   d="scan'208";a="378429570"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 16:20:09 +0200
Date: Mon, 12 Apr 2021 16:20:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: PEGGY TAWAH <tawahpeggy98@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Vaibhav Hiremath <hvaibhav.linux@gmail.com>, 
    Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: greybus: Remove a space
 because line is too long
In-Reply-To: <20210412141329.GA31738@peggy-Lenovo-V130-15IKB>
Message-ID: <alpine.DEB.2.22.394.2104121618260.11044@hadrien>
References: <20210412141329.GA31738@peggy-Lenovo-V130-15IKB>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 12 Apr 2021, PEGGY TAWAH wrote:

> checkpatch complained of line 182 too long in greybus driver,so i removed some spaces. CHECK: line length of 101 exceeds 100 colums

It would be good for the lines of the log message to stay within around 70
characters.  The message will be slightly indented by git.

>
> Signed-off-by:  PEGGY TAWAH <tawahpeggy98@gmail.com>

Only one space after the Signed-off-by:

julia

> ---
>  drivers/staging/greybus/arche-platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index e374dfc0c92f..1bfec5fae849 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -179,7 +179,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>                                 if (arche_pdata->wake_detect_state !=
>                                                 WD_STATE_COLDBOOT_START) {
>                                         arche_platform_set_wake_detect_state(arche_pdata,
> -                                                                            WD_STATE_COLDBOOT_TRIG);
> +                                                                 WD_STATE_COLDBOOT_TRIG);
>                                         spin_unlock_irqrestore(&arche_pdata->wake_lock,
>                                                                flags);
>                                         return IRQ_WAKE_THREAD;
> --
> 2.17.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210412141329.GA31738%40peggy-Lenovo-V130-15IKB.
>


X-GM-THRID: 6396341070428372992
X-Received: by 10.46.80.1 with SMTP id e1mr493705ljb.10.1489585030554;
        Wed, 15 Mar 2017 06:37:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.26 with SMTP id y26ls219022lja.2.gmail; Wed, 15 Mar 2017
 06:37:09 -0700 (PDT)
X-Received: by 10.46.22.86 with SMTP id 22mr490584ljw.9.1489585029461;
        Wed, 15 Mar 2017 06:37:09 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si47968wmh.1.2017.03.15.06.37.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 06:37:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,168,1486422000"; 
   d="scan'208";a="216840690"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2017 14:37:08 +0100
Date: Wed, 15 Mar 2017 14:37:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: vc04_services: Use
 macro DIV_ROUND_UP
In-Reply-To: <1489583788-16458-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703151435241.3566@hadrien>
References: <1489583788-16458-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 15 Mar 2017, Gargi Sharma wrote:

> The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
> It clarifies the divisor calculations.
> Coccinelle script:

As far as I can see, the patch is hugely out of date - the relevant code
is now 500 lines later in the file, and the change has already been made
on February 22 by Simran.

julia

>
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> |
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 03e1a13..eddff5f 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -1569,7 +1569,7 @@ dump_phys_mem(void *virt_addr, u32 num_bytes)
>  	offset = (int)(long)virt_addr & (PAGE_SIZE - 1);
>  	end_offset = (int)(long)end_virt_addr & (PAGE_SIZE - 1);
>
> -	num_pages = (offset + num_bytes + PAGE_SIZE - 1) / PAGE_SIZE;
> +	num_pages = DIV_ROUND_UP(offset + num_bytes, PAGE_SIZE);
>
>  	pages = kmalloc(sizeof(struct page *) * num_pages, GFP_KERNEL);
>  	if (pages == NULL) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489583788-16458-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


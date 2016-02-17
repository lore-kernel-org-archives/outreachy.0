X-GM-THRID: 6251601192398356480
X-Received: by 10.112.181.33 with SMTP id dt1mr257534lbc.22.1455716276242;
        Wed, 17 Feb 2016 05:37:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.232.20 with SMTP id f20ls1007427wmh.5.gmail; Wed, 17 Feb
 2016 05:37:55 -0800 (PST)
X-Received: by 10.28.63.19 with SMTP id m19mr2720633wma.0.1455716275710;
        Wed, 17 Feb 2016 05:37:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si724771wmw.3.2016.02.17.05.37.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 05:37:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,460,1449529200"; 
   d="scan'208";a="165044213"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 14:37:54 +0100
Date: Wed, 17 Feb 2016 08:37:51 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Replace kmalloc
 and memcpy with kmemdup
In-Reply-To: <20160215192524.GA30333@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602170837170.2685@hadrien>
References: <20160215192524.GA30333@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 16 Feb 2016, Amitoj Kaur Chawla wrote:

> Replace kmalloc and memcpy with kmemdup. Found using Coccinelle.
>
> The semantic patch used to make this change can be found here:
> scripts/coccinelle/api/memdup.cocci

No need to change, but in this situation you can also put:

Generated-by: scripts/coccinelle/api/memdup.cocci

> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/efivar.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rdma/hfi1/efivar.c b/drivers/staging/rdma/hfi1/efivar.c
> index e569f9f..47dfe25 100644
> --- a/drivers/staging/rdma/hfi1/efivar.c
> +++ b/drivers/staging/rdma/hfi1/efivar.c
> @@ -127,13 +127,12 @@ static int read_efi_var(const char *name, unsigned long *size,
>  	 * temporary buffer.  Now allocate a correctly sized
>  	 * buffer.
>  	 */
> -	data = kmalloc(temp_size, GFP_KERNEL);
> +	data = kmemdup(temp_buffer, temp_size, GFP_KERNEL);
>  	if (!data) {
>  		ret = -ENOMEM;
>  		goto fail;
>  	}
>
> -	memcpy(data, temp_buffer, temp_size);
>  	*size = temp_size;
>  	*return_data = data;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160215192524.GA30333%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>


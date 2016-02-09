X-GM-THRID: 6249299693524746240
X-Received: by 10.194.172.40 with SMTP id az8mr4170953wjc.3.1455033941762;
        Tue, 09 Feb 2016 08:05:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.196 with SMTP id q187ls345375lfq.30.gmail; Tue, 09 Feb
 2016 08:05:41 -0800 (PST)
X-Received: by 10.112.204.97 with SMTP id kx1mr277039lbc.0.1455033941225;
        Tue, 09 Feb 2016 08:05:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si417693wme.2.2016.02.09.08.05.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 08:05:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,421,1449529200"; 
   d="scan'208";a="202318865"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 17:05:22 +0100
Date: Tue, 9 Feb 2016 17:05:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rdma: Use kcalloc instead
 of kzalloc
In-Reply-To: <20160209210029.GA8305@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.10.1602091704330.2578@hadrien>
References: <20160209210029.GA8305@janani-Inspiron-3521>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 9 Feb 2016, Janani Ravichandran wrote:

> Use kcalloc rather than kzalloc when multiplied with size to prevent
> integer overflows. This change also makes code nicer to read.
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
> Changes since v2:
>  * Moved GFP_KERNEL to the previous line as it fits there.
>
>  drivers/staging/rdma/hfi1/efivar.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rdma/hfi1/efivar.c b/drivers/staging/rdma/hfi1/efivar.c
> index b8711f3..e569f9f 100644
> --- a/drivers/staging/rdma/hfi1/efivar.c
> +++ b/drivers/staging/rdma/hfi1/efivar.c
> @@ -83,8 +83,7 @@ static int read_efi_var(const char *name, unsigned long *size,
>  	if (!efi_enabled(EFI_RUNTIME_SERVICES))
>  		return -EOPNOTSUPP;
>
> -	uni_name = kcalloc(strlen(name) + 1, sizeof(efi_char16_t),
> -			   GFP_KERNEL);
> +	uni_name = kcalloc(strlen(name) + 1, sizeof(efi_char16_t), GFP_KERNEL);

This is a change since your previous patch.  It should be the change since
Greg's tree.  Greg isn't going to apply the different version of your
patch one by one, but rather only the one with the largest v number.

julia

>  	temp_buffer = kzalloc(EFI_DATA_SIZE, GFP_KERNEL);
>
>  	if (!uni_name || !temp_buffer) {
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160209210029.GA8305%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
>


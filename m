X-GM-THRID: 6249299693524746240
X-Received: by 10.13.204.85 with SMTP id o82mr34103486ywd.51.1455035008082;
        Tue, 09 Feb 2016 08:23:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.44.55 with SMTP id f52ls3869195qga.74.gmail; Tue, 09 Feb
 2016 08:23:27 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr2905086ywd.48.1455035007494;
        Tue, 09 Feb 2016 08:23:27 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u66si5356833pfa.2.2016.02.09.08.23.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 08:23:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3AC37FCF;
	Tue,  9 Feb 2016 16:23:27 +0000 (UTC)
Date: Tue, 9 Feb 2016 08:23:26 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rdma: Use kcalloc instead
 of kzalloc
Message-ID: <20160209162326.GC28133@kroah.com>
References: <20160209210029.GA8305@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160209210029.GA8305@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 09, 2016 at 04:00:29PM -0500, Janani Ravichandran wrote:
> Use kcalloc rather than kzalloc when multiplied with size to prevent
> integer overflows. This change also makes code nicer to read.

But that's not what this patch does:

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

You aren't calling kzalloc :(

Did you make this patch on top of something else accidentally?

thanks,

greg k-h


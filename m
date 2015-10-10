X-GM-THRID: 6203759305105080320
X-Received: by 10.112.198.33 with SMTP id iz1mr3336408lbc.8.1444458214919;
        Fri, 09 Oct 2015 23:23:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.36 with SMTP id f4ls495408wiy.22.canary; Fri, 09 Oct
 2015 23:23:34 -0700 (PDT)
X-Received: by 10.180.189.49 with SMTP id gf17mr589739wic.6.1444458214539;
        Fri, 09 Oct 2015 23:23:34 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bh7si101406wib.1.2015.10.09.23.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 23:23:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,661,1437429600"; 
   d="scan'208";a="182056487"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2015 08:23:34 +0200
Date: Sat, 10 Oct 2015 08:23:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Replace GFP_ATOMIC
 with GFP_KERNEL
In-Reply-To: <20151009222344.GA29876@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1510100822400.2062@localhost6.localdomain6>
References: <20151009222344.GA29876@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 10 Oct 2015, Amitoj Kaur Chawla wrote:

> Replace GFP_ATOMIC with GFP_KERNEL since GFP_ATOMIC is called in
> atomic context and used where functions are not allowed to sleep
> whereas this function is calling msleep(). 

Sorry to be picky, but GFP_ATOMIC is just a number.  It is not a function 
that is called.  Something like "since GFP_ATOMIC is only needed when 
functions are not allowed to sleep".

julia

> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Fixed commit message
> 
>  drivers/staging/rtl8712/hal_init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> index 2031291..39ba658 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8712/hal_init.c
> @@ -177,7 +177,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
>  		maxlen = (fwhdr.img_IMEM_size > fwhdr.img_SRAM_size) ?
>  			  fwhdr.img_IMEM_size : fwhdr.img_SRAM_size;
>  		maxlen += txdscp_sz;
> -		ptmpchar = kmalloc(maxlen + FWBUFF_ALIGN_SZ, GFP_ATOMIC);
> +		ptmpchar = kmalloc(maxlen + FWBUFF_ALIGN_SZ, GFP_KERNEL);
>  		if (!ptmpchar)
>  			return ret;
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151009222344.GA29876%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 


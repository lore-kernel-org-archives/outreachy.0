X-GM-THRID: 6671347269722177536
X-Received: by 2002:ac2:51aa:: with SMTP id f10mr7051380lfk.82.1553328153975;
        Sat, 23 Mar 2019 01:02:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:41c5:: with SMTP id d5ls1119938lfi.1.gmail; Sat, 23 Mar
 2019 01:02:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx7EjWKctfNIWyJuFGfd5ZrpqZNNYPCHOEm3vIDSCrp+2SHd7A2/X1s4Q7MvQpG8N76Nvp1
X-Received: by 2002:ac2:598b:: with SMTP id w11mr7476307lfn.139.1553328153289;
        Sat, 23 Mar 2019 01:02:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553328153; cv=none;
        d=google.com; s=arc-20160816;
        b=yKkT1QvqGQWooGwf4QIPTMFw+F4ZvFPEqQ1IQUg2wetaoyNoD+w8tRAMAxC0mtQsEX
         Abbv8SQ0pYDh+/o+6vRcFtAcwBxKSVVz758/RRoom/gDrZfRUSCc1ddCPQHKE5r0qe0/
         mjNm4NDGZOsGbEQZat9joGVKipa7PfX9bXwKhPxGtoP38nr2+X4j2jf8utxkTHXO4Cud
         mNImd5AYLBfXg9kwX66m93V5QSh+rYfLx96/gAnC2elajX92e9m/EjrEx78W0gJjycJk
         F1J4c586ylNXnwzQboeBP0Phwn1DJqvtECOPXfdk8ohiAMuhRb6oVrxx4nws30KixaFh
         3LNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=59UkQOHyX3/M0fOvpdgN/pblAHowLySxdMzvamgd5gk=;
        b=On/cmrI1N95v4hB5jKed/m8H+XSxdZ7tK7EDn08xyX1kRXfEXFjBDjqhk3bLK0kiDJ
         v7soGhXG9u0F+X3U3Azd0t5rvB2X1914HcxRztlSNzBU4qWALrHpbukO5LuA6DPTUV7h
         jaz50d63awW1iKUkDSRWfkW2unEj2YrEP4zHzoMFeO92lmHewXQ7L2g/X55TXpyeC0Q+
         omt9W+gxKOnej0ZWBJEtUcdSpzv/Uuy9PPVsa6VfXEysiMhbZ+yzcXDNgy8+GubnMtc4
         0c/YO74EJcv/OHdebQTbtRKW/sOwF2F13UxsKAdkE7TXRhWblBMmEbBLCPdogivdSKtp
         24qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z15si500261lfe.5.2019.03.23.01.02.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 01:02:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375395017"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 09:02:32 +0100
Date: Sat, 23 Mar 2019 09:02:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: davinci_vpfe: Fix
 preferred form of passing a size
In-Reply-To: <20190322223431.8609-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903230901590.2537@hadrien>
References: <20190322223431.8609-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, Madhumitha Prabakaran wrote:

> Fix perferred form of passing a size of a struct to improve readability
> and eradicate an opportunity for a bug when the pointer variable type is
> changed but the corresponding sizeof that is passed to a memory
> allocator is not.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 3d910b85905c..dc7dde83727e 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -1264,7 +1264,7 @@ static int ipipe_s_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
>  		module_if = &ipipe_modules[i];
>  		from = *(void **)((void *)cfg + module_if->config_offset);
>
> -		params = kmalloc(sizeof(struct ipipe_module_params),
> +		params = kmalloc(sizeof(*params),
>  				 GFP_KERNEL);

Since the line is shorter, you don't need two lines for the kmalloc call
anymore.  Same in the next case.

julia

>  		to = (void *)params + module_if->param_offset;
>  		size = module_if->param_size;
> @@ -1306,7 +1306,7 @@ static int ipipe_g_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
>  		module_if = &ipipe_modules[i];
>  		to = *(void **)((void *)cfg + module_if->config_offset);
>
> -		params = kmalloc(sizeof(struct ipipe_module_params),
> +		params = kmalloc(sizeof(*params),
>  				 GFP_KERNEL);
>  		from = (void *)params + module_if->param_offset;
>  		size = module_if->param_size;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322223431.8609-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


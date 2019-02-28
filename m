X-GM-THRID: 6663088716189270016
X-Received: by 2002:a2e:994b:: with SMTP id r11mr46627ljj.15.1551384740009;
        Thu, 28 Feb 2019 12:12:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2c7:: with SMTP id y68ls815216lje.10.gmail; Thu, 28 Feb
 2019 12:12:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqzr6O89QZM8dLIPYUf5HyPb5Is9lMkHkI8Y2Ahc/jHt4PKLqxQH5k7yi1HQPwVVH6VjB/X3
X-Received: by 2002:a2e:909a:: with SMTP id l26mr46472ljg.1.1551384739041;
        Thu, 28 Feb 2019 12:12:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551384739; cv=none;
        d=google.com; s=arc-20160816;
        b=L5rEMQnga8Hlhjzk6k7Th43DMW6Tb5Q6O1DjyssYu4oyFQrqURza7kr+zUX7MaG+WP
         IqnXvu9hYuU8+hnkAzxatntbfgoD6F/fDkfKtm4LUiXlGD+lrwDxpfpW/+W/6K5EKlLE
         raAHN7vj9Eo85oMl8jVZE5ehjpcM8A2yOkW3f5qcYJ9iA5FFocujaIYdkqqxUo5M4ltx
         VlLDD897cjITXMnn/6RiquHrlYNaCughOhx21QoSHwblVBLG+llR6K2gsen+2NGTk0u3
         CulI5X7WQucITiQDKqRZLglqMKH5I60ApeN78WsBNgNDL+yuJSEQ5qtkDQmd9aaS8c8/
         anKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JZ/TnabX4mOafmBxTvhqDFt/q64FV5w3shZ7dY7e4zw=;
        b=qs6t2AXcXXSd3E1hKVKqmB8APQoh1nQpckOJ3AVLaaz4FSLQuhEKhZ6WwKHdrYzJih
         3RZaRHEVjvix9q6R/G8iOkpoDfn2lSXM96/EJk9PuYYGuiSZ+NPoB3zSAkgUswMktuc3
         V3g5qD2MFZz/+b3stQcRztw3oYG5XYT6NwGKSxAZvyboVDzdM6LGDqBh/1Z6+ykZVdrY
         GvJP/4qtrgnvBwgn5cpvVsVB7KlEkW/DZ6ZWNntHSzOBFPkqcaafmmkfNCVeOOyU5Mo9
         +jH5oISs5X3mrwi6vQD6qMX0U2xdOCx/7TjegAKE3jzWE5z9+f/JYeWXvQPKhGU0MMOl
         gRog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x12si491226ljb.2.2019.02.28.12.12.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 12:12:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,424,1544482800"; 
   d="scan'208";a="297715109"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2019 21:12:18 +0100
Date: Thu, 28 Feb 2019 21:12:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elisa Tsai <etsai042@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fpgaboot: Delete newline at
 end of file
In-Reply-To: <20190228162703.14828-1-etsai042@gmail.com>
Message-ID: <alpine.DEB.2.21.1902282110390.3134@hadrien>
References: <20190228162703.14828-1-etsai042@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Mar 2019, Elisa Tsai wrote:

> From: E-Tsai <etsai042@gmail.com>
>
> This patch fixes the checkpatch.pl warning:
> WARNING: please write a paragraph that describes the config symbol fully
>
> Signed-off-by: E-Tsai <etsai042@gmail.com>

If your real name is Elisa Tsai, you should put that.

> ---
>  drivers/staging/gs_fpgaboot/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/gs_fpgaboot/Kconfig b/drivers/staging/gs_fpgaboot/Kconfig
> index 550645291fab..f1179eef2d78 100644
> --- a/drivers/staging/gs_fpgaboot/Kconfig
> +++ b/drivers/staging/gs_fpgaboot/Kconfig
> @@ -5,4 +5,4 @@ config GS_FPGABOOT
>  	tristate "Xilinx FPGA firmware download module"
>  	default n
>  	help
> -	  Xilinx FPGA firmware download module
> +	  Xilinx FPGA firmware download module

I don't see the change here.

This is probably not the best first patch to send, because without
expertise in the device, you won't know what paragraph to write.

julia

> \ No newline at end of file
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190228162703.14828-1-etsai042%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


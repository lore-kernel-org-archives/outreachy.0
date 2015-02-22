X-GM-THRID: 2371778248704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,778d1abd8ead7987
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr662666lbb.6.1424602727602;
        Sun, 22 Feb 2015 02:58:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.71 with SMTP id i7ls411769lai.44.gmail; Sun, 22 Feb 2015
 02:58:47 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr669719lah.8.1424602727131;
        Sun, 22 Feb 2015 02:58:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si458718wib.3.2015.02.22.02.58.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 02:58:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,624,1418079600"; 
   d="scan'208";a="122864070"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 11:58:46 +0100
Date: Sun, 22 Feb 2015 11:58:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Remove braces from single statement
 block
In-Reply-To: <20150222104213.GA1215@gmail.com>
Message-ID: <alpine.DEB.2.10.1502221158050.2612@hadrien>
References: <20150222104213.GA1215@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Vatika Harlalka wrote:

> This patch is to remove braces from single statement if condition
> to follow kernel coding convention.

OK toleave this one as is, but you don't need the "This patch is to" part.
It is a little bit obvious from the context.

julia

> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/fw.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/fw.c b/drivers/staging/rtl8188eu/hal/fw.c
> index 3b28754..a71c542 100644
> --- a/drivers/staging/rtl8188eu/hal/fw.c
> +++ b/drivers/staging/rtl8188eu/hal/fw.c
> @@ -154,9 +154,8 @@ static int _rtl88e_fw_free_to_go(struct adapter *adapt)
>  			break;
>  	} while (counter++ < POLLING_READY_TIMEOUT_COUNT);
>
> -	if (counter >= POLLING_READY_TIMEOUT_COUNT) {
> +	if (counter >= POLLING_READY_TIMEOUT_COUNT)
>  		goto exit;
> -	}
>
>  	value32 = usb_read32(adapt, REG_MCUFWDL);
>  	value32 |= MCUFWDL_RDY;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150222104213.GA1215%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


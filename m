X-GM-THRID: 6254563668495695872
X-Received: by 10.112.156.33 with SMTP id wb1mr4379970lbb.7.1456254130503;
        Tue, 23 Feb 2016 11:02:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.142.213 with SMTP id q204ls476579lfd.15.gmail; Tue, 23 Feb
 2016 11:02:09 -0800 (PST)
X-Received: by 10.25.22.154 with SMTP id 26mr4340596lfw.3.1456254129985;
        Tue, 23 Feb 2016 11:02:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si1507980wmd.1.2016.02.23.11.02.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:02:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,490,1449529200"; 
   d="scan'208";a="204346536"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 20:02:09 +0100
Date: Tue, 23 Feb 2016 20:02:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gs_fpgaboot: Use kernel type
 's32' over 'int32_t'.
In-Reply-To: <20160223110132.GA3546@sandhya>
Message-ID: <alpine.DEB.2.02.1602232001500.2040@localhost6.localdomain6>
References: <20160223110132.GA3546@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 23 Feb 2016, Sandhya Bankar wrote:

> Reply-To: 

This seems to have a stray Reply-To.

julia

> 
> Use kernel type 's32' over 'int32_t'.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/gs_fpgaboot/gs_fpgaboot.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
> index f41f4cc..93a61ad 100644
> --- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
> +++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
> @@ -51,6 +51,6 @@ struct fpgaimage {
>  	char	part[MAX_STR];
>  	char	date[MAX_STR];
>  	char	time[MAX_STR];
> -	int32_t	lendata;
> +	s32	lendata;
>  	char	*fpgadata;
>  };
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160223110132.GA3546%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
> 


X-GM-THRID: 6202772083227754496
X-Received: by 10.194.83.169 with SMTP id r9mr1046390wjy.6.1444288288908;
        Thu, 08 Oct 2015 00:11:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.36 with SMTP id j36ls162820lfi.50.gmail; Thu, 08 Oct
 2015 00:11:28 -0700 (PDT)
X-Received: by 10.112.173.136 with SMTP id bk8mr1054301lbc.20.1444288288394;
        Thu, 08 Oct 2015 00:11:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bn1si270295wib.0.2015.10.08.00.11.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 00:11:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,653,1437429600"; 
   d="scan'208";a="181679652"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2015 09:11:27 +0200
Date: Thu, 8 Oct 2015 08:11:23 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtl8712: Remove NULL
 comparison
In-Reply-To: <e9962700480ca8590bb9386ab0217b449fc4b8db.1444194896.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.10.1510080810460.2559@hadrien>
References: <cover.1444194896.git.amitoj1606@gmail.com> <e9962700480ca8590bb9386ab0217b449fc4b8db.1444194896.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 7 Oct 2015, Amitoj Kaur Chawla wrote:

> Remove NULL comparison by using '!' operator. Problem found using
> checkpatch.pl
> CHECK: Comparison to NULL could be written "!padapter->halpriv.hal_bus_init"
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8712/hal_init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> index 957f033..081f361 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8712/hal_init.c
> @@ -382,7 +382,7 @@ uint rtl8712_hal_deinit(struct _adapter *padapter)
>  uint rtl871x_hal_init(struct _adapter *padapter)
>  {
>  	padapter->hw_init_completed = false;
> -	if (padapter->halpriv.hal_bus_init == NULL)
> +	if (!padapter->halpriv.hal_bus_init)
>  		return _FAIL;
>  	if (padapter->halpriv.hal_bus_init(padapter) != _SUCCESS)
>  		return _FAIL;

Nothing to do with the patch, but _FAIL and _SUCCESS don't look like
standard kernel return values.  Maybe it is possible to improve this.

julia

> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e9962700480ca8590bb9386ab0217b449fc4b8db.1444194896.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


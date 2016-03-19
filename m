X-GM-THRID: 6263795726367588352
X-Received: by 10.28.153.70 with SMTP id b67mr550989wme.2.1458406734583;
        Sat, 19 Mar 2016 09:58:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.89.20 with SMTP id n20ls205167lfb.82.gmail; Sat, 19 Mar
 2016 09:58:53 -0700 (PDT)
X-Received: by 10.25.28.67 with SMTP id c64mr514341lfc.8.1458406733715;
        Sat, 19 Mar 2016 09:58:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si145664wmd.1.2016.03.19.09.58.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 09:58:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,361,1454972400"; 
   d="scan'208";a="169669592"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Mar 2016 17:58:52 +0100
Date: Sat, 19 Mar 2016 17:58:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/4] Staging: rtl8188eu: Use !x
 instead of x == NULL.
In-Reply-To: <08dbf910fd604fdfd258b82d2ca8e53621f9c6f8.1458376695.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.02.1603191758280.2259@localhost6.localdomain6>
References: <cover.1458376695.git.bankarsandhya512@gmail.com> <08dbf910fd604fdfd258b82d2ca8e53621f9c6f8.1458376695.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 19 Mar 2016, Sandhya Bankar wrote:

> Use !x instead of x == NULL.

There is a != test here.

julia

> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v2:
> *Correcting the heading.
> 
>  drivers/staging/rtl8188eu/hal/hal_intf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/hal_intf.c b/drivers/staging/rtl8188eu/hal/hal_intf.c
> index 85c17ef..fb7bacb 100644
> --- a/drivers/staging/rtl8188eu/hal/hal_intf.c
> +++ b/drivers/staging/rtl8188eu/hal/hal_intf.c
> @@ -186,7 +186,7 @@ s32 rtw_hal_mgnt_xmit(struct adapter *adapt, struct xmit_frame *pmgntframe)
>  
>  s32 rtw_hal_init_xmit_priv(struct adapter *adapt)
>  {
> -	if (adapt->HalFunc.init_xmit_priv != NULL)
> +	if (adapt->HalFunc.init_xmit_priv)
>  		return adapt->HalFunc.init_xmit_priv(adapt);
>  	return _FAIL;
>  }
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/08dbf910fd604fdfd258b82d2ca8e53621f9c6f8.1458376695.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


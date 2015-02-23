X-GM-THRID: 2693844172800
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4fa05891918d17a8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.7 with SMTP id n7mr1089731wix.0.1424682179741;
        Mon, 23 Feb 2015 01:02:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.231 with SMTP id bb7ls512573lab.50.gmail; Mon, 23 Feb
 2015 01:02:58 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr1127829lbc.3.1424682178294;
        Mon, 23 Feb 2015 01:02:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si852268wib.1.2015.02.23.01.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:02:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="100969177"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 10:02:57 +0100
Date: Mon, 23 Feb 2015 10:02:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Reindented code
 to reduce line size
In-Reply-To: <20150223082932.GA30012@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231001470.2479@hadrien>
References: <20150223082932.GA30012@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Vatika Harlalka wrote:

> Reidented code to reduce line size and increase readability.

Remember to use the imperative.  So "Reindent" rather than "Reindented".

Also, I think that it would look nicer to line the arguments up, or at
least to put the continuation line to the right of the (.  But you should
check what is done elsewhere in the file.

julia

>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/bb_cfg.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
> index 262da88..2d6db42 100644
> --- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
> +++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
> @@ -508,7 +508,8 @@ static u32 array_phy_reg_pg_8188e[] = {
>
>  };
>
> -static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitmask, u32 data)
> +static void store_pwrindex_offset(struct adapter *Adapter,
> +			u32 regaddr, u32 bitmask, u32 data)
>  {
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(Adapter);
>  	 u8 pwrGrpCnt = hal_data->pwrGroupCnt;
> @@ -553,7 +554,8 @@ static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitm
>  	}
>  }
>
> -static void rtl_addr_delay(struct adapter *adapt, u32 addr, u32 bit_mask, u32 data)
> +static void rtl_addr_delay(struct adapter *adapt,
> +			u32 addr, u32 bit_mask, u32 data)
>  {
>  	if (addr == 0xfe) {
>  		msleep(50);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150223082932.GA30012%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


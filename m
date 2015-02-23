X-GM-THRID: 2698279649280
X-Received: by 10.194.161.194 with SMTP id xu2mr1130912wjb.1.1424682398844;
        Mon, 23 Feb 2015 01:06:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.9 with SMTP id l9ls503490wic.11.canary; Mon, 23 Feb
 2015 01:06:38 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr1131849wjc.2.1424682398486;
        Mon, 23 Feb 2015 01:06:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si852957wib.1.2015.02.23.01.06.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:06:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="100969845"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 10:06:38 +0100
Date: Mon, 23 Feb 2015 10:06:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unnecessary
 variable
In-Reply-To: <20150223085030.GA1602@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231006020.2479@hadrien>
References: <20150223085030.GA1602@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Vatika Harlalka wrote:

> Remove unneccessary variable and replace its uses with another
> variable which is previously defined.

The code is a bit strange.  You could consider making the same change in
the write function.

julia

> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 3f663fe..3950cb3 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -72,12 +72,10 @@ static u32 rf_serial_read(struct adapter *adapt,
>  	u32 ret = 0;
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
>  	struct bb_reg_def *phyreg = &hal_data->PHYRegDef[rfpath];
> -	u32 newoffset;
>  	u32 tmplong, tmplong2;
>  	u8 rfpi_enable = 0;
>
>  	offset &= 0xff;
> -	newoffset = offset;
>
>  	tmplong = phy_query_bb_reg(adapt, rFPGA0_XA_HSSIParameter2, bMaskDWord);
>  	if (rfpath == RF_PATH_A)
> @@ -87,7 +85,7 @@ static u32 rf_serial_read(struct adapter *adapt,
>  					    bMaskDWord);
>
>  	tmplong2 = (tmplong2 & (~bLSSIReadAddress)) |
> -		   (newoffset<<23) | bLSSIReadEdge;
> +		   (offset<<23) | bLSSIReadEdge;
>
>  	phy_set_bb_reg(adapt, rFPGA0_XA_HSSIParameter2, bMaskDWord,
>  		       tmplong&(~bLSSIReadEdge));
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150223085030.GA1602%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 2401796882432
X-Received: by 10.112.138.202 with SMTP id qs10mr691956lbb.24.1424609380658;
        Sun, 22 Feb 2015 04:49:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.199 with SMTP id dm7ls384446wib.49.gmail; Sun, 22 Feb
 2015 04:49:40 -0800 (PST)
X-Received: by 10.180.80.7 with SMTP id n7mr665914wix.0.1424609380358;
        Sun, 22 Feb 2015 04:49:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si478538wib.2.2015.02.22.04.49.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 04:49:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,625,1418079600"; 
   d="scan'208";a="122869521"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 13:49:39 +0100
Date: Sun, 22 Feb 2015 13:49:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Fix line over 80
 characters
In-Reply-To: <20150222123733.GA24239@gmail.com>
Message-ID: <alpine.DEB.2.10.1502221349160.2612@hadrien>
References: <20150222123733.GA24239@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Vatika Harlalka wrote:

> Added a variable to reduce line size and enhance code readability.

Nice idea :)

julia


>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/bb_cfg.c | 33 +++++++++++++++++----------------
>  1 file changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
> index 1e963bf..262da88 100644
> --- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
> +++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
> @@ -511,42 +511,43 @@ static u32 array_phy_reg_pg_8188e[] = {
>  static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitmask, u32 data)
>  {
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(Adapter);
> +	 u8 pwrGrpCnt = hal_data->pwrGroupCnt;
>
>  	if (regaddr == rTxAGC_A_Rate18_06)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][0] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][0] = data;
>  	if (regaddr == rTxAGC_A_Rate54_24)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][1] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][1] = data;
>  	if (regaddr == rTxAGC_A_CCK1_Mcs32)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][6] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][6] = data;
>  	if (regaddr == rTxAGC_B_CCK11_A_CCK2_11 && bitmask == 0xffffff00)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][7] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][7] = data;
>  	if (regaddr == rTxAGC_A_Mcs03_Mcs00)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][2] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][2] = data;
>  	if (regaddr == rTxAGC_A_Mcs07_Mcs04)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][3] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][3] = data;
>  	if (regaddr == rTxAGC_A_Mcs11_Mcs08)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][4] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][4] = data;
>  	if (regaddr == rTxAGC_A_Mcs15_Mcs12) {
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][5] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][5] = data;
>  		if (hal_data->rf_type == RF_1T1R)
>  			hal_data->pwrGroupCnt++;
>  	}
>  	if (regaddr == rTxAGC_B_Rate18_06)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][8] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][8] = data;
>  	if (regaddr == rTxAGC_B_Rate54_24)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][9] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][9] = data;
>  	if (regaddr == rTxAGC_B_CCK1_55_Mcs32)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][14] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][14] = data;
>  	if (regaddr == rTxAGC_B_CCK11_A_CCK2_11 && bitmask == 0x000000ff)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][15] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][15] = data;
>  	if (regaddr == rTxAGC_B_Mcs03_Mcs00)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][10] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][10] = data;
>  	if (regaddr == rTxAGC_B_Mcs07_Mcs04)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][11] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][11] = data;
>  	if (regaddr == rTxAGC_B_Mcs11_Mcs08)
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][12] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][12] = data;
>  	if (regaddr == rTxAGC_B_Mcs15_Mcs12) {
> -		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][13] = data;
> +		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][13] = data;
>  		if (hal_data->rf_type != RF_1T1R)
>  			hal_data->pwrGroupCnt++;
>  	}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150222123733.GA24239%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


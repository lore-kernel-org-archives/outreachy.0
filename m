X-GM-THRID: 2853156421632
X-Received: by 10.112.168.104 with SMTP id zv8mr1488825lbb.10.1424711541716;
        Mon, 23 Feb 2015 09:12:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.197 with SMTP id hm5ls601475wib.51.canary; Mon, 23 Feb
 2015 09:12:21 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr1501618wjc.2.1424711541344;
        Mon, 23 Feb 2015 09:12:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si727073wib.2.2015.02.23.09.12.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 09:12:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,631,1418079600"; 
   d="scan'208";a="101043935"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 18:12:20 +0100
Date: Mon, 23 Feb 2015 18:12:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Replace ternary
 operator with predefined macro
In-Reply-To: <20150223162709.GA16766@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231811520.2479@hadrien>
References: <20150223162709.GA16766@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 23 Feb 2015, Vatika Harlalka wrote:

> Replace use of ternary operator with abs() macro to increase
> code readability.

This is nice.  You could see if you can use Coccinelle to find other
occurrences.

julia


> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index e7ede44..115d611 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -554,9 +554,7 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
>  			thermal_val = (u8)(thermal_avg / thermal_avg_count);
>
>  		if (dm_odm->RFCalibrateInfo.bReloadtxpowerindex) {
> -			delta = thermal_val > hal_data->EEPROMThermalMeter ?
> -				(thermal_val - hal_data->EEPROMThermalMeter) :
> -				(hal_data->EEPROMThermalMeter - thermal_val);
> +			delta = abs(thermal_val - hal_data->EEPROMThermalMeter);
>  			dm_odm->RFCalibrateInfo.bReloadtxpowerindex = false;
>  			dm_odm->RFCalibrateInfo.bDoneTxpower = false;
>  		} else if (dm_odm->RFCalibrateInfo.bDoneTxpower) {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150223162709.GA16766%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


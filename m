X-GM-THRID: 2910553374720
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1998c04d600fec1d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.191.65 with SMTP id gw1mr13955867obc.40.1424722479385;
        Mon, 23 Feb 2015 12:14:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.136 with SMTP id 8ls1706006ios.51.gmail; Mon, 23 Feb
 2015 12:14:38 -0800 (PST)
X-Received: by 10.66.97.10 with SMTP id dw10mr6337780pab.48.1424722478539;
        Mon, 23 Feb 2015 12:14:38 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22b.google.com (mail-qc0-x22b.google.com. [2607:f8b0:400d:c01::22b])
        by gmr-mx.google.com with ESMTPS id e5si3616448qcg.1.2015.02.23.12.14.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:14:38 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22b as permitted sender) client-ip=2607:f8b0:400d:c01::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22b as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by qcyl6 with SMTP id l6so13095840qcy.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=vtyoihSdNiVVm30L/RVps/6RRsEMW62HngTm14BywjQ=;
        b=x6C+U3yo0RtXS8z1IIf16H9mEa5TnRZGrxtL5kXJJ/+jPUbriDCNvVHVY2p98hBCHc
         YxpqMsfrhrFPes8ir0POyrNm2LJZMnstI6KtD3mIlblOVU5BcHcjswx+I1vYyeWfPvef
         UQ5lQCKCNI888Xm8XGvLqiBVA2T8R+r6plszO/zjvAJ1I+Mr4aZXoxyZ8nYLMcAsP/tP
         ynxtTMOLIq9eCBnNJPIvOyjA+KIfJQe1CC3XHrwbeakOmXQ8/upWFFq1xxnfVEvo9EjT
         NkxVOQbrvfGHEGNKebYOmTqEXvAihOLS9aAqMVHWKGuioY41IJ+ZynaQju5p08KimEnB
         v6RQ==
X-Received: by 10.140.21.48 with SMTP id 45mr27409271qgk.87.1424722478407;
        Mon, 23 Feb 2015 12:14:38 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id h6sm28099681qgh.32.2015.02.23.12.14.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:14:37 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8A2C.9030105@gmail.com>
Date: Mon, 23 Feb 2015 15:14:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Refactored code
 to increase readility
References: <20150223181027.GA21128@gmail.com>
In-Reply-To: <20150223181027.GA21128@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 13:10, Vatika Harlalka wrote:
> Refactored the conditional code to make it more compact.
> Replaced the ternary operators with abs() macro to increase readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 32 ++++++++++++--------------------
>  1 file changed, 12 insertions(+), 20 deletions(-)

This is a very nice cleanup.

Jes

> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 3f663fe..f256004 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -570,27 +570,19 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
>  		if (thermal_avg_count)
>  			thermal_val = (u8)(thermal_avg / thermal_avg_count);
>  
> -		if (dm_odm->RFCalibrateInfo.bReloadtxpowerindex) {
> -			delta = thermal_val > hal_data->EEPROMThermalMeter ?
> -				(thermal_val - hal_data->EEPROMThermalMeter) :
> -				(hal_data->EEPROMThermalMeter - thermal_val);
> -			dm_odm->RFCalibrateInfo.bReloadtxpowerindex = false;
> -			dm_odm->RFCalibrateInfo.bDoneTxpower = false;
> -		} else if (dm_odm->RFCalibrateInfo.bDoneTxpower) {
> -			delta = (thermal_val > dm_odm->RFCalibrateInfo.ThermalValue) ?
> -				(thermal_val - dm_odm->RFCalibrateInfo.ThermalValue) :
> -				(dm_odm->RFCalibrateInfo.ThermalValue - thermal_val);
> -		} else {
> -			delta = thermal_val > hal_data->EEPROMThermalMeter ?
> -				(thermal_val - hal_data->EEPROMThermalMeter) :
> -				(hal_data->EEPROMThermalMeter - thermal_val);
> +		if (dm_odm->RFCalibrateInfo.bDoneTxpower &&
> +			!dm_odm->RFCalibrateInfo.bReloadtxpowerindex)
> +			delta = abs(thermal_val - dm_odm->RFCalibrateInfo.ThermalValue);
> +		else {
> +			delta = abs(thermal_val - hal_data->EEPROMThermalMeter);
> +			if (dm_odm->RFCalibrateInfo.bReloadtxpowerindex) {
> +				dm_odm->RFCalibrateInfo.bReloadtxpowerindex = false;
> +				dm_odm->RFCalibrateInfo.bDoneTxpower = false;
> +			}
>  		}
> -		delta_lck = (thermal_val > dm_odm->RFCalibrateInfo.ThermalValue_LCK) ?
> -			    (thermal_val - dm_odm->RFCalibrateInfo.ThermalValue_LCK) :
> -			    (dm_odm->RFCalibrateInfo.ThermalValue_LCK - thermal_val);
> -		delta_iqk = (thermal_val > dm_odm->RFCalibrateInfo.ThermalValue_IQK) ?
> -			    (thermal_val - dm_odm->RFCalibrateInfo.ThermalValue_IQK) :
> -			    (dm_odm->RFCalibrateInfo.ThermalValue_IQK - thermal_val);
> +
> +		delta_lck = abs(dm_odm->RFCalibrateInfo.ThermalValue_LCK - thermal_val);
> +		delta_iqk = abs(dm_odm->RFCalibrateInfo.ThermalValue_IQK - thermal_val);
>  
>  		/* Delta temperature is equal to or larger than 20 centigrade.*/
>  		if ((delta_lck >= 8)) {
> 



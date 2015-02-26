X-GM-THRID: 2853156421632
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cc0966737ed87256
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.163.196 with SMTP id d4mr3501427icy.28.1424984092073;
        Thu, 26 Feb 2015 12:54:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.131 with SMTP id l3ls342899qgl.5.gmail; Thu, 26 Feb
 2015 12:54:51 -0800 (PST)
X-Received: by 10.236.11.196 with SMTP id 44mr9712412yhx.31.1424984091783;
        Thu, 26 Feb 2015 12:54:51 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si270379pbc.0.2015.02.26.12.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:54:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7A543B3D;
	Thu, 26 Feb 2015 20:54:51 +0000 (UTC)
Date: Thu, 26 Feb 2015 12:54:51 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Replace ternary
 operator with predefined macro
Message-ID: <20150226205451.GA2571@kroah.com>
References: <20150223162709.GA16766@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150223162709.GA16766@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Feb 23, 2015 at 09:57:09PM +0530, Vatika Harlalka wrote:
> Replace use of ternary operator with abs() macro to increase
> code readability.
> 
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

With the other changes you have made in this file, this patch no longer
applies :(

Can you please refresh your tree against my staging-testing branch and
respin this patch and resend it?

thanks,

greg k-h


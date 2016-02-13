X-GM-THRID: 6250871374774009856
X-Received: by 10.182.109.233 with SMTP id hv9mr8830326obb.18.1455398576952;
        Sat, 13 Feb 2016 13:22:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.98 with SMTP id k89ls2372779qgk.69.gmail; Sat, 13 Feb
 2016 13:22:56 -0800 (PST)
X-Received: by 10.13.192.134 with SMTP id b128mr8642461ywd.43.1455398576039;
        Sat, 13 Feb 2016 13:22:56 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1980117pfb.1.2016.02.13.13.22.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 13:22:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AC1FE10C3;
	Sat, 13 Feb 2016 21:22:55 +0000 (UTC)
Date: Sat, 13 Feb 2016 13:22:55 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Remove unused
 macros
Message-ID: <20160213212255.GA5341@kroah.com>
References: <1455394376-2616-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455394376-2616-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 14, 2016 at 01:42:56AM +0530, Bhumika Goyal wrote:
> The macros PlatformAcquireSpinLock and PlatformReleaseSpinLock are not
> used anywhere so remove them. Used grep to find occurences.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
> index d46d1c7..33eabf4 100644
> --- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
> +++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
> @@ -80,8 +80,6 @@ if ((BTCoexDbgLevel == _bt_dbg_on_)) {\
>  #define PlatformProcessHCICommands(...)
>  #define PlatformTxBTQueuedPackets(...)
>  #define PlatformIndicateBTACLData(...)	(RT_STATUS_SUCCESS)
> -#define PlatformAcquireSpinLock(padapter, type)
> -#define PlatformReleaseSpinLock(padapter, type)

Can you also remove the commented out places where these macros were
being called?

thanks,

greg k-h


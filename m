X-GM-THRID: 3231867469824
X-Received: by 10.236.222.103 with SMTP id s97mr10209396yhp.19.1424992251035;
        Thu, 26 Feb 2015 15:10:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.109.200 with SMTP id hu8ls25016igb.22.canary; Thu, 26 Feb
 2015 15:10:50 -0800 (PST)
X-Received: by 10.42.157.134 with SMTP id d6mr9993516icx.27.1424992250853;
        Thu, 26 Feb 2015 15:10:50 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si292699pbc.1.2015.02.26.15.10.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:10:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 900BEB3F;
	Thu, 26 Feb 2015 23:10:50 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:10:50 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove unused Macro
Message-ID: <20150226231050.GA10153@kroah.com>
References: <20150224162637.GA9677@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150224162637.GA9677@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 24, 2015 at 08:26:37AM -0800, Katie Dunne wrote:
> Removes SetFrameType Macro because its not used elsewhere
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/rtl8712/wifi.h | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
> index 5ba7e71..356059b 100644
> --- a/drivers/staging/rtl8712/wifi.h
> +++ b/drivers/staging/rtl8712/wifi.h
> @@ -246,13 +246,6 @@ enum WIFI_REG_DOMAIN {
>  #define GetFrameType(pbuf)	(le16_to_cpu(*(unsigned short *)(pbuf)) & \
>  				(BIT(3) | BIT(2)))
>  
> -#define SetFrameType(pbuf, type)	\
> -	do {	\
> -		*(unsigned short *)(pbuf) &= cpu_to_le16(~(BIT(3) | \
> -		BIT(2))); \
> -		*(unsigned short *)(pbuf) |= cpu_to_le16(type); \
> -	} while (0)
> -
>  #define GetFrameSubType(pbuf)	(cpu_to_le16(*(unsigned short *)(pbuf)) & \
>  				(BIT(7) | BIT(6) | BIT(5) | BIT(4) | BIT(3) | \
>  				BIT(2)))

No longer applies to my tree, sorry :(


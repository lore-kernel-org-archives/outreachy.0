X-GM-THRID: 1818210861056
X-Received: by 10.182.18.102 with SMTP id v6mr10518821obd.11.1424986164867;
        Thu, 26 Feb 2015 13:29:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.50.133 with SMTP id c5ls2066310igo.44.canary; Thu, 26 Feb
 2015 13:29:24 -0800 (PST)
X-Received: by 10.42.107.208 with SMTP id e16mr10505688icp.10.1424986164664;
        Thu, 26 Feb 2015 13:29:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si267471pdb.1.2015.02.26.13.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:29:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 62FABAF6;
	Thu, 26 Feb 2015 21:29:24 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:29:24 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: rtl8192u: Remove space
 before ','
Message-ID: <20150226212924.GA15412@kroah.com>
References: <cover.1424527515.git.ksenija.stanojevic@gmail.com>
 <376efd2304214b6bbdd97ea0bf0b55bb7567ea33.1424527515.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <376efd2304214b6bbdd97ea0bf0b55bb7567ea33.1424527515.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 03:06:14PM +0100, Ksenija Stanojevic wrote:
> This patch removes space before ','.
> Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8190_rtl8256.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.h b/drivers/staging/rtl8192u/r8190_rtl8256.h
> index fa6dd37..ddddd70 100644
> --- a/drivers/staging/rtl8192u/r8190_rtl8256.h
> +++ b/drivers/staging/rtl8192u/r8190_rtl8256.h
> @@ -14,7 +14,7 @@
>  #define RTL8225H
>  
>  #define RTL819X_TOTAL_RF_PATH 2 //for 8192U
> -extern void PHY_SetRF8256Bandwidth(struct net_device *dev , HT_CHANNEL_WIDTH Bandwidth);
> +extern void PHY_SetRF8256Bandwidth(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth);
>  extern void PHY_RF8256_Config(struct net_device *dev);
>  extern void phy_RF8256_Config_ParaFile(struct net_device *dev);
>  extern void PHY_SetRF8256CCKTxPower(struct net_device *dev, u8	powerlevel);
> -- 
> 1.9.1

Patch does not apply :(


X-GM-THRID: 1826428551168
X-Received: by 10.70.55.233 with SMTP id v9mr9835059pdp.5.1424986172650;
        Thu, 26 Feb 2015 13:29:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.247 with SMTP id m110ls335285qge.81.gmail; Thu, 26 Feb
 2015 13:29:32 -0800 (PST)
X-Received: by 10.236.20.234 with SMTP id p70mr9852408yhp.46.1424986172387;
        Thu, 26 Feb 2015 13:29:32 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si279987pbc.0.2015.02.26.13.29.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:29:32 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1AF39AF6;
	Thu, 26 Feb 2015 21:29:32 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:29:31 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: rtl8192u: Split line
 over 80 characters
Message-ID: <20150226212931.GB15412@kroah.com>
References: <cover.1424527655.git.ksenija.stanojevic@gmail.com>
 <970675096b4d77e9230c7fb4614ff9ad1c5b01fe.1424527655.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <970675096b4d77e9230c7fb4614ff9ad1c5b01fe.1424527655.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 03:09:04PM +0100, Ksenija Stanojevic wrote:
> This patch splits line over 80 characters in order to fit kernel
> coding style rules. Issue found by checkpatch.pl
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8190_rtl8256.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.h b/drivers/staging/rtl8192u/r8190_rtl8256.h
> index 7a5a388..9023193 100644
> --- a/drivers/staging/rtl8192u/r8190_rtl8256.h
> +++ b/drivers/staging/rtl8192u/r8190_rtl8256.h
> @@ -14,7 +14,8 @@
>  #define RTL8225H
>  
>  #define RTL819X_TOTAL_RF_PATH 2 /* for 8192U */
> -extern void PHY_SetRF8256Bandwidth(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth);
> +extern void PHY_SetRF8256Bandwidth(struct net_device *dev,
> +		HT_CHANNEL_WIDTH Bandwidth);
>  extern void PHY_RF8256_Config(struct net_device *dev);
>  extern void phy_RF8256_Config_ParaFile(struct net_device *dev);
>  extern void PHY_SetRF8256CCKTxPower(struct net_device *dev, u8	powerlevel);
> -- 
> 1.9.1

Patch does not apply :(


X-GM-THRID: 1823794528256
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d1e136728869a0ba
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.102.100 with SMTP id fn4mr9895833pab.19.1424986129447;
        Thu, 26 Feb 2015 13:28:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.252.198 with SMTP id zu6ls136428obc.44.gmail; Thu, 26 Feb
 2015 13:28:49 -0800 (PST)
X-Received: by 10.182.29.102 with SMTP id j6mr9129861obh.46.1424986129216;
        Thu, 26 Feb 2015 13:28:49 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si267796pad.1.2015.02.26.13.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:28:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E7BCDAF6;
	Thu, 26 Feb 2015 21:28:48 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:28:48 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: rtl8192u: Convert
 comment from C99 to C89 style
Message-ID: <20150226212848.GA15361@kroah.com>
References: <cover.1424527587.git.ksenija.stanojevic@gmail.com>
 <0a8f9874305de440b504d0d66c9682eb2cc8b702.1424527587.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0a8f9874305de440b504d0d66c9682eb2cc8b702.1424527587.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 03:07:23PM +0100, Ksenija Stanojevic wrote:
> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8190_rtl8256.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.h b/drivers/staging/rtl8192u/r8190_rtl8256.h
> index ddddd70..7a5a388 100644
> --- a/drivers/staging/rtl8192u/r8190_rtl8256.h
> +++ b/drivers/staging/rtl8192u/r8190_rtl8256.h
> @@ -13,7 +13,7 @@
>  #ifndef RTL8225H
>  #define RTL8225H
>  
> -#define RTL819X_TOTAL_RF_PATH 2 //for 8192U
> +#define RTL819X_TOTAL_RF_PATH 2 /* for 8192U */
>  extern void PHY_SetRF8256Bandwidth(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth);
>  extern void PHY_RF8256_Config(struct net_device *dev);
>  extern void phy_RF8256_Config_ParaFile(struct net_device *dev);
> -- 
> 1.9.1

This patch doesn't apply :(


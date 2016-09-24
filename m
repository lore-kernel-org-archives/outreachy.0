X-GM-THRID: 6333851090177490944
X-Received: by 10.31.65.145 with SMTP id o139mr903119vka.5.1474719763326;
        Sat, 24 Sep 2016 05:22:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.19 with SMTP id x19ls6824725ioi.43.gmail; Sat, 24 Sep
 2016 05:22:42 -0700 (PDT)
X-Received: by 10.66.145.1 with SMTP id sq1mr2791735pab.72.1474719762603;
        Sat, 24 Sep 2016 05:22:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si3113674pfw.1.2016.09.24.05.22.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 05:22:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BCA54BBF;
	Sat, 24 Sep 2016 12:22:41 +0000 (UTC)
Date: Sat, 24 Sep 2016 14:22:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] staging: wilc1000: Remove 'else' after 'break'
Message-ID: <20160924122246.GA6511@kroah.com>
References: <20160924115810.GA9412@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160924115810.GA9412@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 24, 2016 at 05:28:16PM +0530, Namrata A Shettar wrote:
> Remove 'else' after 'break' to resolve checkpatch issue.
> The statements after the 'if' condition body are executed only if
> condition not true due to the 'break'.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  Changes in v2:
>  - Code indentation
> 
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 05e4501..042185d 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -695,11 +695,8 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
>  			   sme->ssid_len) == 0) {
>  			if (!sme->bssid)
>  				break;
> -			else
> -			        if (memcmp(last_scanned_shadow[i].bssid,
> -							sme->bssid,
> -						       	ETH_ALEN) == 0)
> -			                              break;
> +			if (memcmp(last_scanned_shadow[i].bssid,sme->bssid,ETH_ALEN) == 0)
> +			        break;
>  		}
>  	}
>  
> -- 
> 2.7.4

Always run your patches through checkpatch.pl so you don't get a grumpy
maintainer telling you to run your patches through checkpatch.pl...


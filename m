X-GM-THRID: 6333851090177490944
X-Received: by 10.200.50.48 with SMTP id x45mr2889553qta.77.1474715625954;
        Sat, 24 Sep 2016 04:13:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.228.13 with SMTP id o13ls1151980ith.4.canary; Sat, 24 Sep
 2016 04:13:44 -0700 (PDT)
X-Received: by 10.66.145.1 with SMTP id sq1mr2732786pab.72.1474715624680;
        Sat, 24 Sep 2016 04:13:44 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si3208006pab.1.2016.09.24.04.13.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 04:13:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0F278CCC;
	Sat, 24 Sep 2016 11:13:43 +0000 (UTC)
Date: Sat, 24 Sep 2016 13:13:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: wilc1000: Remove 'else' after 'break'
Message-ID: <20160924111349.GA3973@kroah.com>
References: <20160924105656.GA8001@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160924105656.GA8001@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 24, 2016 at 04:27:00PM +0530, Namrata A Shettar wrote:
> Remove 'else' after 'break' to resolve checkpatch issue.
> The statements after the 'if' condition body are executed only if
> condition not true due to the 'break'.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 2c2e8ac..1212f75 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -695,8 +695,7 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
>  			   sme->ssid_len) == 0) {
>  			if (!sme->bssid)
>  				break;
> -			else
> -				if (memcmp(last_scanned_shadow[i].bssid,
> +		    if (memcmp(last_scanned_shadow[i].bssid,
>  					   sme->bssid,
>  					   ETH_ALEN) == 0)
>  					break;

The rest of the indentation doesn't look correct anymore :(



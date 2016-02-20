X-GM-THRID: 6252990979298557952
X-Received: by 10.112.151.240 with SMTP id ut16mr2248096lbb.16.1455930471779;
        Fri, 19 Feb 2016 17:07:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.135.87 with SMTP id j84ls125230lfd.74.gmail; Fri, 19 Feb
 2016 17:07:51 -0800 (PST)
X-Received: by 10.112.200.68 with SMTP id jq4mr1345584lbc.3.1455930471074;
        Fri, 19 Feb 2016 17:07:51 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 141si585330wmy.2.2016.02.19.17.07.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 17:07:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B2D1FEEE;
	Sat, 20 Feb 2016 01:07:49 +0000 (UTC)
Date: Fri, 19 Feb 2016 17:07:49 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Remove unnecessary
 else after return
Message-ID: <20160220010749.GA7116@kroah.com>
References: <1455887905-7002-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455887905-7002-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 19, 2016 at 03:18:25PM +0200, Dilek Uzulmez wrote:
> This patch fixes checkpatch.pl warning in files of wilc1000
> WARNING: else is not generally useful after a break or return
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 544c12d..b0cefe1 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -939,9 +939,9 @@ s32 SendConfigPkt(u8 u8Mode, tstrWID *pstrWIDs,
>  	    gpstrWlanOps->wlan_cfg_get == NULL)	{
>  		PRINT_D(CORECONFIG_DBG, "Set and Get is still not initialized\n");
>  		return 1;
> -	} else {
> -		PRINT_D(CORECONFIG_DBG, "SET is initialized\n");
>  	}
> +		PRINT_D(CORECONFIG_DBG, "SET is initialized\n");
> +

Does that indentation look correct to you?  It doesn't to me...

thanks,

greg k-h


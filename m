X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.144.81 with SMTP id jp17mr10473863icc.25.1424992906332;
        Thu, 26 Feb 2015 15:21:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.198 with SMTP id l64ls25989qgd.96.gmail; Thu, 26 Feb
 2015 15:21:46 -0800 (PST)
X-Received: by 10.236.36.39 with SMTP id v27mr10385299yha.24.1424992906032;
        Thu, 26 Feb 2015 15:21:46 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si308345pac.0.2015.02.26.15.21.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:21:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B9819B4C;
	Thu, 26 Feb 2015 23:21:45 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:21:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 2/6] Staging: emxx_udc: Remove
 volatile from union usb_regs_access
Message-ID: <20150226232145.GA21368@kroah.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>
 <e7ac0d2f1b92c9d1439cb862e75cc3069562d8c6.1424786861.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e7ac0d2f1b92c9d1439cb862e75cc3069562d8c6.1424786861.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 24, 2015 at 05:31:07PM +0300, Haneen Mohammed wrote:
> volatile applies to a concrete variable definition, else it is useless.
> This patch removes volatile from union usb_regs_access:
> - to address compiler warning: "useless type qualifier"
> - and fix checkpatch.pl warning about using volatiles:
> "WARNING: Use of volatile is usually wrong"
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v5: Justify the removal of volatile 
> 
>  drivers/staging/emxx_udc/emxx_udc.c | 24 ++++++++++++------------
>  drivers/staging/emxx_udc/emxx_udc.h |  2 +-
>  2 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index e33ccc4..c9f5e5d 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -567,7 +567,7 @@ static int EP0_out_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  	u32		i;
>  	int		nret   = 0;
>  	u32		iWordLength = 0;
> -	volatile union usb_reg_access *pBuf32 = (volatile union usb_reg_access *)pBuf;
> +	union usb_reg_access *pBuf32 = (union usb_reg_access *)pBuf;

Just merge this with the previous patch please.

thanks,

greg k-h


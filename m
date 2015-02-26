X-GM-THRID: 1524698710016
X-Received: by 10.182.231.199 with SMTP id ti7mr7807905obc.7.1424975250300;
        Thu, 26 Feb 2015 10:27:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.46 with SMTP id k43ls221119qgk.27.gmail; Thu, 26 Feb
 2015 10:27:30 -0800 (PST)
X-Received: by 10.236.140.199 with SMTP id e47mr8716131yhj.50.1424975250107;
        Thu, 26 Feb 2015 10:27:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si215623pdb.1.2015.02.26.10.27.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:27:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C8721B88;
	Thu, 26 Feb 2015 18:27:29 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:27:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Deleted space
Message-ID: <20150226182729.GA29217@kroah.com>
References: <1424462457-6784-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1424462457-6784-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 10:00:57PM +0200, Hatice ERT�RK wrote:
> Deleted spaces before ','.Because it is prohibited by the kernel coding style.
> Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/vt6655/mac.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
> index dd241bb..f3c492f 100644
> --- a/drivers/staging/vt6655/mac.c
> +++ b/drivers/staging/vt6655/mac.c
> @@ -808,7 +808,7 @@ bool MACbPSWakeup(void __iomem *dwIoBase)
>  
>  	/* Check if SyncFlushOK */
>  	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
> -		VNSvInPortB(dwIoBase + MAC_REG_PSCTL , &byOrgValue);
> +		VNSvInPortB(dwIoBase + MAC_REG_PSCTL, &byOrgValue);
>  		if (byOrgValue & PSCTL_WAKEDONE)
>  			break;
>  	}
> -- 
> 1.9.1

This fix is already in my tree, are you sure you are working against the
latest kernel release?

thanks,

greg k-h


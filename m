X-GM-THRID: 2171028373504
X-Received: by 10.50.85.18 with SMTP id d18mr18723127igz.3.1424820504264;
        Tue, 24 Feb 2015 15:28:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.32 with SMTP id j32ls1821365iod.67.gmail; Tue, 24 Feb
 2015 15:28:24 -0800 (PST)
X-Received: by 10.66.142.170 with SMTP id rx10mr377600pab.34.1424820504066;
        Tue, 24 Feb 2015 15:28:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si832230pdb.1.2015.02.24.15.28.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 15:28:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [216.239.55.136])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CD7FBB1B;
	Tue, 24 Feb 2015 23:28:23 +0000 (UTC)
Date: Tue, 24 Feb 2015 15:28:23 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Fixed else after
 return or break warning
Message-ID: <20150224232823.GA25121@kroah.com>
References: <1424552476-6232-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424552476-6232-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 11:01:16PM +0200, Yeliz Taneroglu wrote:
> The following patch fixes the checkpatch.pl warning:
> drivers/staging/emxx_udc/emxx_udc.c warning: else is not generally useful
> after a break or return
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 0351728..36aca56 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -1491,8 +1491,7 @@ static int _nbu2ss_get_ep_stall(struct nbu2ss_udc *udc, u8 ep_adrs)
>  
>  	if ((data & bit_data) == 0)
>  		return 0;
> -	else
> -		return 1;
> +	return 1;
>  }
>  
>  /*-------------------------------------------------------------------------*/

This fix was already done a while ago, please update your kernel version
so you don't end up redoing work that others did :(

thanks,

greg k-h


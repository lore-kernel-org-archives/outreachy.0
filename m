X-GM-THRID: 7842685779968
X-Received: by 10.66.100.198 with SMTP id fa6mr58280488pab.31.1426416361962;
        Sun, 15 Mar 2015 03:46:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.33 with SMTP id 30ls2385516qgg.45.gmail; Sun, 15 Mar
 2015 03:46:01 -0700 (PDT)
X-Received: by 10.236.27.76 with SMTP id d52mr29049172yha.52.1426416361759;
        Sun, 15 Mar 2015 03:46:01 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si1273083pdb.1.2015.03.15.03.46.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:46:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9FF338CF;
	Sun, 15 Mar 2015 10:46:00 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:45:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: Move variable
 declarations
Message-ID: <20150315104557.GB543@kroah.com>
References: <20150312092128.GA7207@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150312092128.GA7207@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 02:51:28PM +0530, Vatika Harlalka wrote:
> Move variable declarations so as to follow kernel coding
> conventions.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index 2ec607d..acf5acb 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -410,15 +410,14 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  
>  static int write(struct fbtft_par *par, void *buf, size_t len)
>  {
> +	u8 i, data;
> +
>  	fbtft_par_dbg_hex(DEBUG_WRITE, par, par->info->device, u8, buf, len,
>  		"%s(len=%d): ", __func__, len);
>  
>  	gpio_set_value(par->RW, 0); /* set write mode */
>  
> -
>  	while (len--) {
> -		u8 i, data;
> -

Why?  There is nothing wrong with this code at all, please leave it
as-is, unless there is a good reason to move it.

thanks,

greg k-h



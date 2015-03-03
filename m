X-GM-THRID: 6098026233856
X-Received: by 10.182.22.138 with SMTP id d10mr287008obf.37.1425408388821;
        Tue, 03 Mar 2015 10:46:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.170 with SMTP id 42ls286827iom.25.gmail; Tue, 03 Mar
 2015 10:46:28 -0800 (PST)
X-Received: by 10.43.63.196 with SMTP id xf4mr2553588icb.22.1425408388613;
        Tue, 03 Mar 2015 10:46:28 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q9si195940pds.2.2015.03.03.10.46.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 10:46:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.0.216])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D4200AF3;
	Tue,  3 Mar 2015 18:46:25 +0000 (UTC)
Date: Tue, 3 Mar 2015 08:49:58 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Fix code indent
 should use tabs where possible
Message-ID: <20150303164958.GA1619@kroah.com>
References: <1425331162-4486-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425331162-4486-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 11:19:22PM +0200, Dilek Uzulmez wrote:
> Fix checkpatch.pl issues with code indent should use tabs where possible fb_pcd8544.c
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/fbtft/fb_pcd8544.c | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
> index 5e08a70..7385c50 100644
> --- a/drivers/staging/fbtft/fb_pcd8544.c
> +++ b/drivers/staging/fbtft/fb_pcd8544.c
> @@ -53,38 +53,38 @@ static int init_display(struct fbtft_par *par)
>  
>  	/* Function set */
>  	write_reg(par, 0x21); /* 5:1  1
> -	                         2:0  PD - Powerdown control: chip is active
> +				 2:0  PD - Powerdown control: chip is active
>  							 1:0  V  - Entry mode: horizontal addressing
>  							 0:1  H  - Extended instruction set control: extended
>  						  */

This comment still looks horrid, please fix it all at once.

thanks,

greg k-h


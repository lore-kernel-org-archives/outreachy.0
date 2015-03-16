X-GM-THRID: 8439037165568
X-Received: by 10.182.113.228 with SMTP id jb4mr66316917obb.31.1426519564739;
        Mon, 16 Mar 2015 08:26:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.4.2 with SMTP id g2ls1108747obg.44.gmail; Mon, 16 Mar 2015
 08:26:04 -0700 (PDT)
X-Received: by 10.182.29.102 with SMTP id j6mr60815068obh.46.1426519564561;
        Mon, 16 Mar 2015 08:26:04 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si1984863pac.1.2015.03.16.08.26.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:26:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 198C1AC6;
	Mon, 16 Mar 2015 15:26:02 +0000 (UTC)
Date: Mon, 16 Mar 2015 16:26:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: fbtft: Split function
 call into two lines to improve readability
Message-ID: <20150316152600.GB22971@kroah.com>
References: <20150315113258.GA26684@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150315113258.GA26684@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 15, 2015 at 05:02:58PM +0530, Vatika Harlalka wrote:
> Split function call to two lines improve code style and
> increase readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  Changes in v2: Changed subject line to make it more
> 		descriptive.
>  
>  drivers/staging/fbtft/fb_pcd8544.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
> index b13162c..0228f4f 100644
> --- a/drivers/staging/fbtft/fb_pcd8544.c
> +++ b/drivers/staging/fbtft/fb_pcd8544.c
> @@ -94,7 +94,8 @@ static int init_display(struct fbtft_par *par)
>  
>  static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
>  {
> -	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par, "%s(xs=%d, ys=%d, xe=%d, ye=%d)\n", __func__, xs, ys, xe, ye);
> +	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par, "%s(xs=%d, ys=%d, xe=%d, ye=%d)\n",
> +			__func__, xs, ys, xe, ye);

These types of "tracing" calls can all be removed, they aren't needed as
we have a build-in kernel tracing function.

thanks,

greg k-h


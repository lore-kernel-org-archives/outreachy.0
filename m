X-GM-THRID: 6342256003248029696
X-Received: by 10.237.40.2 with SMTP id r2mr5686200qtd.90.1476690238135;
        Mon, 17 Oct 2016 00:43:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.166 with SMTP id y35ls13149256ota.26.gmail; Mon, 17 Oct
 2016 00:43:57 -0700 (PDT)
X-Received: by 10.237.37.154 with SMTP id x26mr6656306qtc.17.1476690237738;
        Mon, 17 Oct 2016 00:43:57 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si4882061par.0.2016.10.17.00.43.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 00:43:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DB9AE71;
	Mon, 17 Oct 2016 07:43:56 +0000 (UTC)
Date: Mon, 17 Oct 2016 09:44:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: Make variable read only after
 initialization.
Message-ID: <20161017074404.GA7010@kroah.com>
References: <20161017023216.GA17876@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161017023216.GA17876@lennorien.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Mon, Oct 17, 2016 at 12:32:16AM -0200, Elise Lennion wrote:
> Use __ro_after_init to protect variable, initialized in several steps,
> from overwrite during runtime.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 0663ec0..5c02ad8 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -719,7 +719,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
>  	return ret;
>  }
>  
> -static struct fb_ops lynxfb_ops = {
> +static __ro_after_init struct fb_ops lynxfb_ops = {
>  	.owner = THIS_MODULE,
>  	.fb_check_var =  lynxfb_ops_check_var,
>  	.fb_set_par = lynxfb_ops_set_par,

How did you "prove" or test this?  I don't think it is correct to mark
this code this way at all, but would be glad to reconsider the patch if
you can prove me otherwise :)

thanks,

greg k-h


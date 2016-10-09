X-GM-THRID: 6338855429722865664
X-Received: by 10.66.250.137 with SMTP id zc9mr6248028pac.151.1476025091283;
        Sun, 09 Oct 2016 07:58:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.80 with SMTP id f16ls7502187otd.28.gmail; Sun, 09 Oct
 2016 07:58:10 -0700 (PDT)
X-Received: by 10.13.242.1 with SMTP id b1mr7543438ywf.151.1476025090914;
        Sun, 09 Oct 2016 07:58:10 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 80si3737458pfw.0.2016.10.09.07.58.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:58:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 256C987A;
	Sun,  9 Oct 2016 14:58:09 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:58:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Keila <laurana5@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH]V2 /staging/dgnc/dgnc_neo.h. Lines less than 80 characters
Message-ID: <20161009145818.GA26358@kroah.com>
References: <20161007234403.GA18409@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161007234403.GA18409@kheixx-VB>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 01:44:03AM +0200, Keila wrote:
> Signed-off-by: Keila Novo <laurana5@gmail.com>

Why did you put this as the first line?

> 
> Version 2. Fix checkpatch "more than 80 characters
> per line"

Why is "Version 2" in the changelog text here?

And look at your Subject:, it doesn't match other subjects for this
driver, does it?

> 
> Signed-off-by: Keila Novo <laurana5@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_neo.h | 35 +++++++++++++++++++----------------
>  1 file changed, 19 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_neo.h b/drivers/staging/dgnc/dgnc_neo.h
> index abddd48..efc88fd 100644
> --- a/drivers/staging/dgnc/dgnc_neo.h
> +++ b/drivers/staging/dgnc/dgnc_neo.h
> @@ -28,27 +28,27 @@
>   ************************************************************************/
>  
>  struct neo_uart_struct {
> -	u8 txrx;		/* WR  RHR/THR - Holding Reg */
> +	u8 txrx;	/* WR  RHR/THR - Holding Reg */
>  	u8 ier;		/* WR  IER - Interrupt Enable Reg */
> -	u8 isr_fcr;		/* WR  ISR/FCR - Interrupt Status Reg/Fifo Control Reg */
> +	u8 isr_fcr;    /* WR ISR/FCR - Interrupt Status Reg/Fifo Control Reg */

Why did you switch to using spaces?  Things are now not lined up neatly
:(

thanks,

greg k-h


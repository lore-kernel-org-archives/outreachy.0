X-GM-THRID: 6257158121021505536
X-Received: by 10.107.11.104 with SMTP id v101mr8900700ioi.13.1457735074263;
        Fri, 11 Mar 2016 14:24:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.135.196 with SMTP id pu4ls1016483obb.13.gmail; Fri, 11 Mar
 2016 14:24:33 -0800 (PST)
X-Received: by 10.182.243.135 with SMTP id wy7mr8666082obc.8.1457735073944;
        Fri, 11 Mar 2016 14:24:33 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si1313997pab.2.2016.03.11.14.24.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 14:24:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8BFEC9B4;
	Fri, 11 Mar 2016 22:24:33 +0000 (UTC)
Date: Fri, 11 Mar 2016 14:24:33 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: adc: Replace memset
 with eth_broadcast_addr
Message-ID: <20160311222433.GA18640@kroah.com>
References: <1456858139-3318-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456858139-3318-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Mar 02, 2016 at 12:18:59AM +0530, Bhumika Goyal wrote:
> Use eth_broadcast_addr to assign the broadcast address to the given
> address array instead of memset when the second argument is a broacast
> address 0xff. ETH_ALEN is a macro with value 6, so 6 is treated as
> ETH_ALEN if it is the third argument of memset.
> 
> Done using coccinelle.
> @@
> expression e;
> @@
> - memset(e,\(0xff\|0xFF\|255\),\(ETH_ALEN\|6\));
> + eth_broadcast_addr(e);
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index 1e85657..c2b5d21 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -225,7 +225,7 @@ static int ad7192_setup(struct ad7192_state *st,
>  	u8 ones[6];
>  
>  	/* reset the serial interface */
> -	memset(&ones, 0xFF, 6);
> +	eth_broadcast_addr(&ones);
>  	ret = spi_write(st->sd.spi, &ones, 6);
>  	if (ret < 0)
>  		goto out;

You didn't test build this change :(


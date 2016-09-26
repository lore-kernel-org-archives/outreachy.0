X-GM-THRID: 6334597152345423872
X-Received: by 10.31.137.140 with SMTP id l134mr3338210vkd.4.1474889030633;
        Mon, 26 Sep 2016 04:23:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.171.198 with SMTP id u189ls8398987ioe.5.gmail; Mon, 26 Sep
 2016 04:23:49 -0700 (PDT)
X-Received: by 10.107.12.71 with SMTP id w68mr5320121ioi.0.1474889029429;
        Mon, 26 Sep 2016 04:23:49 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si4064199par.0.2016.09.26.04.23.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 04:23:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C36912C;
	Mon, 26 Sep 2016 11:23:48 +0000 (UTC)
Date: Mon, 26 Sep 2016 13:23:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: vt6656: Remove unneccesary return variable
Message-ID: <20160926112353.GA4505@kroah.com>
References: <20160926111158.GA9984@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160926111158.GA9984@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Sep 26, 2016 at 04:42:03PM +0530, Namrata A Shettar wrote:
> Remove uneccessary return variable 'ret'. Return value directly.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/vt6656/card.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index 53b469c..33de99a 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -708,8 +708,6 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
>   */
>  int vnt_radio_power_off(struct vnt_private *priv)
>  {
> -	int ret = true;
> -
>  	switch (priv->rf_type) {
>  	case RF_AL2230:
>  	case RF_AL2230S:
> @@ -728,7 +726,7 @@ int vnt_radio_power_off(struct vnt_private *priv)
>  
>  	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
>  
> -	return ret;
> +	return true;
>  }

If this function can never "fail", why return anything at all?  Just
make the function not return anything, it's not like the return value is
even checked.

>  
>  /*
> @@ -745,8 +743,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
>   */
>  int vnt_radio_power_on(struct vnt_private *priv)
>  {
> -	int ret = true;
> -
>  	vnt_exit_deep_sleep(priv);
>  
>  	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> @@ -765,7 +761,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  
>  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
>  
> -	return ret;
> +	return true;
>  }
i
Same here.

thanks,

greg k-h


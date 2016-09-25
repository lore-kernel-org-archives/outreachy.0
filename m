X-GM-THRID: 6333636808059912192
X-Received: by 10.107.158.74 with SMTP id h71mr3203556ioe.12.1474799716826;
        Sun, 25 Sep 2016 03:35:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.86 with SMTP id c83ls7545808ioa.46.gmail; Sun, 25 Sep
 2016 03:35:13 -0700 (PDT)
X-Received: by 10.107.2.17 with SMTP id 17mr4182714ioc.66.1474799713287;
        Sun, 25 Sep 2016 03:35:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si3860562pab.1.2016.09.25.03.35.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 03:35:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6DED082B;
	Sun, 25 Sep 2016 10:35:12 +0000 (UTC)
Date: Sun, 25 Sep 2016 12:35:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: ks7010: ks_wlan_net: Use netdev_ or pr_info
 instead of printk
Message-ID: <20160925103516.GB8119@kroah.com>
References: <20160923213343.GA20036@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160923213343.GA20036@fireworks>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 24, 2016 at 12:33:43AM +0300, Georgiana Rodica Chelu wrote:
> The checkpatch.pl script found the following warning:
> 
> WARNING: printk() should include KERN_ facility level
> 
> After adding the KERN_ facility level to printk(), the script showed
> another warning:
> 
> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
> 
> The warning is similar for KERN_ERR and KERN_DEBUG. In conclusion,
> use netdev_info(), netdev_err() or netdev_dbg() when there is
> a netdev device and use pr_info() in the remained cases.
> 
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> ---
> Changes in v2:
>         - make the commit message more clear
> 	- replace all the appearances of printk()
> 
>  drivers/staging/ks7010/ks_wlan_net.c | 92 ++++++++++++++++++------------------
>  1 file changed, 46 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index d13a06b..9ef44cc 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -233,9 +233,9 @@ static int ks_wlan_set_freq(struct net_device *dev,
>  		/* We should do a better check than that,
>  		 * based on the card capability !!! */
>  		if ((channel < 1) || (channel > 14)) {
> -			printk(KERN_DEBUG
> -			       "%s: New channel value of %d is invalid!\n",
> -			       dev->name, fwrq->m);
> +			netdev_dbg(dev,
> +				   "%s: New channel value of %d is invalid!\n",
> +				   dev->name, fwrq->m);
>  			rc = -EINVAL;
>  		} else {
>  			/* Yes ! We can set it !!! */
> @@ -2671,17 +2671,17 @@ static int ks_wlan_set_sleep_mode(struct net_device *dev,
>  
>  	if (*uwrq == SLP_SLEEP) {
>  		priv->sleep_mode = *uwrq;
> -		printk("SET_SLEEP_MODE %d\n", priv->sleep_mode);
> +		netdev_info(dev, "SET_SLEEP_MODE %d\n", priv->sleep_mode);
>  
>  		hostif_sme_enqueue(priv, SME_STOP_REQUEST);
>  		hostif_sme_enqueue(priv, SME_SLEEP_REQUEST);
>  
>  	} else if (*uwrq == SLP_ACTIVE) {
>  		priv->sleep_mode = *uwrq;
> -		printk("SET_SLEEP_MODE %d\n", priv->sleep_mode);
> +		netdev_info(dev, "SET_SLEEP_MODE %d\n", priv->sleep_mode);
>  		hostif_sme_enqueue(priv, SME_SLEEP_REQUEST);
>  	} else {
> -		printk("SET_SLEEP_MODE %d errror\n", *uwrq);
> +		netdev_err(dev, "SET_SLEEP_MODE %d errror\n", *uwrq);
>  		return -EINVAL;
>  	}
>  
> @@ -2783,7 +2783,7 @@ static int ks_wlan_get_wps_enable(struct net_device *dev,
>  	}
>  	/* for SLEEP MODE */
>  	*uwrq = priv->wps.wps_enabled;
> -	printk("return=%d\n", *uwrq);
> +	netdev_info(dev, "return=%d\n", *uwrq);
>  
>  	return 0;
>  }
> @@ -2978,112 +2978,112 @@ static void print_hif_event(int event)
>  
>  	switch (event) {
>  	case HIF_DATA_REQ:
> -		printk("HIF_DATA_REQ\n");
> +		pr_info("HIF_DATA_REQ\n");
>  		break;
>  	case HIF_DATA_IND:
> -		printk("HIF_DATA_IND\n");
> +		pr_info("HIF_DATA_IND\n");

All of these should have a device structure somewhere, please fix this
function up to have that.  Right now I'd just take these changes out of
the patch and submit the rest.

thanks,

greg k-h


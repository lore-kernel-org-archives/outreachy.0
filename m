X-GM-THRID: 2590517493760
X-Received: by 10.50.87.97 with SMTP id w1mr577674igz.1.1424987144636;
        Thu, 26 Feb 2015 13:45:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.48.3 with SMTP id n3ls383678qga.30.gmail; Thu, 26 Feb 2015
 13:45:44 -0800 (PST)
X-Received: by 10.236.1.200 with SMTP id 48mr9769284yhd.41.1424987144352;
        Thu, 26 Feb 2015 13:45:44 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si271585pbc.1.2015.02.26.13.45.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:45:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1285FB32;
	Thu, 26 Feb 2015 21:45:44 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:45:43 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Replace
 printk() with pr_debug()
Message-ID: <20150226214543.GA17859@kroah.com>
References: <1424721379-8173-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424721379-8173-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Feb 23, 2015 at 08:56:19PM +0100, Ksenija Stanojevic wrote:
> For dynamic debugging pr_debug() macro is preferred over printk(), which
> is the raw way to print something. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v2: include only changes made to this file.
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> index 8c1bf1f..7fab680 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> @@ -49,14 +49,14 @@ static void *prism2_wep_init(int keyidx)
>  
>  	priv->tx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tx_tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
> +		pr_debug("ieee80211_crypt_wep: could not allocate "
>  		       "crypto API arc4\n");
>  		priv->tx_tfm = NULL;
>  		goto fail;
>  	}
>  	priv->rx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->rx_tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
> +		pr_debug("ieee80211_crypt_wep: could not allocate "
>  		       "crypto API arc4\n");

Please use net_dbg() instead

thanks,

greg k-h


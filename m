X-GM-THRID: 10250351542272
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e0272c880d02bf27
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.131.97 with SMTP id ol1mr8675832pdb.8.1427902410208;
        Wed, 01 Apr 2015 08:33:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.115.41 with SMTP id jl9ls1792593igb.9.canary; Wed, 01 Apr
 2015 08:33:30 -0700 (PDT)
X-Received: by 10.66.100.198 with SMTP id fa6mr50445688pab.31.1427902409971;
        Wed, 01 Apr 2015 08:33:29 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si257453pac.1.2015.04.01.08.33.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:33:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 26D48268;
	Wed,  1 Apr 2015 15:33:28 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:33:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtllib_crypt_tkip: Replase
 printk() with pr_debug()
Message-ID: <20150401153326.GB15236@kroah.com>
References: <1427590308-18551-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427590308-18551-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 29, 2015 at 02:51:48AM +0200, Ioana Ciornei wrote:
> Replace printk(KERN_DEBUG ..) with pr_debug() since it is the preferred way when there
> is no netdevice or device struct object to pass as argument. 
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 39 ++++++++++------------------
>  1 file changed, 13 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
> index ccf8530..1c4025f 100644
> --- a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
> +++ b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
> @@ -66,8 +66,7 @@ static void *rtllib_tkip_init(int key_idx)
>  	priv->tx_tfm_arc4 = crypto_alloc_blkcipher("ecb(arc4)", 0,
>  			CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tx_tfm_arc4)) {
> -		printk(KERN_DEBUG
> -		       "rtllib_crypt_tkip: could not allocate crypto API arc4\n");
> +		pr_debug("rtllib_crypt_tkip: could not allocate crypto API arc4\n");
>  		priv->tx_tfm_arc4 = NULL;
>  		goto fail;
>  	}
> @@ -75,8 +74,7 @@ static void *rtllib_tkip_init(int key_idx)
>  	priv->tx_tfm_michael = crypto_alloc_hash("michael_mic", 0,
>  			CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tx_tfm_michael)) {
> -		printk(KERN_DEBUG
> -		       "rtllib_crypt_tkip: could not allocate crypto API michael_mic\n");
> +		pr_debug("rtllib_crypt_tkip: could not allocate crypto API michael_mic\n");
>  		priv->tx_tfm_michael = NULL;
>  		goto fail;
>  	}
> @@ -84,8 +82,7 @@ static void *rtllib_tkip_init(int key_idx)
>  	priv->rx_tfm_arc4 = crypto_alloc_blkcipher("ecb(arc4)", 0,
>  			CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->rx_tfm_arc4)) {
> -		printk(KERN_DEBUG
> -		       "rtllib_crypt_tkip: could not allocate crypto API arc4\n");
> +		pr_debug("rtllib_crypt_tkip: could not allocate crypto API arc4\n");
>  		priv->rx_tfm_arc4 = NULL;
>  		goto fail;
>  	}
> @@ -93,8 +90,7 @@ static void *rtllib_tkip_init(int key_idx)
>  	priv->rx_tfm_michael = crypto_alloc_hash("michael_mic", 0,
>  			CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->rx_tfm_michael)) {
> -		printk(KERN_DEBUG
> -		       "rtllib_crypt_tkip: could not allocate crypto API michael_mic\n");
> +		pr_debug("rtllib_crypt_tkip: could not allocate crypto API michael_mic\n");
>  		priv->rx_tfm_michael = NULL;
>  		goto fail;
>  	}
> @@ -399,23 +395,20 @@ static int rtllib_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  	keyidx = pos[3];
>  	if (!(keyidx & (1 << 5))) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG
> -			       "TKIP: received packet without ExtIV flag from %pM\n",
> +			pr_debug("TKIP: received packet without ExtIV flag from %pM\n",
>  			       hdr->addr2);

If you have a skb, then you should be able to find the network device
somehow.

For the other places, odds are you can dig and find it as well,
otherwise how does the code know what device it is working with?

If you really can't, then the api needs to be fixed to provide it.  No
network driver should ever do "blind" printk/pr_* calls.

thanks,

greg k-h


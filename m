X-GM-THRID: 6330925606572654592
X-Received: by 10.66.129.232 with SMTP id nz8mr4135679pab.14.1474196578573;
        Sun, 18 Sep 2016 04:02:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.207 with SMTP id w73ls8471033ota.8.gmail; Sun, 18 Sep
 2016 04:02:58 -0700 (PDT)
X-Received: by 10.200.55.55 with SMTP id o52mr2565639qtb.66.1474196578042;
        Sun, 18 Sep 2016 04:02:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o13si1207433itc.3.2016.09.18.04.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 04:02:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,356,1470693600"; 
   d="scan'208";a="193811878"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Sep 2016 13:02:55 +0200
Date: Sun, 18 Sep 2016 13:02:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 2/6] staging: ks7010: Remove braces
 following single statement blocks
In-Reply-To: <38a21c2a1b3bc3476860cfe2080ef85816569e7f.1474032241.git.karniksayli1995@gmail.com>
Message-ID: <alpine.DEB.2.10.1609181302420.3238@hadrien>
References: <cover.1474032241.git.karniksayli1995@gmail.com> <38a21c2a1b3bc3476860cfe2080ef85816569e7f.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 18 Sep 2016, sayli karnik wrote:

> The patch removes braces {} for single statement blocks, as suggested by
> checkpatch.pl.

Why do you add blank lines everywhere?

julia

> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/ks7010/ks7010_sdio.c | 38 +++++++++++++++++-------------------
>  1 file changed, 18 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index b993804..8e1f68a 100644
> --- a/drivers/staging/ks7010/ks7010_sdio.c
> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> @@ -157,9 +157,9 @@ void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv)
>  		rw_data = WAKEUP_REQ;
>  		retval =
>  		    ks7010_sdio_write(priv, WAKEUP, &rw_data, sizeof(rw_data));
> -		if (retval) {
> +		if (retval)
>  			DPRINTK(1, " error : WAKEUP=%02X\n", rw_data);
> -		}
> +
>  		DPRINTK(4, "wake up : WAKEUP=%02X\n", rw_data);
>  		priv->last_wakeup = jiffies;
>  		++priv->wakeup_count;
> @@ -398,9 +398,8 @@ static void rx_event_task(unsigned long dev)
>  		hostif_receive(priv, rp->data, rp->size);
>  		inc_rxqhead(priv);
>
> -		if (cnt_rxqbody(priv) > 0) {
> +		if (cnt_rxqbody(priv) > 0)
>  			tasklet_schedule(&priv->ks_wlan_hw.rx_bh_task);
> -		}
>  	}
>  }
>
> @@ -426,9 +425,8 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
>  	retval =
>  	    ks7010_sdio_read(priv, DATA_WINDOW, &rx_buffer->data[0],
>  			     hif_align_size(size));
> -	if (retval) {
> +	if (retval)
>  		goto error_out;
> -	}
>
>  	/* length check */
>  	if (size > 2046 || size == 0) {
> @@ -443,9 +441,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
>  		retval =
>  		    ks7010_sdio_write(priv, READ_STATUS, &read_status,
>  				      sizeof(read_status));
> -		if (retval) {
> +		if (retval)
>  			DPRINTK(1, " error : READ_STATUS=%02X\n", read_status);
> -		}
> +
>  		goto error_out;
>  	}
>
> @@ -459,9 +457,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
>  	retval =
>  	    ks7010_sdio_write(priv, READ_STATUS, &read_status,
>  			      sizeof(read_status));
> -	if (retval) {
> +	if (retval)
>  		DPRINTK(1, " error : READ_STATUS=%02X\n", read_status);
> -	}
> +
>  	DPRINTK(4, "READ_STATUS=%02X\n", read_status);
>
>  	if (atomic_read(&priv->psstatus.confirm_wait)) {
> @@ -545,9 +543,9 @@ static void ks7010_rw_function(struct work_struct *work)
>  		ks_wlan_hw_rx((void *)priv,
>  			      (uint16_t) (((rw_data & RSIZE_MASK) << 4)));
>  	}
> -	if ((rw_data & WSTATUS_MASK)) {
> +	if ((rw_data & WSTATUS_MASK))
>  		tx_device_task((void *)priv);
> -	}
> +
>  	_ks_wlan_hw_power_save(priv);
>
>   err_out:
> @@ -884,9 +882,9 @@ static void ks7010_card_init(struct ks_wlan_private *priv)
>  		DPRINTK(1, "wait time out!! SME_START\n");
>  	}
>
> -	if (priv->mac_address_valid && priv->version_size) {
> +	if (priv->mac_address_valid && priv->version_size)
>  		priv->dev_state = DEVICE_STATE_PREINIT;
> -	}
> +
>
>  	hostif_sme_enqueue(priv, SME_GET_EEPROM_CKSUM);
>
> @@ -1029,9 +1027,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
>  	init_completion(&priv->ks_wlan_hw.ks7010_sdio_wait);
>  	priv->ks_wlan_hw.read_buf = NULL;
>  	priv->ks_wlan_hw.read_buf = kmalloc(RX_DATA_SIZE, GFP_KERNEL);
> -	if (!priv->ks_wlan_hw.read_buf) {
> +	if (!priv->ks_wlan_hw.read_buf)
>  		goto error_free_netdev;
> -	}
> +
>  	priv->dev_state = DEVICE_STATE_PREBOOT;
>  	priv->net_dev = netdev;
>  	priv->firmware_version[0] = '\0';
> @@ -1067,9 +1065,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
>  	sdio_claim_host(func);
>  	ret = ks7010_sdio_write(priv, INT_PENDING, &rw_data, sizeof(rw_data));
>  	sdio_release_host(func);
> -	if (ret) {
> +	if (ret)
>  		DPRINTK(1, " error : INT_PENDING=%02X\n", rw_data);
> -	}
> +
>  	DPRINTK(4, " clear Interrupt : INT_PENDING=%02X\n", rw_data);
>
>  	/* enable ks7010sdio interrupt (INT_GCR_B|INT_READ_STATUS|INT_WRITE_STATUS) */
> @@ -1077,9 +1075,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
>  	sdio_claim_host(func);
>  	ret = ks7010_sdio_write(priv, INT_ENABLE, &rw_data, sizeof(rw_data));
>  	sdio_release_host(func);
> -	if (ret) {
> +	if (ret)
>  		DPRINTK(1, " error : INT_ENABLE=%02X\n", rw_data);
> -	}
> +
>  	DPRINTK(4, " enable Interrupt : INT_ENABLE=%02X\n", rw_data);
>  	priv->dev_state = DEVICE_STATE_BOOT;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/38a21c2a1b3bc3476860cfe2080ef85816569e7f.1474032241.git.karniksayli1995%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


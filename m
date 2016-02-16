X-GM-THRID: 6251387013409275904
X-Received: by 10.182.29.129 with SMTP id k1mr18704030obh.23.1455589189345;
        Mon, 15 Feb 2016 18:19:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.234 with SMTP id z10ls918579igl.1.gmail; Mon, 15 Feb
 2016 18:19:48 -0800 (PST)
X-Received: by 10.66.65.168 with SMTP id y8mr9377800pas.1.1455589188745;
        Mon, 15 Feb 2016 18:19:48 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u66si3315488pfa.2.2016.02.15.18.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 18:19:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6F22611AB;
	Tue, 16 Feb 2016 02:19:48 +0000 (UTC)
Date: Mon, 15 Feb 2016 18:19:48 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: wilc1000: Remove
 whitespace checkpatch errors
Message-ID: <20160216021948.GB31337@kroah.com>
References: <cover.1455513866.git.eraretuya@gmail.com>
 <bf2ba268e14b1a664ffecb075bc4b6bdb8f520c9.1455513866.git.eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf2ba268e14b1a664ffecb075bc4b6bdb8f520c9.1455513866.git.eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 15, 2016 at 01:34:16PM +0800, Eva Rachel Retuya wrote:
> Address the following checkpatch errors concerning whitespace:
> * ERROR: trailing whitespace
> * ERROR: space required after that ',' (ctx:VxV)
> * ERROR: spaces prohibited around that '->' (ctx:WxV)

That's different things, please break this up, because:

> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c         | 2 +-
>  drivers/staging/wilc1000/linux_mon.c              | 2 +-
>  drivers/staging/wilc1000/wilc_spi.c               | 9 ++++++---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
>  4 files changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index d1eedfb..04337c7 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -3352,7 +3352,7 @@ static s32 host_int_get_assoc_res_info(struct wilc_vif *vif,
>  		PRINT_ER("Failed to send association response config packet\n");
>  		return -EINVAL;
>  	}
> -	
> +
>  	*pu32RcvdAssocRespInfoLen = wid.size;
>  	return result;
>  }
> diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> index 21f35d7..9fcb497 100644
> --- a/drivers/staging/wilc1000/linux_mon.c
> +++ b/drivers/staging/wilc1000/linux_mon.c
> @@ -302,7 +302,7 @@ struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_devi
>  	struct WILC_WFI_mon_priv *priv;
>  
>  	/*If monitor interface is already initialized, return it*/
> -	if (wilc_wfi_mon) 
> +	if (wilc_wfi_mon)
>  		return wilc_wfi_mon;
>  
>  	wilc_wfi_mon = alloc_etherdev(sizeof(struct WILC_WFI_mon_priv));
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 2928712..339956e 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -514,7 +514,8 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
>  					crc[0] = rb[rix++];
>  					crc[1] = rb[rix++];
>  				} else {
> -					dev_err(&spi->dev,"buffer overrun when reading crc.\n");
> +					dev_err(&spi->dev,
> +					  "buffer overrun when reading crc.\n");

That change is not ok, leave it as-is.

>  					result = N_FAIL;
>  					return result;
>  				}
> @@ -680,7 +681,8 @@ static int spi_data_write(struct wilc *wilc, u8 *b, u32 sz)
>  		 **/
>  		if (!g_spi.crc_off) {
>  			if (wilc_spi_tx(wilc, crc, 2)) {
> -				dev_err(&spi->dev,"Failed data block crc write, bus error...\n");
> +				dev_err(&spi->dev,
> +				 "Failed data block crc write, bus error...\n");

Same here.

>  				result = N_FAIL;
>  				break;
>  			}
> @@ -1074,7 +1076,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
>  				ret = wilc_spi_write_reg(wilc,
>  							 WILC_VMM_CORE_CTL, 1);
>  				if (!ret) {
> -					dev_err(&spi->dev,"fail write reg vmm_core_ctl...\n");
> +					dev_err(&spi->dev,
> +					    "fail write reg vmm_core_ctl...\n");

Same here.



>  					goto _fail_;
>  				}
>  			}
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 81a2ee9..46c6e32 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -2126,7 +2126,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
>  
>  	priv = wiphy_priv(wiphy);
>  	vif = netdev_priv(dev);
> -	wl = vif ->wilc;
> +	wl = vif->wilc;

That's just odd.  The original code compiles?

thanks,

greg k-h


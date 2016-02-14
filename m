X-GM-THRID: 6250978636756680704
X-Received: by 10.112.77.169 with SMTP id t9mr1099467lbw.8.1455434815972;
        Sat, 13 Feb 2016 23:26:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.143 with SMTP id p137ls514448lfe.108.gmail; Sat, 13 Feb
 2016 23:26:52 -0800 (PST)
X-Received: by 10.112.138.98 with SMTP id qp2mr1143185lbb.4.1455434812563;
        Sat, 13 Feb 2016 23:26:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si314741wmd.1.2016.02.13.23.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 23:26:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,444,1449529200"; 
   d="scan'208";a="164634666"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 08:26:51 +0100
Date: Sun, 14 Feb 2016 08:26:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: fix multiple
 checkpatch errors
In-Reply-To: <1455419372-6149-1-git-send-email-eraretuya@gmail.com>
Message-ID: <alpine.DEB.2.02.1602140825380.2039@localhost6.localdomain6>
References: <1455419372-6149-1-git-send-email-eraretuya@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 14 Feb 2016, Eva Rachel Retuya wrote:

> Address the following checkpatch errors:
> * ERROR: "(foo*)" should be "(foo *)"
> * ERROR: space required after that ',' (ctx:VxV)
> * ERROR: spaces prohibited around that '->' (ctx:WxV)
> * ERROR: do not initialise statics to false
> * ERROR: do not initialise statics to 0x00

This should be a patch series.  Each patch should only do one thing.  
Perhaps you could put all the whitespace ones together, and all the 
initialization ones together.  But they should not all be in one patch.

julia

> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c         | 2 +-
>  drivers/staging/wilc1000/wilc_spi.c               | 9 ++++++---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 4 ++--
>  drivers/staging/wilc1000/wilc_wlan.c              | 2 +-
>  4 files changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 5570707..7b2c926 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -2679,7 +2679,7 @@ static int hostIFthread(void *pvArg)
>  {
>  	u32 u32Ret;
>  	struct host_if_msg msg;
> -	struct wilc *wilc = (struct wilc*)pvArg;
> +	struct wilc *wilc = (struct wilc *)pvArg;
>  	struct wilc_vif *vif;
>  
>  	memset(&msg, 0, sizeof(struct host_if_msg));
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
>  					goto _fail_;
>  				}
>  			}
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 97d1b80..4f1fb2e 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -157,7 +157,7 @@ static u8 wlan_channel = INVALID_CHANNEL;
>  static u8 curr_channel;
>  static u8 p2p_oui[] = {0x50, 0x6f, 0x9A, 0x09};
>  static u8 p2p_local_random = 0x01;
> -static u8 p2p_recv_random = 0x00;
> +static u8 p2p_recv_random;
>  static u8 p2p_vendor_spec[] = {0xdd, 0x05, 0x00, 0x08, 0x40, 0x03};
>  static bool wilc_ie;
>  
> @@ -2126,7 +2126,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
>  
>  	priv = wiphy_priv(wiphy);
>  	vif = netdev_priv(dev);
> -	wl = vif ->wilc;
> +	wl = vif->wilc;
>  	PRINT_D(HOSTAPD_DBG, "Starting ap\n");
>  
>  	PRINT_D(HOSTAPD_DBG, "Interval = %d\n DTIM period = %d\n Head length = %zu Tail length = %zu\n",
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index a396ac9..ef65e8e 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -325,7 +325,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
>  	return 1;
>  }
>  
> -static bool enabled = false;
> +static bool enabled;
>  
>  void wilc_enable_tcp_ack_filter(bool value)
>  {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455419372-6149-1-git-send-email-eraretuya%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


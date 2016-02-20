X-GM-THRID: 6252682956300615680
X-Received: by 10.25.17.25 with SMTP id g25mr239686lfi.8.1455995294144;
        Sat, 20 Feb 2016 11:08:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.85.209 with SMTP id j200ls208954lfb.49.gmail; Sat, 20 Feb
 2016 11:08:13 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr2566592lbb.2.1455995293551;
        Sat, 20 Feb 2016 11:08:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 141si737181wmy.2.2016.02.20.11.08.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 11:08:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,477,1449529200"; 
   d="scan'208";a="203923465"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 20:08:12 +0100
Date: Sat, 20 Feb 2016 14:08:10 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wilc1000: Remove and
 rename struct typedefs from .c files
In-Reply-To: <1455982285-17907-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602201405440.2711@hadrien>
References: <1455816184-25563-1-git-send-email-bhumirks@gmail.com> <1455982285-17907-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 20 Feb 2016, Bhumika Goyal wrote:

> Using typedef for a structure type is not suggested in Linux kernel coding
> style guidelines. So remove typedefs from structures wilc_sdio_t,
> wilc_spi_t and wilc_mac_cfg_t. Also remove '_t' suffix from the names.
>
> The following semantic patch detects cases:
>
> @tn1@
> type td;
> @@
>
> typedef struct { ... } td;
>
> @script:python tf@
> td << tn1.td;
> tdres;
> @@
> coccinelle.tdres = td;
>
> @@ type tn1.td;
> identifier tf.tdres;
> @@
> -typedef
>  struct
> + tdres
>   { ... }
> -td
>   ;
> @@ type tn1.td;
> identifier tf.tdres;
> @@
> -td
> + struct tdres

Actually, the semantic patch performs part of the transformation.  So it
would be good to say in the commit message that you have changed the names
by hand.

julia

>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
> Changes in v2:
> * Remove '_t' suffix from the struct names.
>
>  drivers/staging/wilc1000/wilc_sdio.c     |  8 ++++----
>  drivers/staging/wilc1000/wilc_spi.c      |  8 ++++----
>  drivers/staging/wilc1000/wilc_wlan_cfg.c | 10 +++++-----
>  3 files changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_sdio.c b/drivers/staging/wilc1000/wilc_sdio.c
> index 963875af..029bd09 100644
> --- a/drivers/staging/wilc1000/wilc_sdio.c
> +++ b/drivers/staging/wilc1000/wilc_sdio.c
> @@ -30,15 +30,15 @@ static const struct sdio_device_id wilc_sdio_ids[] = {
>
>  #define WILC_SDIO_BLOCK_SIZE 512
>
> -typedef struct {
> +struct wilc_sdio {
>  	bool irq_gpio;
>  	u32 block_size;
>  	int nint;
>  #define MAX_NUN_INT_THRPT_ENH2 (5) /* Max num interrupts allowed in registers 0xf7, 0xf8 */
>  	int has_thrpt_enh3;
> -} wilc_sdio_t;
> +};
>
> -static wilc_sdio_t g_sdio;
> +static struct wilc_sdio g_sdio;
>
>  static int sdio_write_reg(struct wilc *wilc, u32 addr, u32 data);
>  static int sdio_read_reg(struct wilc *wilc, u32 addr, u32 *data);
> @@ -675,7 +675,7 @@ static int sdio_init(struct wilc *wilc, bool resume)
>  	u32 chipid;
>
>  	if (!resume) {
> -		memset(&g_sdio, 0, sizeof(wilc_sdio_t));
> +		memset(&g_sdio, 0, sizeof(struct wilc_sdio));
>  		g_sdio.irq_gpio = wilc->dev_irq_num;
>  	}
>
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 2928712..6a69b04 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -24,13 +24,13 @@
>  #include "wilc_wlan.h"
>  #include "wilc_wfi_netdevice.h"
>
> -typedef struct {
> +struct wilc_spi {
>  	int crc_off;
>  	int nint;
>  	int has_thrpt_enh;
> -} wilc_spi_t;
> +};
>
> -static wilc_spi_t g_spi;
> +static struct wilc_spi g_spi;
>
>  static int wilc_spi_read(struct wilc *wilc, u32, u8 *, u32);
>  static int wilc_spi_write(struct wilc *wilc, u32, u8 *, u32);
> @@ -867,7 +867,7 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
>  		return 1;
>  	}
>
> -	memset(&g_spi, 0, sizeof(wilc_spi_t));
> +	memset(&g_spi, 0, sizeof(struct wilc_spi));
>
>  	/**
>  	 *      configure protocol
> diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
> index 9dab247..56455f4 100644
> --- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
> +++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
> @@ -19,7 +19,7 @@
>   *
>   ********************************************/
>
> -typedef struct {
> +struct wilc_mac_cfg {
>  	wilc_debug_func dPrint;
>
>  	int mac_status;
> @@ -40,9 +40,9 @@ typedef struct {
>  	u8 firmware_info[8];
>  	u8 scan_result[256];
>  	u8 scan_result1[256];
> -} wilc_mac_cfg_t;
> +};
>
> -static wilc_mac_cfg_t g_mac;
> +static struct wilc_mac_cfg g_mac;
>
>  static struct wilc_cfg_byte g_cfg_byte[] = {
>  	{WID_BSS_TYPE, 0},
> @@ -349,7 +349,7 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
>
>  static int wilc_wlan_parse_info_frame(u8 *info, int size)
>  {
> -	wilc_mac_cfg_t *pd = &g_mac;
> +	struct wilc_mac_cfg *pd = &g_mac;
>  	u32 wid, len;
>  	int type = WILC_CFG_RSP_STATUS;
>
> @@ -539,7 +539,7 @@ int wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
>
>  int wilc_wlan_cfg_init(wilc_debug_func func)
>  {
> -	memset((void *)&g_mac, 0, sizeof(wilc_mac_cfg_t));
> +	memset((void *)&g_mac, 0, sizeof(struct wilc_mac_cfg));
>  	g_mac.dPrint = func;
>  	return 1;
>  }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455982285-17907-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


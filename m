X-GM-THRID: 6466269161228075008
X-Received: by 10.28.184.133 with SMTP id i127mr524878wmf.20.1505548065483;
        Sat, 16 Sep 2017 00:47:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.66 with SMTP id l63ls685317wmd.18.canary-gmail; Sat, 16
 Sep 2017 00:47:44 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC/pT+LAKd3PjzLeUqH8xInXGl/vHuUu6RsiiNZDuX9/q59rjRmYwogbmjyEUu74iJzwytA
X-Received: by 10.28.35.142 with SMTP id j136mr536659wmj.1.1505548064553;
        Sat, 16 Sep 2017 00:47:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505548064; cv=none;
        d=google.com; s=arc-20160816;
        b=XZ5CM8Uo/KBFCvWQ539IcqpaI40OWDWcvwlxS0kKl8h0VDwuBfPeLBGZkGhKju1g9v
         SjP9ef0Ki5sEMWgS13mDh1lqTTGYvXpw5AcZTc9mEgAJJBICwAgrL7mzrmnL7bF3EZH+
         nN9azPeg8sv0xBJEc7U9N+eJWgl+GODkI0lRIGjgy30RUPHF+40bBfVgDpbiA0nZbORl
         fK0Pa9h8kK8ujWtExDh11i9aLufcneCec+irf3yVvye5ys3vHwymtDWeWcNZsuW88agC
         ZogCUWRZ+IJA5TUsjG2i/vciW3YEjvQrWHow/zOWKodeYgLdEML91zxknnMnAEb9slVs
         12Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=6pqfZXAXv2Mg9ZCTu8V6oi3A3Pg9iRB0RjTezA0qwSg=;
        b=vIJinpjcVOkSaQWso8AsDV4Xi55jpJo7q64eMOT0eBQz7a3EJt98rngmv83jloHnDb
         NztU57prAKEywMI7YKJe3XJfiiVqE/Xh5XKYJ9N3MEowr2B4yi49gaQGrCye3bw5x/MO
         a4cUUpVQzS0SxYrGzXTel2ray7/ljxPMR9P6VUdL8vuuK1PvZwuaOzLHpvnjvwy+myxK
         fm3AngnLoeoSp8twRQGxUV2S9oKSe5DMKcPGwN5UrYoYo6unMmgRMHpXQXZztzkssQvn
         rARSNRn7b+Egdl3PPDy4afPLXB7I+JIfKscYezEAf940qZZIk9jkam8j5RIGC7TM7q3B
         EnYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d82si137708wmd.1.2017.09.16.00.47.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 00:47:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,400,1500933600"; 
   d="scan'208";a="291361771"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 09:47:44 +0200
Date: Sat, 16 Sep 2017 09:47:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: fix spaces before
 tabs
In-Reply-To: <1505545603-15473-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709160947020.2943@hadrien>
References: <1505545603-15473-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Aastha Gupta wrote:

> This patch fixes checkpatch.pl warning:
> WARNING: please, no space before tabs
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/odm.h          | 4 ++--
>  drivers/staging/rtl8188eu/include/rtl8188e_hal.h | 8 ++++----
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/include/odm.h b/drivers/staging/rtl8188eu/include/odm.h
> index 5dd8cb2..13ead61 100644
> --- a/drivers/staging/rtl8188eu/include/odm.h
> +++ b/drivers/staging/rtl8188eu/include/odm.h
> @@ -513,7 +513,7 @@ enum odm_security {
>  	ODM_SEC_RESERVE		= 3,
>  	ODM_SEC_AESCCMP		= 4,
>  	ODM_SEC_WEP104		= 5,
> -	ODM_WEP_WPA_MIXED   	= 6, /*  WEP + WPA */
> +	ODM_WEP_WPA_MIXED	= 6, /*  WEP + WPA */
>  	ODM_SEC_SMS4		= 7,
>  };
>
> @@ -695,7 +695,7 @@ enum ant_div_type {
>
>  /* Copy from SD4 defined structure. We use to support PHY DM integration. */
>  struct odm_dm_struct {
> -	/* 	Add for different team use temporarily */
> +	/*	Add for different team use temporarily */
>  	struct adapter *Adapter;	/*  For CE/NIC team */
>  	struct rtl8192cd_priv *priv;	/*  For AP/ADSL team */
>  	/*  WHen you use above pointers, they must be initialized. */
> diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
> index 827cd4d..b78a3fb 100644
> --- a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
> +++ b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
> @@ -42,7 +42,7 @@
>  #define RTL8188E_PHY_REG_PG			"rtl8188E\\PHY_REG_PG.txt"
>  #define RTL8188E_PHY_REG_MP			"rtl8188E\\PHY_REG_MP.txt"
>
> -/* 		RTL8188E Power Configuration CMDs for USB/SDIO interfaces */
> +/*  RTL8188E Power Configuration CMDs for USB/SDIO interfaces */

No need for two spaces here.

>  #define Rtl8188E_NIC_PWR_ON_FLOW		rtl8188E_power_on_flow
>  #define Rtl8188E_NIC_RF_OFF_FLOW		rtl8188E_radio_off_flow
>  #define Rtl8188E_NIC_DISABLE_FLOW		rtl8188E_card_disable_flow
> @@ -113,7 +113,7 @@ enum usb_rx_agg_mode {
>  #define WMM_NORMAL_TX_PAGE_BOUNDARY_88E			\
>  	(WMM_NORMAL_TX_TOTAL_PAGE_NUMBER + 1) /* 0xA9 */
>
> -/* 	Chip specific */
> +/* Chip specific */
>  #define CHIP_BONDING_IDENTIFIER(_value)	(((_value)>>22)&0x3)
>  #define CHIP_BONDING_92C_1T2R	0x1
>  #define CHIP_BONDING_88C_USB_MCARD	0x2
> @@ -121,7 +121,7 @@ enum usb_rx_agg_mode {
>  #include "HalVerDef.h"
>  #include "hal_com.h"
>
> -/* 	Channel Plan */
> +/* Channel Plan */
>  enum ChannelPlan {
>  	CHPL_FCC	= 0,
>  	CHPL_IC		= 1,
> @@ -180,7 +180,7 @@ struct txpowerinfo24g {
>  #define		EFUSE_OOB_PROTECT_BYTES_88E	18
>  #define		EFUSE_PROTECT_BYTES_BANK_88E	16
>
> -/* 			EFUSE for BT definition */
> +/*  EFUSE for BT definition */

No need for two spaces here either.

julia

>  #define EFUSE_BT_REAL_CONTENT_LEN	1536	/*  512*3 */
>  #define EFUSE_BT_MAP_LEN		1024	/*  1k bytes */
>  #define EFUSE_BT_MAX_SECTION		128	/*  1024/8 */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505545603-15473-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


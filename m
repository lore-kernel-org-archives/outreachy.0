X-GM-THRID: 6610740255626625024
X-Received: by 2002:a19:6b13:: with SMTP id d19-v6mr661744lfa.8.1539183512375;
        Wed, 10 Oct 2018 07:58:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:2d1e:: with SMTP id k30-v6ls235478lfj.71.gmail; Wed, 10
 Oct 2018 07:58:31 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63Zymz66tkXnSIzvKszrVfRwbnoX4PoKOSalcCQoW6jIzjEKJ1oeSPOAQCJCc/JxwzRsyWq
X-Received: by 2002:a19:d767:: with SMTP id o100-v6mr942174lfg.21.1539183511563;
        Wed, 10 Oct 2018 07:58:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539183511; cv=none;
        d=google.com; s=arc-20160816;
        b=EbvHTwKVfnjThLZlAYxgz8bKHDYhq+YjRFVs1erNQVSgspq3MXonb4q+Riw1GF0SAe
         tMAnoj3NI8y11k3x0i/uuf7/iUPgHbKVVYGA55KFtaBHqUzD61g2sbpys8f0A3MZWMlG
         6kv7bc+qZA4qjsc+/xgvTgkD0IDb2JdVxmXz4X7ZQcOKF0zBPUidLwGhV9NF0Cc7jGjl
         9Uu99eUda0R66HQ97k6ErEBpBlWBQZokg0XDTnvmplXI03wVjfTxBwHj47LxX4CwJqci
         aOzKE2vj1MPkzklFq3kFYYqKpAfBsoODbGfJN6IThCuPwmpKmRgNAzRb4gVtzN7V7XAm
         LYiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vReE2BNb5z/N2cYVz/oJcD93NgvHbOdZQSMmFNho4Y0=;
        b=wTBndk2Trl2QYqDm06fIIDR7TQt7pRmZowk4vYw/VYgEJUxSay0MGBX30Dtan4yjkl
         urzwBd9ss5btOdICi0XNf/glOmjMpHcWP2cOywF7v4ETeamCgId5pNb96ovo4H2aU1B9
         BHJ/eQ9kDEfhWKLQJrYI4JsYYynWJFUXitBF7SVevIdXnbi/6CgXeJwwHSDrAOwcA568
         NLkmqu+c8OibsHROZJEGLQLqEt9k9yD0VrP4WQ5jsvIZTM/JWNzO/rHhIO6v+XvMWAUf
         4guehN8YvnibGqKvjLRuGat0U/XJ7KUb4ZB9OiIrxtpu4wQegW9uNmGUW4bfu2PMe0Ek
         8itA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r79-v6si893390ljr.3.2018.10.10.07.58.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 07:58:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,364,1534802400"; 
   d="scan'208";a="281694360"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Oct 2018 16:58:30 +0200
Date: Wed, 10 Oct 2018 16:58:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    aditya.shankar@microchip.com, ganesh.krishna@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: wilc1000: Change struct
 members from bool to u8
In-Reply-To: <e409baf10c6cc043344f1a63712d661611953973.1539182155.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.20.1810101657190.3396@hadrien>
References: <cover.1539182155.git.code@wizofe.uk> <e409baf10c6cc043344f1a63712d661611953973.1539182155.git.code@wizofe.uk>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 10 Oct 2018, Ioannis Valasakis wrote:

> Recent versions of checkpatch have a new warning based on a documented
> preference of Linus to not use bool in structures due to wasted space and
> the size of bool is implementation dependent.  For more information, see
> the email thread at https://lkml.org/lkml/2017/11/21/384.

I can see Linus's point of view, but it seems sad anyway, as it allows all
sorts of values for somthing that should only be true or false.

julia

>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h   |  4 ++--
>  drivers/staging/wilc1000/host_interface.h     |  8 ++++----
>  drivers/staging/wilc1000/wilc_wfi_netdevice.h | 10 +++++-----
>  3 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index b62acb447383..dbea5144395e 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -30,7 +30,7 @@
>  #define MAKE_WORD32(lsw, msw) ((((u32)(msw) << 16) & 0xFFFF0000) | (lsw))
>
>  struct rssi_history_buffer {
> -	bool full;
> +	u8 full;
>  	u8 index;
>  	s8 samples[NUM_RSSI];
>  };
> @@ -46,7 +46,7 @@ struct network_info {
>  	u8 ch;
>  	unsigned long time_scan_cached;
>  	unsigned long time_scan;
> -	bool new_network;
> +	u8 new_network;
>  	u8 found;
>  	u32 tsf_lo;
>  	u8 *ies;
> diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
> index 84866a62a4d4..f76dc682f882 100644
> --- a/drivers/staging/wilc1000/host_interface.h
> +++ b/drivers/staging/wilc1000/host_interface.h
> @@ -217,7 +217,7 @@ struct user_conn_req {
>  	u8 *ies;
>  	size_t ies_len;
>  	wilc_connect_result conn_result;
> -	bool ht_capable;
> +	u8 ht_capable;
>  	void *arg;
>  };
>
> @@ -252,7 +252,7 @@ struct remain_ch {
>  };
>
>  struct reg_frame {
> -	bool reg;
> +	u8 reg;
>  	u16 frame_type;
>  	u8 reg_id;
>  };
> @@ -282,7 +282,7 @@ struct host_if_drv {
>  	struct timer_list remain_on_ch_timer;
>  	struct wilc_vif *remain_on_ch_timer_vif;
>
> -	bool ifc_up;
> +	u8 ifc_up;
>  	int driver_handler_id;
>  };
>
> @@ -291,7 +291,7 @@ struct add_sta_param {
>  	u16 aid;
>  	u8 rates_len;
>  	const u8 *rates;
> -	bool ht_supported;
> +	u8 ht_supported;
>  	struct ieee80211_ht_cap ht_capa;
>  	u16 flags_mask;
>  	u16 flags_set;
> diff --git a/drivers/staging/wilc1000/wilc_wfi_netdevice.h b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
> index b7eee772f3fe..347b35ceead4 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_netdevice.h
> +++ b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
> @@ -75,7 +75,7 @@ struct wilc_priv {
>  	struct wilc_wfi_p2p_listen_params remain_on_ch_params;
>  	u64 tx_cookie;
>
> -	bool cfg_scanning;
> +	u8 cfg_scanning;
>  	u32 rcvd_ch_cnt;
>
>  	u8 associated_bss[ETH_ALEN];
> @@ -93,13 +93,13 @@ struct wilc_priv {
>  	u8 wilc_groupkey;
>  	/* mutexes */
>  	struct mutex scan_req_lock;
> -	bool p2p_listen_state;
> +	u8 p2p_listen_state;
>
>  };
>
>  struct frame_reg {
>  	u16 type;
> -	bool reg;
> +	u8 reg;
>  };
>
>  struct wilc_vif {
> @@ -123,7 +123,7 @@ struct wilc {
>  	int io_type;
>  	int mac_status;
>  	struct gpio_desc *gpio_irq;
> -	bool initialized;
> +	u8 initialized;
>  	int dev_irq_num;
>  	int close;
>  	u8 vif_num;
> @@ -163,7 +163,7 @@ struct wilc {
>  	const struct firmware *firmware;
>
>  	struct device *dev;
> -	bool suspend_event;
> +	u8 suspend_event;
>
>  	struct rf_info dummy_statistics;
>  };
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e409baf10c6cc043344f1a63712d661611953973.1539182155.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>


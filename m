X-GM-THRID: 6754188364413403136
X-Received: by 2002:a17:906:5015:: with SMTP id s21mr8096865ejj.226.1572593574265;
        Fri, 01 Nov 2019 00:32:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f092:: with SMTP id v18ls803573edl.9.gmail; Fri, 01 Nov
 2019 00:32:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0e4/gPm+SaqeWH74nAE/LJvEZv+u5FrHlkc/KrgmO09H8xbIriZAdpm89Eqly1XP+T8SC
X-Received: by 2002:aa7:c590:: with SMTP id g16mr11023262edq.292.1572593573241;
        Fri, 01 Nov 2019 00:32:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572593573; cv=none;
        d=google.com; s=arc-20160816;
        b=kBATiO7WKo66liI/THhhOOHeAQuGb6A7hK/sA0wQlPOZrtXRxvr1a7IlqCm08uqWPb
         dPMwdCfPezwQQ6iBbez+topNZV8S2+KGyHooHwOILN1EPjvZ5xRUqjYzAWPSIXAYVhlf
         qNRrZNPAM3PQ+kZn0/vqLLLy2iZepFC1mDGplkv5HXJoP74Kwqb6b/Bq8sch80cFFXVs
         D5uRRhFdebv34lCt0LGyOu7BbMkNnuwamhvWZ3fiv+9LRUJ7eUuhXBCiI60RZaZk7ly7
         yoRzwwfdDnX0ZJhphNkg66vWUYTRmzicGYQyqyfKahi6B+BB4iTCtFd994F8KvOACEkA
         eVKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fAbsL7MKGYheg3t7sB4oyJsPA/ZOv5l+Kaa0oka4W54=;
        b=WiqrQkJ1scw26H9zDIHsdNXVRl7zMYdw2hAOUM8kPz1yKzluHq2I34P+7hj4tiAQGt
         f0URWLibaIjKsr8UzOmtEMkYrBS3gnTEnWRqkY3BzKVnAkno7jrmLvonBadFy0VSntM1
         xUroL2BXB/kqz5J8A9lZBvbZSdb+ZiJGI5nUdBRY5+dmqEdz/9jq4u2JJDnB3YELhco1
         Xy52mlz12ALu3uxByOCIY2MUguaY8pt4P91nl7Y+zhk0qNFWA2ax5rbb1ihMsGdFeC2l
         5Nov9XicLWiODvChKKVOQkc0rjsT95xoHvxbYVzXImbD3MRFOfTCXmYn9+kQ9TNEtGJU
         L5hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c31si468662edb.0.2019.11.01.00.32.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 00:32:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,254,1569276000"; 
   d="scan'208";a="325305952"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Nov 2019 08:32:52 +0100
Date: Fri, 1 Nov 2019 08:32:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org, 
    Forest Bond <forest@alittletooquiet.net>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: vt6655: Fix parameters
 alignment issues
In-Reply-To: <5a5fc17ab55b41928df8c6097ca57ad4ae4fbfed.1572581578.git.frank@generalsoftwareinc.com>
Message-ID: <alpine.DEB.2.21.1911010831480.2883@hadrien>
References: <cover.1572581578.git.frank@generalsoftwareinc.com> <5a5fc17ab55b41928df8c6097ca57ad4ae4fbfed.1572581578.git.frank@generalsoftwareinc.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Nov 2019, Frank A. Cancio Bello wrote:

> checkpatch message:
> CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
>
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
>  drivers/staging/vt6655/card.h        | 2 +-
>  drivers/staging/vt6655/device_main.c | 8 +++++---
>  drivers/staging/vt6655/rxtx.c        | 5 +++--
>  3 files changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> index 887c1692e05b..25867cb9d13d 100644
> --- a/drivers/staging/vt6655/card.h
> +++ b/drivers/staging/vt6655/card.h
> @@ -45,7 +45,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
>  void CARDvUpdateBasicTopRate(struct vnt_private *priv);
>  bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
>  void CARDvSetLoopbackMode(struct vnt_private *priv,
> -			   unsigned short wLoopbackMode);
> +			  unsigned short wLoopbackMode);
>  bool CARDbSoftwareReset(struct vnt_private *priv);
>  void CARDvSetFirstNextTBTT(struct vnt_private *priv,
>  			   unsigned short wBeaconInterval);
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 082302944c37..ab7b690c622d 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -133,7 +133,8 @@ static int device_init_td1_ring(struct vnt_private *priv);
>  static int  device_rx_srv(struct vnt_private *priv, unsigned int idx);
>  static int  device_tx_srv(struct vnt_private *priv, unsigned int idx);
>  static bool device_alloc_rx_buf(struct vnt_private *, struct vnt_rx_desc *);
> -static void device_free_rx_buf(struct vnt_private *priv, struct vnt_rx_desc *rd);
> +static void device_free_rx_buf(struct vnt_private *priv,
> +			       struct vnt_rx_desc *rd);
>  static void device_init_registers(struct vnt_private *priv);
>  static void device_free_tx_buf(struct vnt_private *, struct vnt_tx_desc *);
>  static void device_free_td0_ring(struct vnt_private *priv);
> @@ -295,7 +296,8 @@ static void device_init_registers(struct vnt_private *priv)
>  	/* Get Desire Power Value */
>  	priv->byCurPwr = 0xFF;
>  	priv->byCCKPwr = SROMbyReadEmbedded(priv->PortOffset, EEP_OFS_PWR_CCK);
> -	priv->byOFDMPwrG = SROMbyReadEmbedded(priv->PortOffset, EEP_OFS_PWR_OFDMG);
> +	priv->byOFDMPwrG = SROMbyReadEmbedded(priv->PortOffset,
> +					      EEP_OFS_PWR_OFDMG);

The change here seems to be an 80 column issue, not what was mentioned in
the commit log.

julia

>
>  	/* Load power Table */
>  	for (ii = 0; ii < CB_MAX_CHANNEL_24G; ii++) {
> @@ -373,7 +375,7 @@ static void device_init_registers(struct vnt_private *priv)
>  	priv->bRadioOff = false;
>
>  	priv->byRadioCtl = SROMbyReadEmbedded(priv->PortOffset,
> -						 EEP_OFS_RADIOCTL);
> +					      EEP_OFS_RADIOCTL);
>  	priv->bHWRadioOff = false;
>
>  	if (priv->byRadioCtl & EEP_RADIOCTL_ENABLE) {
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index a14908895b9e..37fcc42ed000 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -1289,7 +1289,7 @@ int vnt_generate_fifo_header(struct vnt_private *priv, u32 dma_idx,
>
>  	current_rate = rate->hw_value;
>  	if (priv->wCurrentRate != current_rate &&
> -			!(priv->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)) {
> +	    !(priv->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)) {
>  		priv->wCurrentRate = current_rate;
>
>  		RFbSetPower(priv, priv->wCurrentRate,
> @@ -1396,7 +1396,8 @@ int vnt_generate_fifo_header(struct vnt_private *priv, u32 dma_idx,
>  		tx_key = info->control.hw_key;
>  		if (tx_key->keylen > 0)
>  			vnt_fill_txkey(hdr, tx_buffer_head->tx_key,
> -				tx_key, skb, tx_body_size, td_info->mic_hdr);
> +				       tx_key, skb, tx_body_size,
> +				       td_info->mic_hdr);
>  	}
>
>  	return 0;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5a5fc17ab55b41928df8c6097ca57ad4ae4fbfed.1572581578.git.frank%40generalsoftwareinc.com.
>


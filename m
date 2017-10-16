X-GM-THRID: 6477544069099683840
X-Received: by 10.46.86.156 with SMTP id k28mr230524lje.22.1508187980066;
        Mon, 16 Oct 2017 14:06:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.148 with SMTP id u142ls1875235lja.16.gmail; Mon, 16 Oct
 2017 14:06:18 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QZCEBvGxoe+HTKgznV11+fEkGSeTuruF9CsKEsWjbLB/gnCnoLneXsqCcinwHaR2LSLxvA
X-Received: by 10.46.43.4 with SMTP id q4mr346619lje.13.1508187978738;
        Mon, 16 Oct 2017 14:06:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508187978; cv=none;
        d=google.com; s=arc-20160816;
        b=C+TdsNP3axWW+YQSzulba3HepC5D7MspCdOMb6ISqGzeyilLO5lanh03D3uOHYcwPV
         M3wrQEIXSCRAAyRcRf+RNRZ3YlqqwVxwBdJL+oTunD+BkQEGfnnCDDE43uxT8WNop29u
         NFJRfEbtgDU0TsHGrfn+qTpZdPaoRbNmh8sYnunMgPiwiFxDTgGqR/TgdJZRoB4ZBTmi
         as6RxRqIZ5xHCDvGZy63nerUWT1fz5wmd2FgaiR0RQlz3jvdpjPFkLeDu93F9ccrVYJ8
         tKzK3ryWnlhiEq9qADKUTRPRlPhnIlGHlszB5VbFjsgydyRZ+9Md9izEmEB3ShyBHRJR
         8GYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=fnJaJlXtRayPJAUVSaOhABgPGcF7WrggCyKipl8izaE=;
        b=T6ERO8B3wVkSbOBlOiGHHu/Uf7vB9zTvIIe1v0CZxp7tosURSQWf2g9DIevPo9SZ7i
         u7TORZNrbQegW4xh2K4m4Duh0dWFG7UWkMqoiBizwRZ37vvCo0vC9tnA4ph/Z/A62UwZ
         K3xxuDqcdUf1i4Yakgst0AMe9EdAtq7BOyiG8Lk9lxat014j1U8j4jn7/g7dXh7VGgLf
         iVvCqfgIxsQ7zNN5HEosEL3fDrvJ1hdZ5dnKP0jN8X6xeGpPYScaleCKDjg/V2WdNwvs
         vbKl+a8EIPKYLZmMnzlpD9ADp1JnFlt5iudFpni3W8A443Q6xb3wBpOjkRaXv3yeQBki
         xI5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 72si219882ljf.5.2017.10.16.14.06.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 14:06:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,388,1503352800"; 
   d="scan'208";a="241227104"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2017 23:06:17 +0200
Date: Mon, 16 Oct 2017 23:06:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: pablo@netfilter.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: net: netlogic: Fix alignment issue
In-Reply-To: <20171016161909.GA2135@ubuntu-server-1604>
Message-ID: <alpine.DEB.2.20.1710162305060.25741@hadrien>
References: <20171016161909.GA2135@ubuntu-server-1604>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 16 Oct 2017, Frank A. Cancio Bello wrote:

> checkpatch message: 'CHECK: Alignment should match open parenthesis'
>
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
> RFC:
> 	* I'm leaving without a fix the following checkpatch issue: 'CHECK: Alignment should match open parenthesis' '#395: FILE: drivers/staging/netlogic/xlr_net.c:395:'. The reason is that to get fixed the line would have to reach the 89 characters long. Is OK to leave it like that to avoid a long line?
>
> 	* I see parameters like 'MAX_FRIN_SPILL * sizeof(u64)' split into two lines, putting a newline character after the '*', e.g. lines #454 and #455 of file 'drivers/staging/netlogic/xlr_net.c'. I think that is more clear to write that kind of parameters in one line instead of two. Is OK if I create another patch to fix cases like this in that file?

Maybe this would all look nicer with the function name on the next line,
indented with a tab.

It would be good to get the multiplications in the second half of the
patch onto a single line.

If you send two patches on the same file, then they should be in a series.

julia


>
>  drivers/staging/netlogic/xlr_net.c | 88 +++++++++++++++++++-------------------
>  1 file changed, 44 insertions(+), 44 deletions(-)
>
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index e05ae46..58513e8 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -364,39 +364,39 @@ static void xlr_stats(struct net_device *ndev, struct rtnl_link_stats64 *stats)
>  	stats->tx_bytes = xlr_nae_rdreg(priv->base_addr, TX_BYTE_COUNTER);
>  	stats->tx_errors = xlr_nae_rdreg(priv->base_addr, TX_FCS_ERROR_COUNTER);
>  	stats->rx_dropped = xlr_nae_rdreg(priv->base_addr,
> -			RX_DROP_PACKET_COUNTER);
> +					  RX_DROP_PACKET_COUNTER);
>  	stats->tx_dropped = xlr_nae_rdreg(priv->base_addr,
> -			TX_DROP_FRAME_COUNTER);
> +					  TX_DROP_FRAME_COUNTER);
>
>  	stats->multicast = xlr_nae_rdreg(priv->base_addr,
> -			RX_MULTICAST_PACKET_COUNTER);
> +					 RX_MULTICAST_PACKET_COUNTER);
>  	stats->collisions = xlr_nae_rdreg(priv->base_addr,
> -			TX_TOTAL_COLLISION_COUNTER);
> +					  TX_TOTAL_COLLISION_COUNTER);
>
>  	stats->rx_length_errors = xlr_nae_rdreg(priv->base_addr,
> -			RX_FRAME_LENGTH_ERROR_COUNTER);
> +						RX_FRAME_LENGTH_ERROR_COUNTER);
>  	stats->rx_over_errors = xlr_nae_rdreg(priv->base_addr,
> -			RX_DROP_PACKET_COUNTER);
> +					      RX_DROP_PACKET_COUNTER);
>  	stats->rx_crc_errors = xlr_nae_rdreg(priv->base_addr,
> -			RX_FCS_ERROR_COUNTER);
> +					     RX_FCS_ERROR_COUNTER);
>  	stats->rx_frame_errors = xlr_nae_rdreg(priv->base_addr,
> -			RX_ALIGNMENT_ERROR_COUNTER);
> +					       RX_ALIGNMENT_ERROR_COUNTER);
>
>  	stats->rx_fifo_errors = xlr_nae_rdreg(priv->base_addr,
> -			RX_DROP_PACKET_COUNTER);
> +					      RX_DROP_PACKET_COUNTER);
>  	stats->rx_missed_errors = xlr_nae_rdreg(priv->base_addr,
> -			RX_CARRIER_SENSE_ERROR_COUNTER);
> +						RX_CARRIER_SENSE_ERROR_COUNTER);
>
>  	stats->rx_errors = (stats->rx_over_errors + stats->rx_crc_errors +
> -			stats->rx_frame_errors + stats->rx_fifo_errors +
> -			stats->rx_missed_errors);
> +			    stats->rx_frame_errors + stats->rx_fifo_errors +
> +			    stats->rx_missed_errors);
>
>  	stats->tx_aborted_errors = xlr_nae_rdreg(priv->base_addr,
>  			TX_EXCESSIVE_COLLISION_PACKET_COUNTER);
>  	stats->tx_carrier_errors = xlr_nae_rdreg(priv->base_addr,
> -			TX_DROP_FRAME_COUNTER);
> +						 TX_DROP_FRAME_COUNTER);
>  	stats->tx_fifo_errors = xlr_nae_rdreg(priv->base_addr,
> -			TX_DROP_FRAME_COUNTER);
> +					      TX_DROP_FRAME_COUNTER);
>  }
>
>  static const struct net_device_ops xlr_netdev_ops = {
> @@ -448,41 +448,41 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
>  static void xlr_config_fifo_spill_area(struct xlr_net_priv *priv)
>  {
>  	priv->frin_spill = xlr_config_spill(priv,
> -			R_REG_FRIN_SPILL_MEM_START_0,
> -			R_REG_FRIN_SPILL_MEM_START_1,
> -			R_REG_FRIN_SPILL_MEM_SIZE,
> -			MAX_FRIN_SPILL *
> -			sizeof(u64));
> +					    R_REG_FRIN_SPILL_MEM_START_0,
> +					    R_REG_FRIN_SPILL_MEM_START_1,
> +					    R_REG_FRIN_SPILL_MEM_SIZE,
> +					    MAX_FRIN_SPILL *
> +					    sizeof(u64));
>  	priv->frout_spill = xlr_config_spill(priv,
> -			R_FROUT_SPILL_MEM_START_0,
> -			R_FROUT_SPILL_MEM_START_1,
> -			R_FROUT_SPILL_MEM_SIZE,
> -			MAX_FROUT_SPILL *
> -			sizeof(u64));
> +					     R_FROUT_SPILL_MEM_START_0,
> +					     R_FROUT_SPILL_MEM_START_1,
> +					     R_FROUT_SPILL_MEM_SIZE,
> +					     MAX_FROUT_SPILL *
> +					     sizeof(u64));
>  	priv->class_0_spill = xlr_config_spill(priv,
> -			R_CLASS0_SPILL_MEM_START_0,
> -			R_CLASS0_SPILL_MEM_START_1,
> -			R_CLASS0_SPILL_MEM_SIZE,
> -			MAX_CLASS_0_SPILL *
> -			sizeof(u64));
> +					       R_CLASS0_SPILL_MEM_START_0,
> +					       R_CLASS0_SPILL_MEM_START_1,
> +					       R_CLASS0_SPILL_MEM_SIZE,
> +					       MAX_CLASS_0_SPILL *
> +					       sizeof(u64));
>  	priv->class_1_spill = xlr_config_spill(priv,
> -			R_CLASS1_SPILL_MEM_START_0,
> -			R_CLASS1_SPILL_MEM_START_1,
> -			R_CLASS1_SPILL_MEM_SIZE,
> -			MAX_CLASS_1_SPILL *
> -			sizeof(u64));
> +					       R_CLASS1_SPILL_MEM_START_0,
> +					       R_CLASS1_SPILL_MEM_START_1,
> +					       R_CLASS1_SPILL_MEM_SIZE,
> +					       MAX_CLASS_1_SPILL *
> +					       sizeof(u64));
>  	priv->class_2_spill = xlr_config_spill(priv,
> -			R_CLASS2_SPILL_MEM_START_0,
> -			R_CLASS2_SPILL_MEM_START_1,
> -			R_CLASS2_SPILL_MEM_SIZE,
> -			MAX_CLASS_2_SPILL *
> -			sizeof(u64));
> +					       R_CLASS2_SPILL_MEM_START_0,
> +					       R_CLASS2_SPILL_MEM_START_1,
> +					       R_CLASS2_SPILL_MEM_SIZE,
> +					       MAX_CLASS_2_SPILL *
> +					       sizeof(u64));
>  	priv->class_3_spill = xlr_config_spill(priv,
> -			R_CLASS3_SPILL_MEM_START_0,
> -			R_CLASS3_SPILL_MEM_START_1,
> -			R_CLASS3_SPILL_MEM_SIZE,
> -			MAX_CLASS_3_SPILL *
> -			sizeof(u64));
> +					       R_CLASS3_SPILL_MEM_START_0,
> +					       R_CLASS3_SPILL_MEM_START_1,
> +					       R_CLASS3_SPILL_MEM_SIZE,
> +					       MAX_CLASS_3_SPILL *
> +					       sizeof(u64));
>  }
>
>  /*
> --
> 2.7.4
>
>


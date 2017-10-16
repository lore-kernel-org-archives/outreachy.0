X-GM-THRID: 6477544069099683840
X-Received: by 10.99.125.76 with SMTP id m12mr2458809pgn.123.1508170754502;
        Mon, 16 Oct 2017 09:19:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.241.72 with SMTP id u8ls3735295plm.6.gmail; Mon, 16 Oct
 2017 09:19:13 -0700 (PDT)
X-Received: by 10.98.89.82 with SMTP id n79mr2381288pfb.2.1508170753304;
        Mon, 16 Oct 2017 09:19:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508170753; cv=none;
        d=google.com; s=arc-20160816;
        b=e2gtDlkwoLRmnNPQlRq7bPRDriVv4Tmy8cffh8NOBLIgIxseInKT9YxUdwPzNKcm9l
         lkfuUId6z8YzHF7cYCAEFudvkHGgDy4IS+cVxSqqBkqtRcUNPAfqJybRTMcBm2tz5X8P
         jenHDMX4wbNS9ZfyuO7z2li7NpwZvfS7tfveQBTgDg7l6XSudwanBgp3aL1CJmA4+gLT
         yZHD0dRkZMCwPP3ss3tGMUPcCufvIYFScZJYezHFo+QGV5NQpDyoSpMk9ZfArpGsLpqx
         5jujxdoj4hEK4VbV5SEwfnmSu+ISBQTxFuaD+MsbA27xvkxvnb/KuhqXK/5ReP1gK8Gb
         SooA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=A9HzVKj8vwCxQn6RMk3UfXw36zD6OOywZ5zxRFG5nVg=;
        b=HX7MRP3jRn7CZdAoUcWcteqLt4Mk1aC38cVi2+Kbxp8mQj2l9yPh+gVF1Ck60gtYmm
         QSLmkeuA3UdJSw8WbPisHsOfoeXlBE0lXFSpPuq87fA/jubmzM4PGGRNWgA67kv3yrpc
         8Qb5je8tET8UviWgRqV4BqKJw2G8vAV6bfd9dHM9tXldWE3YYJBrblwFO1EOB0AC7D9m
         sWAEtvTG/nNfAgsX0AAdeYeaQoqODa1p629s93oiXA6YukOLNqYkIWsg8GSEKDcBu/0U
         YOb+g3tl7TmVpVuQCfb1urQZMVE2yfGDx7EnBqCdeX8LlaJUFwXsXlvHPXoVPaO62+a8
         1Hlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=X4TK7vQz;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22b as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x22b.google.com (mail-ua0-x22b.google.com. [2607:f8b0:400c:c08::22b])
        by gmr-mx.google.com with ESMTPS id f20si587253plj.0.2017.10.16.09.19.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 09:19:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22b as permitted sender) client-ip=2607:f8b0:400c:c08::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=X4TK7vQz;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22b as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x22b.google.com with SMTP id w45so10067018uac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 09:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=A9HzVKj8vwCxQn6RMk3UfXw36zD6OOywZ5zxRFG5nVg=;
        b=X4TK7vQz6GLjZqPJNjNGRR5oz/pJml8v/NrGl1uG2Kp4auKoEMDcVpvFZQGZx14Lav
         De1VfjeSl/0aha42xzdEbVP2VviiMzuBLGngxiXkpEgIs0iYFg/r0rGAyUcJADoj19ch
         X3ITd3WfgBryRb2aHiKCfJCqjPfGANsb8nQkwdiPickgt+36blvi6Y2ldIGoKv4wG2Ie
         VJNaiI9IHKHkRzBKNulggei33RqRzGxofK325/w+OMduzIxmAFNqZaf30hPpamoHmYE7
         psLKx95esB+Zuvx/Z7YMKTOIONNxjolTc58QDz1gvqGLwh9ds8Tmh9efRQFHwxRDuYRq
         8C+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=A9HzVKj8vwCxQn6RMk3UfXw36zD6OOywZ5zxRFG5nVg=;
        b=Zzdgi4X2BQFkbR2hv7l88GMbWMK5xXDRkq21T9vqFJHy/w9CThOXMT9fscKkDbqTMy
         usjUR8/xkfN+roQbcdUO1XhBrPqfHn7VUVYDvxuaP2L2zRfJfUe6DghhZ3lZCb1wsxmN
         6Rxx4Y5Qdxbw6j/tWx96OMSzxTfEmNnxys3bzBIR20lveNZuuJ191ryJLY8IVcRwPTv3
         Vnyju7C+05b8bQyomtp0ZUEieZ0XJmEoq5kQF8TJjncYwhgfa7QNQ0eW/q4mecl3j9kZ
         qA88aW0Pe9iw8kB32/oV3o2Sp+D+v6CmBGADD2RICm7ypgs9jhK82iFzexf+kpMfbHUN
         IUbA==
X-Gm-Message-State: AMCzsaXL4MOKF+vVs1zQegQ2zWrhG6X9O+fxWUdG00z7YAL1FWTiHyy2
	l3eAYBKi4lFNG+pKKGaNdKtJandF
X-Google-Smtp-Source: AOwi7QD4djUwFGUoQnFZnrw+rHPadZsGpOmBL5YLM2LI6uho74N4rGGu4YYkgUB2Umak0lPKxdkI+g==
X-Received: by 10.159.54.107 with SMTP id s40mr7879609uad.95.1508170752121;
        Mon, 16 Oct 2017 09:19:12 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.29.87])
        by smtp.gmail.com with ESMTPSA id f93sm2541741uaf.40.2017.10.16.09.19.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Oct 2017 09:19:11 -0700 (PDT)
Date: Mon, 16 Oct 2017 12:19:09 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: net: netlogic: Fix alignment issue
Message-ID: <20171016161909.GA2135@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

checkpatch message: 'CHECK: Alignment should match open parenthesis'

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
RFC:
	* I'm leaving without a fix the following checkpatch issue: 'CHECK: Alignment should match open parenthesis' '#395: FILE: drivers/staging/netlogic/xlr_net.c:395:'. The reason is that to get fixed the line would have to reach the 89 characters long. Is OK to leave it like that to avoid a long line?

	* I see parameters like 'MAX_FRIN_SPILL * sizeof(u64)' split into two lines, putting a newline character after the '*', e.g. lines #454 and #455 of file 'drivers/staging/netlogic/xlr_net.c'. I think that is more clear to write that kind of parameters in one line instead of two. Is OK if I create another patch to fix cases like this in that file?

 drivers/staging/netlogic/xlr_net.c | 88 +++++++++++++++++++-------------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index e05ae46..58513e8 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -364,39 +364,39 @@ static void xlr_stats(struct net_device *ndev, struct rtnl_link_stats64 *stats)
 	stats->tx_bytes = xlr_nae_rdreg(priv->base_addr, TX_BYTE_COUNTER);
 	stats->tx_errors = xlr_nae_rdreg(priv->base_addr, TX_FCS_ERROR_COUNTER);
 	stats->rx_dropped = xlr_nae_rdreg(priv->base_addr,
-			RX_DROP_PACKET_COUNTER);
+					  RX_DROP_PACKET_COUNTER);
 	stats->tx_dropped = xlr_nae_rdreg(priv->base_addr,
-			TX_DROP_FRAME_COUNTER);
+					  TX_DROP_FRAME_COUNTER);
 
 	stats->multicast = xlr_nae_rdreg(priv->base_addr,
-			RX_MULTICAST_PACKET_COUNTER);
+					 RX_MULTICAST_PACKET_COUNTER);
 	stats->collisions = xlr_nae_rdreg(priv->base_addr,
-			TX_TOTAL_COLLISION_COUNTER);
+					  TX_TOTAL_COLLISION_COUNTER);
 
 	stats->rx_length_errors = xlr_nae_rdreg(priv->base_addr,
-			RX_FRAME_LENGTH_ERROR_COUNTER);
+						RX_FRAME_LENGTH_ERROR_COUNTER);
 	stats->rx_over_errors = xlr_nae_rdreg(priv->base_addr,
-			RX_DROP_PACKET_COUNTER);
+					      RX_DROP_PACKET_COUNTER);
 	stats->rx_crc_errors = xlr_nae_rdreg(priv->base_addr,
-			RX_FCS_ERROR_COUNTER);
+					     RX_FCS_ERROR_COUNTER);
 	stats->rx_frame_errors = xlr_nae_rdreg(priv->base_addr,
-			RX_ALIGNMENT_ERROR_COUNTER);
+					       RX_ALIGNMENT_ERROR_COUNTER);
 
 	stats->rx_fifo_errors = xlr_nae_rdreg(priv->base_addr,
-			RX_DROP_PACKET_COUNTER);
+					      RX_DROP_PACKET_COUNTER);
 	stats->rx_missed_errors = xlr_nae_rdreg(priv->base_addr,
-			RX_CARRIER_SENSE_ERROR_COUNTER);
+						RX_CARRIER_SENSE_ERROR_COUNTER);
 
 	stats->rx_errors = (stats->rx_over_errors + stats->rx_crc_errors +
-			stats->rx_frame_errors + stats->rx_fifo_errors +
-			stats->rx_missed_errors);
+			    stats->rx_frame_errors + stats->rx_fifo_errors +
+			    stats->rx_missed_errors);
 
 	stats->tx_aborted_errors = xlr_nae_rdreg(priv->base_addr,
 			TX_EXCESSIVE_COLLISION_PACKET_COUNTER);
 	stats->tx_carrier_errors = xlr_nae_rdreg(priv->base_addr,
-			TX_DROP_FRAME_COUNTER);
+						 TX_DROP_FRAME_COUNTER);
 	stats->tx_fifo_errors = xlr_nae_rdreg(priv->base_addr,
-			TX_DROP_FRAME_COUNTER);
+					      TX_DROP_FRAME_COUNTER);
 }
 
 static const struct net_device_ops xlr_netdev_ops = {
@@ -448,41 +448,41 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
 static void xlr_config_fifo_spill_area(struct xlr_net_priv *priv)
 {
 	priv->frin_spill = xlr_config_spill(priv,
-			R_REG_FRIN_SPILL_MEM_START_0,
-			R_REG_FRIN_SPILL_MEM_START_1,
-			R_REG_FRIN_SPILL_MEM_SIZE,
-			MAX_FRIN_SPILL *
-			sizeof(u64));
+					    R_REG_FRIN_SPILL_MEM_START_0,
+					    R_REG_FRIN_SPILL_MEM_START_1,
+					    R_REG_FRIN_SPILL_MEM_SIZE,
+					    MAX_FRIN_SPILL *
+					    sizeof(u64));
 	priv->frout_spill = xlr_config_spill(priv,
-			R_FROUT_SPILL_MEM_START_0,
-			R_FROUT_SPILL_MEM_START_1,
-			R_FROUT_SPILL_MEM_SIZE,
-			MAX_FROUT_SPILL *
-			sizeof(u64));
+					     R_FROUT_SPILL_MEM_START_0,
+					     R_FROUT_SPILL_MEM_START_1,
+					     R_FROUT_SPILL_MEM_SIZE,
+					     MAX_FROUT_SPILL *
+					     sizeof(u64));
 	priv->class_0_spill = xlr_config_spill(priv,
-			R_CLASS0_SPILL_MEM_START_0,
-			R_CLASS0_SPILL_MEM_START_1,
-			R_CLASS0_SPILL_MEM_SIZE,
-			MAX_CLASS_0_SPILL *
-			sizeof(u64));
+					       R_CLASS0_SPILL_MEM_START_0,
+					       R_CLASS0_SPILL_MEM_START_1,
+					       R_CLASS0_SPILL_MEM_SIZE,
+					       MAX_CLASS_0_SPILL *
+					       sizeof(u64));
 	priv->class_1_spill = xlr_config_spill(priv,
-			R_CLASS1_SPILL_MEM_START_0,
-			R_CLASS1_SPILL_MEM_START_1,
-			R_CLASS1_SPILL_MEM_SIZE,
-			MAX_CLASS_1_SPILL *
-			sizeof(u64));
+					       R_CLASS1_SPILL_MEM_START_0,
+					       R_CLASS1_SPILL_MEM_START_1,
+					       R_CLASS1_SPILL_MEM_SIZE,
+					       MAX_CLASS_1_SPILL *
+					       sizeof(u64));
 	priv->class_2_spill = xlr_config_spill(priv,
-			R_CLASS2_SPILL_MEM_START_0,
-			R_CLASS2_SPILL_MEM_START_1,
-			R_CLASS2_SPILL_MEM_SIZE,
-			MAX_CLASS_2_SPILL *
-			sizeof(u64));
+					       R_CLASS2_SPILL_MEM_START_0,
+					       R_CLASS2_SPILL_MEM_START_1,
+					       R_CLASS2_SPILL_MEM_SIZE,
+					       MAX_CLASS_2_SPILL *
+					       sizeof(u64));
 	priv->class_3_spill = xlr_config_spill(priv,
-			R_CLASS3_SPILL_MEM_START_0,
-			R_CLASS3_SPILL_MEM_START_1,
-			R_CLASS3_SPILL_MEM_SIZE,
-			MAX_CLASS_3_SPILL *
-			sizeof(u64));
+					       R_CLASS3_SPILL_MEM_START_0,
+					       R_CLASS3_SPILL_MEM_START_1,
+					       R_CLASS3_SPILL_MEM_SIZE,
+					       MAX_CLASS_3_SPILL *
+					       sizeof(u64));
 }
 
 /*
-- 
2.7.4



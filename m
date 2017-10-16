X-GM-THRID: 6477544069099683840
X-Received: by 10.37.101.132 with SMTP id z126mr6448788ybb.45.1508193736756;
        Mon, 16 Oct 2017 15:42:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.214.149 with SMTP id y143ls1015405ywd.23.gmail; Mon, 16 Oct
 2017 15:42:16 -0700 (PDT)
X-Received: by 10.129.164.148 with SMTP id b142mr6507549ywh.112.1508193735987;
        Mon, 16 Oct 2017 15:42:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508193735; cv=none;
        d=google.com; s=arc-20160816;
        b=ecSW1GBDuS2hU8D4pm+BScicukzlytBjob5lm+3UQVa7abRFtPQwK5ZnjE8GrdU03O
         D83hXgn8/KX66uUsQaCoy2HNAAu+nG7wkxWRMveqnbTEdJUqB2ptwuV+rvnaIgiO4aSj
         RSIOp8UblncAsFgYOLPNZ9YTnqUhW40M2T4Dsk1ApBLz6CcxrrgVCiiycSAHuCtU9pd5
         OKSs4+t9VcEn42tdZbsHW9LlctvtVNT8yefXUqRsOXlR+zkaxLBX94jdqhzOOrwodqQj
         jqGaKsmPRCh3bTuBFxL94vbcbKtnDRcrYDZx8qrQpBROP4Sr4o2+2KRkTi25pSQWpBxT
         aYEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:dkim-signature:arc-authentication-results;
        bh=7Wu7iu0MLFYJIsLlt2zRnp99j8FaFbf3kLFA4p9rVhE=;
        b=qK9qKKyZp62vYwCpXFHKkbK3bDJm5WSaITtBi83TbokXWwjK8ubG0rrXWXZufMr/EU
         0G5jFtWWnV6ixc4+7u29DXp9/gSblErSASikv2XuPOPgGylvnJTJvl8AME3A06hDcWdi
         ZNGY98JeYOjnO2UKpXWIJyJp7OtEPmuqWrMV65kkjF2AhTfDpNEX6B4w6APDR4565mGj
         7PFFHC0GSxSJikqbR7HJR+thqlUb29YQ1XMU2M9HHaGgxIhubRnKwBxrpSXTlmVGfcU8
         RANKP8vDGdaLczBhrPDFHbLZ46vkDYKB3F2Jg1clRq9y8ND0kUAkLez0XSDXV0dGBMUt
         fjbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=C2DFfSZC;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::232 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x232.google.com (mail-ua0-x232.google.com. [2607:f8b0:400c:c08::232])
        by gmr-mx.google.com with ESMTPS id g2si369462ywa.2.2017.10.16.15.42.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 15:42:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::232 as permitted sender) client-ip=2607:f8b0:400c:c08::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=C2DFfSZC;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::232 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x232.google.com with SMTP id v27so10772743uav.7
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 15:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=7Wu7iu0MLFYJIsLlt2zRnp99j8FaFbf3kLFA4p9rVhE=;
        b=C2DFfSZCCohYK/MwFjYOTBfCHp3VCm/ShSRtCLQKEUAmQ9Q2PTMa/CNlguP0Vrer8Y
         UuP+ZKNLKJTd/fHTOI/OeIhq3TrhNYjjgMVd23eI/0jLfsK9CjV3A0gChwUUuFMH1nJK
         l0KHJ7kJ2xtzkVeZxjXiwsHenWOfusD0HAFFCcVIQ0fuJzUmIKTmdAzmiJk6pJFBZvx9
         BnYZ07IHHg8OBNDspshUernhJj0a56KgNVTWS5RnrWoixKdh3jw+meaj4J6ylKNC8b0s
         iRaFTkwHlQkSYzBsitpmXBAmYLxqIPpoWqijHcpix47K24QD2sZB5szimaQ1pEUSvrBm
         q/0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7Wu7iu0MLFYJIsLlt2zRnp99j8FaFbf3kLFA4p9rVhE=;
        b=VpTn07pU44vVhtmxUsKMXHp18rA0ohyI6MyN4S5vrZtZ8KHoBYtNx6ne8SPrgVN3fr
         YxnnmNeRPAGirrK/MHSgB2VlfJGAinIkdaVQl+NvEKgMuDn3EWhvux5VIYt1/nNAvRwO
         4Zu91OpDvTzg25g/bWaML0idgK777JRPMb9+E12oseNnT0eaquxTBhIN0Sa459cPtgba
         0P4nuQP9tcAS40EtT1HtsTcxtmFuku/Zyew+NJSEv3HcmhN1Rpj6h8PZtoDEwRusym1I
         sgAsf0flYAHuqohZIbXioQX2R0FTAsUr8ow6/inXqHTMYbfeHzkoSqxMczh6qm554yl/
         fU3Q==
X-Gm-Message-State: AMCzsaW0MbCAfPpWACnx8gjTGJW0uSyGwsjgoayqrkPcJpide5jiczYM
	ZLfzj39Op6kcDarD+hJXd1BCEREa
X-Google-Smtp-Source: AOwi7QAMofx8HynPg9GaCprGLHT2oNoibjKA+l0bPdvHoO5He/MJGT23qJehTLt8ZgjDlDvDLDHJUw==
X-Received: by 10.159.52.104 with SMTP id s40mr9434259uab.181.1508193735230;
        Mon, 16 Oct 2017 15:42:15 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id k136sm1815721vke.24.2017.10.16.15.42.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Oct 2017 15:42:14 -0700 (PDT)
Date: Mon, 16 Oct 2017 18:42:12 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: net: netlogic: Fix alignment issue
Message-ID: <20171016224212.GA2522@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171016161909.GA2135@ubuntu-server-1604>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix alignment to match open parenthesis and comply in that way with the
preferred coding style for the linux kernel.

Credits to 'checkpatch'. The 'checkpatch' message was:
'CHECK: Alignment should match open parenthesis'

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
Julia, about: 'Maybe this would all look nicer with the function name on the next line, indented with a tab.'
I tried several combinations, but all of them or seem 'uglier' to me or well pass the 80 characters limit.

Changes in v2:
	* Rewrite the log message to improve the style taking in consideration Julia's suggestions in another patch I sent.

	* Put the multiplications in the second half of the patch onto a single line.

 drivers/staging/netlogic/xlr_net.c | 82 ++++++++++++++++++--------------------
 1 file changed, 38 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index e05ae46..30532d8 100644
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
@@ -448,41 +448,35 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
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
+					    MAX_FRIN_SPILL * sizeof(u64));
 	priv->frout_spill = xlr_config_spill(priv,
-			R_FROUT_SPILL_MEM_START_0,
-			R_FROUT_SPILL_MEM_START_1,
-			R_FROUT_SPILL_MEM_SIZE,
-			MAX_FROUT_SPILL *
-			sizeof(u64));
+					     R_FROUT_SPILL_MEM_START_0,
+					     R_FROUT_SPILL_MEM_START_1,
+					     R_FROUT_SPILL_MEM_SIZE,
+					     MAX_FROUT_SPILL * sizeof(u64));
 	priv->class_0_spill = xlr_config_spill(priv,
-			R_CLASS0_SPILL_MEM_START_0,
-			R_CLASS0_SPILL_MEM_START_1,
-			R_CLASS0_SPILL_MEM_SIZE,
-			MAX_CLASS_0_SPILL *
-			sizeof(u64));
+					       R_CLASS0_SPILL_MEM_START_0,
+					       R_CLASS0_SPILL_MEM_START_1,
+					       R_CLASS0_SPILL_MEM_SIZE,
+					       MAX_CLASS_0_SPILL * sizeof(u64));
 	priv->class_1_spill = xlr_config_spill(priv,
-			R_CLASS1_SPILL_MEM_START_0,
-			R_CLASS1_SPILL_MEM_START_1,
-			R_CLASS1_SPILL_MEM_SIZE,
-			MAX_CLASS_1_SPILL *
-			sizeof(u64));
+					       R_CLASS1_SPILL_MEM_START_0,
+					       R_CLASS1_SPILL_MEM_START_1,
+					       R_CLASS1_SPILL_MEM_SIZE,
+					       MAX_CLASS_1_SPILL * sizeof(u64));
 	priv->class_2_spill = xlr_config_spill(priv,
-			R_CLASS2_SPILL_MEM_START_0,
-			R_CLASS2_SPILL_MEM_START_1,
-			R_CLASS2_SPILL_MEM_SIZE,
-			MAX_CLASS_2_SPILL *
-			sizeof(u64));
+					       R_CLASS2_SPILL_MEM_START_0,
+					       R_CLASS2_SPILL_MEM_START_1,
+					       R_CLASS2_SPILL_MEM_SIZE,
+					       MAX_CLASS_2_SPILL * sizeof(u64));
 	priv->class_3_spill = xlr_config_spill(priv,
-			R_CLASS3_SPILL_MEM_START_0,
-			R_CLASS3_SPILL_MEM_START_1,
-			R_CLASS3_SPILL_MEM_SIZE,
-			MAX_CLASS_3_SPILL *
-			sizeof(u64));
+					       R_CLASS3_SPILL_MEM_START_0,
+					       R_CLASS3_SPILL_MEM_START_1,
+					       R_CLASS3_SPILL_MEM_SIZE,
+					       MAX_CLASS_3_SPILL * sizeof(u64));
 }
 
 /*
-- 
2.7.4



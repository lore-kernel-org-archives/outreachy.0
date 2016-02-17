X-GM-THRID: 6251650339458514944
X-Received: by 10.112.167.136 with SMTP id zo8mr49894lbb.10.1455698799569;
        Wed, 17 Feb 2016 00:46:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.195 with SMTP id u186ls389042wmd.6.gmail; Wed, 17 Feb
 2016 00:46:39 -0800 (PST)
X-Received: by 10.28.45.82 with SMTP id t79mr2526376wmt.2.1455698799047;
        Wed, 17 Feb 2016 00:46:39 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id 141si90171wmy.2.2016.02.17.00.46.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 00:46:39 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id a4so16980140wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 00:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=01S2NoZmogmYYthdCigS7/V4NTYYX+ajYpWC+yC8z3w=;
        b=q8O/1mJ7DwUyWzT8HlZPCydjO15Srswj9OBe0CBMWptRZqWDczUDdZJWlkXuddsQln
         Kd4q3z1YxcLYwKVBUGcTAVPpcjJUUa8vQTBPMfZLEDFUA51xunUgBr0NM+LunDoA9PDN
         O3tIgQ2Yd86co7uvhLDbgK8KO0pRNLLJIzMF6QhSCjBEt0FNPEYcjsnTPa1AksID4QTh
         /UQynXxbQS33k3sSs6YZDT66z+/RaSwA5kaEruvTxU85GoQKDxm/bHap+3Jlzrzik+yX
         Hmr1zKxT67g3aw5VFPZ3109oLTfJ+xkC8HhLxLsVJBDOSPMPf3dGZDcyT4Z8ykWwQLKT
         gU3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=01S2NoZmogmYYthdCigS7/V4NTYYX+ajYpWC+yC8z3w=;
        b=abFfaDwsB+R1ToJGIn29ONakEYJkQNCYpxPNzifkcIffKB/QbUSjTq8U7hwTnAy0oN
         aaviochBpyvOKZg/5bNN09XeEXSY1Gt+SgXGRUGfJm41Awan2qR3o7r1ETH6j4sPstcb
         PIxFp4N1xlkR+4sZc07oMbg+ISCUdzmwvr1LP0ehBkC/SpYysVd9qCeM0LeH6RqQC5ZV
         e8dQAj9/kvQS9mZleDXRcVG1ODiJRdAc6e2p7iUez2v7DLpP+EF+sLV502rggQupZ5tY
         kReUhfroiSBjZfRFWSemlxEuFNgbsCidarRPLfg49Vgl+MGD4kRJmuDRdnZu8csXlLdA
         +E2w==
X-Gm-Message-State: AG10YOSAktMLknKTv+dyX+I3lWAtc7uMnOfjjz1Ft3GDk1ZqLtg/R+RWodWcIpfnieUB4A==
X-Received: by 10.194.90.172 with SMTP id bx12mr457259wjb.128.1455698798933;
        Wed, 17 Feb 2016 00:46:38 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.164])
        by smtp.gmail.com with ESMTPSA id bg1sm343425wjc.27.2016.02.17.00.46.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 00:46:37 -0800 (PST)
Date: Wed, 17 Feb 2016 09:46:35 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/7] staging: netlogic: Fix several parentheses alignments
Message-ID: <3fbe78736f5a434592b72a187c93108937a6004c.1455698124.git.nevola@gmail.com>
References: <cover.1455698124.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455698124.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Align arguments with the open parenthesis. Checkpatch found these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/platform_net.c |   6 +-
 drivers/staging/netlogic/xlr_net.c      | 155 ++++++++++++++++----------------
 2 files changed, 82 insertions(+), 79 deletions(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index 9b52154..abf4c71 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -170,7 +170,7 @@ static void xls_gmac_init(void)
 		xlr_net_dev0.num_resources = 2;
 
 		xlr_resource_init(&xlr_net0_res[0], xlr_gmac_offsets[0],
-				xlr_gmac_irqs[0]);
+				  xlr_gmac_irqs[0]);
 		platform_device_register(&xlr_net_dev0);
 
 		/* second block is XAUI, not supported yet */
@@ -183,7 +183,7 @@ static void xls_gmac_init(void)
 			ndata0.phy_addr[mac] = mac + 0x10;
 
 			xlr_resource_init(&xlr_net0_res[mac * 2],
-					xlr_gmac_offsets[mac],
+					  xlr_gmac_offsets[mac],
 					xlr_gmac_irqs[mac]);
 		}
 		xlr_net_dev0.num_resources = 8;
@@ -223,7 +223,7 @@ static void xlr_gmac_init(void)
 		ndata0.tx_stnid[mac] = FMN_STNID_GMAC0_TX0 + mac;
 		ndata0.phy_addr[mac] = mac;
 		xlr_resource_init(&xlr_net0_res[mac * 2], xlr_gmac_offsets[mac],
-				xlr_gmac_irqs[mac]);
+				  xlr_gmac_irqs[mac]);
 	}
 	xlr_net_dev0.num_resources = 8;
 	xlr_net_dev0.resource = xlr_net0_res;
diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 0b4e819..59fbaba 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -69,8 +69,7 @@ static inline u32 xlr_nae_rdreg(u32 __iomem *base, unsigned int reg)
 	return __raw_readl(base + reg);
 }
 
-static inline void xlr_reg_update(u32 *base_addr,
-		u32 off, u32 val, u32 mask)
+static inline void xlr_reg_update(u32 *base_addr, u32 off, u32 val, u32 mask)
 {
 	u32 tmp;
 
@@ -122,8 +121,8 @@ static inline unsigned char *xlr_alloc_skb(void)
 	return skb->data;
 }
 
-static void xlr_net_fmn_handler(int bkt, int src_stnid, int size,
-		int code, struct nlm_fmn_msg *msg, void *arg)
+static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
+				struct nlm_fmn_msg *msg, void *arg)
 {
 	struct sk_buff *skb;
 	void *skb_data = NULL;
@@ -252,7 +251,7 @@ static int xlr_net_stop(struct net_device *ndev)
 }
 
 static void xlr_make_tx_desc(struct nlm_fmn_msg *msg, unsigned long addr,
-		struct sk_buff *skb)
+			     struct sk_buff *skb)
 {
 	unsigned long physkb = virt_to_phys(skb);
 	int cpu_core = nlm_core_id();
@@ -280,7 +279,7 @@ static void __maybe_unused xlr_wakeup_queue(unsigned long dev)
 }
 
 static netdev_tx_t xlr_net_start_xmit(struct sk_buff *skb,
-		struct net_device *ndev)
+				      struct net_device *ndev)
 {
 	struct nlm_fmn_msg msg;
 	struct xlr_net_priv *priv = netdev_priv(ndev);
@@ -309,10 +308,10 @@ static void xlr_hw_set_mac_addr(struct net_device *ndev)
 
 	/* set mac station address */
 	xlr_nae_wreg(priv->base_addr, R_MAC_ADDR0,
-		((ndev->dev_addr[5] << 24) | (ndev->dev_addr[4] << 16) |
-		(ndev->dev_addr[3] << 8) | (ndev->dev_addr[2])));
+		     ((ndev->dev_addr[5] << 24) | (ndev->dev_addr[4] << 16) |
+		     (ndev->dev_addr[3] << 8) | (ndev->dev_addr[2])));
 	xlr_nae_wreg(priv->base_addr, R_MAC_ADDR0 + 1,
-		((ndev->dev_addr[1] << 24) | (ndev->dev_addr[0] << 16)));
+		     ((ndev->dev_addr[1] << 24) | (ndev->dev_addr[0] << 16)));
 
 	xlr_nae_wreg(priv->base_addr, R_MAC_ADDR_MASK2, 0xffffffff);
 	xlr_nae_wreg(priv->base_addr, R_MAC_ADDR_MASK2 + 1, 0xffffffff);
@@ -320,13 +319,13 @@ static void xlr_hw_set_mac_addr(struct net_device *ndev)
 	xlr_nae_wreg(priv->base_addr, R_MAC_ADDR_MASK3 + 1, 0xffffffff);
 
 	xlr_nae_wreg(priv->base_addr, R_MAC_FILTER_CONFIG,
-		(1 << O_MAC_FILTER_CONFIG__BROADCAST_EN) |
-		(1 << O_MAC_FILTER_CONFIG__ALL_MCAST_EN) |
-		(1 << O_MAC_FILTER_CONFIG__MAC_ADDR0_VALID));
+		     (1 << O_MAC_FILTER_CONFIG__BROADCAST_EN) |
+		     (1 << O_MAC_FILTER_CONFIG__ALL_MCAST_EN) |
+		     (1 << O_MAC_FILTER_CONFIG__MAC_ADDR0_VALID));
 
 	if (priv->nd->phy_interface == PHY_INTERFACE_MODE_RGMII ||
-			priv->nd->phy_interface == PHY_INTERFACE_MODE_SGMII)
-		xlr_reg_update(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
+	    priv->nd->phy_interface == PHY_INTERFACE_MODE_SGMII)
+	    xlr_reg_update(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
 }
 
 static int xlr_net_set_mac_addr(struct net_device *ndev, void *data)
@@ -406,7 +405,8 @@ static void xlr_stats(struct net_device *ndev, struct rtnl_link_stats64 *stats)
 }
 
 static struct rtnl_link_stats64 *xlr_get_stats64(struct net_device *ndev,
-		struct rtnl_link_stats64 *stats)
+						 struct rtnl_link_stats64 *stats
+						 )
 {
 	xlr_stats(ndev, stats);
 	return stats;
@@ -426,7 +426,7 @@ static struct net_device_ops xlr_netdev_ops = {
  * Gmac init
  */
 static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
-		int reg_start_1, int reg_size, int size)
+			      int reg_start_1, int reg_size, int size)
 {
 	void *spill;
 	u32 *base;
@@ -442,7 +442,7 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
 	spill = PTR_ALIGN(spill, SMP_CACHE_BYTES);
 	phys_addr = virt_to_phys(spill);
 	dev_dbg(&priv->ndev->dev, "Allocated spill %d bytes at %lx\n",
-			size, phys_addr);
+		size, phys_addr);
 	xlr_nae_wreg(base, reg_start_0, (phys_addr >> 5) & 0xffffffff);
 	xlr_nae_wreg(base, reg_start_1, ((u64)phys_addr >> 37) & 0x07);
 	xlr_nae_wreg(base, reg_size, spill_size);
@@ -511,19 +511,19 @@ static void xlr_config_pde(struct xlr_net_priv *priv)
 
 	xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_0, (bkt_map & 0xffffffff));
 	xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_0 + 1,
-			((bkt_map >> 32) & 0xffffffff));
+		     ((bkt_map >> 32) & 0xffffffff));
 
 	xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_1, (bkt_map & 0xffffffff));
 	xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_1 + 1,
-			((bkt_map >> 32) & 0xffffffff));
+		     ((bkt_map >> 32) & 0xffffffff));
 
 	xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_2, (bkt_map & 0xffffffff));
 	xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_2 + 1,
-			((bkt_map >> 32) & 0xffffffff));
+		     ((bkt_map >> 32) & 0xffffffff));
 
 	xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_3, (bkt_map & 0xffffffff));
 	xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_3 + 1,
-			((bkt_map >> 32) & 0xffffffff));
+		     ((bkt_map >> 32) & 0xffffffff));
 }
 
 /*
@@ -541,8 +541,8 @@ static int xlr_config_common(struct xlr_net_priv *priv)
 	/* Setting non-core MsgBktSize(0x321 - 0x325) */
 	for (i = start_stn_id; i <= end_stn_id; i++) {
 		xlr_nae_wreg(priv->base_addr,
-				R_GMAC_RFR0_BUCKET_SIZE + i - start_stn_id,
-				bucket_size[i]);
+			     R_GMAC_RFR0_BUCKET_SIZE + i - start_stn_id,
+			     bucket_size[i]);
 	}
 
 	/*
@@ -552,8 +552,8 @@ static int xlr_config_common(struct xlr_net_priv *priv)
 	for (i = 0; i < 8; i++) {
 		for (j = 0; j < 8; j++)
 			xlr_nae_wreg(priv->base_addr,
-					(R_CC_CPU0_0 + (i * 8)) + j,
-					gmac->credit_config[(i * 8) + j]);
+				     (R_CC_CPU0_0 + (i * 8)) + j,
+				     gmac->credit_config[(i * 8) + j]);
 	}
 
 	xlr_nae_wreg(priv->base_addr, R_MSG_TX_THRESHOLD, 3);
@@ -567,7 +567,7 @@ static int xlr_config_common(struct xlr_net_priv *priv)
 	if (err)
 		return err;
 	nlm_register_fmn_handler(start_stn_id, end_stn_id, xlr_net_fmn_handler,
-			priv->adapter);
+				 priv->adapter);
 	return 0;
 }
 
@@ -583,7 +583,7 @@ static void xlr_config_translate_table(struct xlr_net_priv *priv)
 	cpu_mask = priv->nd->cpu_mask;
 
 	pr_info("Using %s-based distribution\n",
-			(use_bkt) ? "bucket" : "class");
+		(use_bkt) ? "bucket" : "class");
 	j = 0;
 	for (i = 0; i < 32; i++) {
 		if ((1 << i) & cpu_mask) {
@@ -614,7 +614,7 @@ static void xlr_config_translate_table(struct xlr_net_priv *priv)
 		val = ((c1 << 23) | (b1 << 17) | (use_bkt << 16) |
 				(c2 << 7) | (b2 << 1) | (use_bkt << 0));
 		dev_dbg(&priv->ndev->dev, "Table[%d] b1=%d b2=%d c1=%d c2=%d\n",
-				i, b1, b2, c1, c2);
+			i, b1, b2, c1, c2);
 		xlr_nae_wreg(priv->base_addr, R_TRANSLATETABLE + i, val);
 		c1 = c2;
 	}
@@ -629,16 +629,16 @@ static void xlr_config_parser(struct xlr_net_priv *priv)
 
 	/* Use 7bit CRChash for flow classification with 127 as CRC polynomial*/
 	xlr_nae_wreg(priv->base_addr, R_PARSERCONFIGREG,
-			((0x7f << 8) | (1 << 1)));
+		     ((0x7f << 8) | (1 << 1)));
 
 	/* configure the parser : L2 Type is configured in the bootloader */
 	/* extract IP: src, dest protocol */
 	xlr_nae_wreg(priv->base_addr, R_L3CTABLE,
-			(9 << 20) | (1 << 19) | (1 << 18) | (0x01 << 16) |
-			(0x0800 << 0));
+		     (9 << 20) | (1 << 19) | (1 << 18) | (0x01 << 16) |
+		     (0x0800 << 0));
 	xlr_nae_wreg(priv->base_addr, R_L3CTABLE + 1,
-			(9 << 25) | (1 << 21) | (12 << 14) | (4 << 10) |
-			(16 << 4) | 4);
+		     (9 << 25) | (1 << 21) | (12 << 14) | (4 << 10) |
+		     (16 << 4) | 4);
 
 	/* Configure to extract SRC port and Dest port for TCP and UDP pkts */
 	xlr_nae_wreg(priv->base_addr, R_L4CTABLE, 6);
@@ -692,11 +692,11 @@ static int xlr_phy_read(u32 *base_addr, int phy_addr, int regnum)
 
 	/* setup the phy reg to be used */
 	xlr_nae_wreg(base_addr, R_MII_MGMT_ADDRESS,
-			(phy_addr << 8) | (regnum << 0));
+		     (phy_addr << 8) | (regnum << 0));
 
 	/* Issue the read command */
 	xlr_nae_wreg(base_addr, R_MII_MGMT_COMMAND,
-			(1 << O_MII_MGMT_COMMAND__rstat));
+		     (1 << O_MII_MGMT_COMMAND__rstat));
 
 	/* poll for the read cycle to complete */
 	while (!timedout) {
@@ -724,7 +724,7 @@ static int xlr_mii_write(struct mii_bus *bus, int phy_addr, int regnum, u16 val)
 
 	ret = xlr_phy_write(priv->mii_addr, phy_addr, regnum, val);
 	dev_dbg(&priv->ndev->dev, "mii_write phy %d : %d <- %x [%x]\n",
-			phy_addr, regnum, val, ret);
+		phy_addr, regnum, val, ret);
 	return ret;
 }
 
@@ -735,7 +735,7 @@ static int xlr_mii_read(struct mii_bus *bus, int phy_addr, int regnum)
 
 	ret =  xlr_phy_read(priv->mii_addr, phy_addr, regnum);
 	dev_dbg(&priv->ndev->dev, "mii_read phy %d : %d [%x]\n",
-			phy_addr, regnum, ret);
+		phy_addr, regnum, ret);
 	return ret;
 }
 
@@ -797,13 +797,16 @@ void xlr_set_gmac_speed(struct xlr_net_priv *priv)
 		if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
 			if (speed == SPEED_10)
 				xlr_nae_wreg(priv->base_addr,
-					R_INTERFACE_CONTROL, SGMII_SPEED_10);
+					     R_INTERFACE_CONTROL,
+					     SGMII_SPEED_10);
 			if (speed == SPEED_100)
 				xlr_nae_wreg(priv->base_addr,
-					R_INTERFACE_CONTROL, SGMII_SPEED_100);
+					     R_INTERFACE_CONTROL,
+					     SGMII_SPEED_100);
 			if (speed == SPEED_1000)
 				xlr_nae_wreg(priv->base_addr,
-					R_INTERFACE_CONTROL, SGMII_SPEED_1000);
+					     R_INTERFACE_CONTROL,
+					     SGMII_SPEED_1000);
 		}
 		if (speed == SPEED_10)
 			xlr_nae_wreg(priv->base_addr, R_CORECONTROL, 0x2);
@@ -864,7 +867,7 @@ static int xlr_mii_probe(struct xlr_net_priv *priv)
 }
 
 static int xlr_setup_mdio(struct xlr_net_priv *priv,
-		struct platform_device *pdev)
+			  struct platform_device *pdev)
 {
 	int err;
 
@@ -877,7 +880,7 @@ static int xlr_setup_mdio(struct xlr_net_priv *priv,
 	priv->mii_bus->priv = priv;
 	priv->mii_bus->name = "xlr-mdio";
 	snprintf(priv->mii_bus->id, MII_BUS_ID_SIZE, "%s-%d",
-			priv->mii_bus->name, priv->port_id);
+		 priv->mii_bus->name, priv->port_id);
 	priv->mii_bus->read = xlr_mii_read;
 	priv->mii_bus->write = xlr_mii_write;
 	priv->mii_bus->parent = &pdev->dev;
@@ -910,25 +913,31 @@ static void xlr_port_enable(struct xlr_net_priv *priv)
 
 	/* Setup MAC_CONFIG reg if (xls & rgmii) */
 	if ((prid == 0x8000 || prid == 0x4000 || prid == 0xc000) &&
-			priv->nd->phy_interface == PHY_INTERFACE_MODE_RGMII)
+	    priv->nd->phy_interface == PHY_INTERFACE_MODE_RGMII)
 		xlr_reg_update(priv->base_addr, R_RX_CONTROL,
-			(1 << O_RX_CONTROL__RGMII), (1 << O_RX_CONTROL__RGMII));
+			       (1 << O_RX_CONTROL__RGMII),
+			       (1 << O_RX_CONTROL__RGMII));
 
 	/* Rx Tx enable */
 	xlr_reg_update(priv->base_addr, R_MAC_CONFIG_1,
-		((1 << O_MAC_CONFIG_1__rxen) | (1 << O_MAC_CONFIG_1__txen) |
-		(1 << O_MAC_CONFIG_1__rxfc) | (1 << O_MAC_CONFIG_1__txfc)),
-		((1 << O_MAC_CONFIG_1__rxen) | (1 << O_MAC_CONFIG_1__txen) |
-		(1 << O_MAC_CONFIG_1__rxfc) | (1 << O_MAC_CONFIG_1__txfc)));
+		       ((1 << O_MAC_CONFIG_1__rxen) |
+			(1 << O_MAC_CONFIG_1__txen) |
+			(1 << O_MAC_CONFIG_1__rxfc) |
+			(1 << O_MAC_CONFIG_1__txfc)),
+		       ((1 << O_MAC_CONFIG_1__rxen) |
+			(1 << O_MAC_CONFIG_1__txen) |
+			(1 << O_MAC_CONFIG_1__rxfc) |
+			(1 << O_MAC_CONFIG_1__txfc)));
 
 	/* Setup tx control reg */
 	xlr_reg_update(priv->base_addr, R_TX_CONTROL,
-		((1 << O_TX_CONTROL__TxEnable) |
-		(512 << O_TX_CONTROL__TxThreshold)), 0x3fff);
+		       ((1 << O_TX_CONTROL__TxEnable) |
+		       (512 << O_TX_CONTROL__TxThreshold)), 0x3fff);
 
 	/* Setup rx control reg */
 	xlr_reg_update(priv->base_addr, R_RX_CONTROL,
-		1 << O_RX_CONTROL__RxEnable, 1 << O_RX_CONTROL__RxEnable);
+		       1 << O_RX_CONTROL__RxEnable,
+		       1 << O_RX_CONTROL__RxEnable);
 }
 
 static void xlr_port_disable(struct xlr_net_priv *priv)
@@ -936,25 +945,26 @@ static void xlr_port_disable(struct xlr_net_priv *priv)
 	/* Setup MAC_CONFIG reg */
 	/* Rx Tx disable*/
 	xlr_reg_update(priv->base_addr, R_MAC_CONFIG_1,
-		((1 << O_MAC_CONFIG_1__rxen) | (1 << O_MAC_CONFIG_1__txen) |
-		(1 << O_MAC_CONFIG_1__rxfc) | (1 << O_MAC_CONFIG_1__txfc)),
-		0x0);
+		       ((1 << O_MAC_CONFIG_1__rxen) |
+			(1 << O_MAC_CONFIG_1__txen) |
+			(1 << O_MAC_CONFIG_1__rxfc) |
+			(1 << O_MAC_CONFIG_1__txfc)), 0x0);
 
 	/* Setup tx control reg */
 	xlr_reg_update(priv->base_addr, R_TX_CONTROL,
-		((1 << O_TX_CONTROL__TxEnable) |
-		(512 << O_TX_CONTROL__TxThreshold)), 0);
+		       ((1 << O_TX_CONTROL__TxEnable) |
+		       (512 << O_TX_CONTROL__TxThreshold)), 0);
 
 	/* Setup rx control reg */
 	xlr_reg_update(priv->base_addr, R_RX_CONTROL,
-		1 << O_RX_CONTROL__RxEnable, 0);
+		       1 << O_RX_CONTROL__RxEnable, 0);
 }
 
 /*
  * Initialization of gmac
  */
 static int xlr_gmac_init(struct xlr_net_priv *priv,
-		struct platform_device *pdev)
+			 struct platform_device *pdev)
 {
 	int ret;
 
@@ -963,9 +973,9 @@ static int xlr_gmac_init(struct xlr_net_priv *priv,
 	xlr_port_disable(priv);
 
 	xlr_nae_wreg(priv->base_addr, R_DESC_PACK_CTRL,
-			(1 << O_DESC_PACK_CTRL__MaxEntry)
-			| (BYTE_OFFSET << O_DESC_PACK_CTRL__ByteOffset)
-			| (1600 << O_DESC_PACK_CTRL__RegularSize));
+		     (1 << O_DESC_PACK_CTRL__MaxEntry) |
+		     (BYTE_OFFSET << O_DESC_PACK_CTRL__ByteOffset) |
+		     (1600 << O_DESC_PACK_CTRL__RegularSize));
 
 	ret = xlr_setup_mdio(priv, pdev);
 	if (ret)
@@ -977,21 +987,14 @@ static int xlr_gmac_init(struct xlr_net_priv *priv,
 	/* speed 2.5Mhz */
 	xlr_nae_wreg(priv->base_addr, R_CORECONTROL, 0x02);
 	/* Setup Interrupt mask reg */
-	xlr_nae_wreg(priv->base_addr, R_INTMASK,
-		(1 << O_INTMASK__TxIllegal)	|
-		(1 << O_INTMASK__MDInt)		|
-		(1 << O_INTMASK__TxFetchError)	|
-		(1 << O_INTMASK__P2PSpillEcc)	|
-		(1 << O_INTMASK__TagFull)	|
-		(1 << O_INTMASK__Underrun)	|
-		(1 << O_INTMASK__Abort)
-		);
+	xlr_nae_wreg(priv->base_addr, R_INTMASK, (1 << O_INTMASK__TxIllegal) |
+		     (1 << O_INTMASK__MDInt) | (1 << O_INTMASK__TxFetchError) |
+		     (1 << O_INTMASK__P2PSpillEcc) | (1 << O_INTMASK__TagFull) |
+		     (1 << O_INTMASK__Underrun) | (1 << O_INTMASK__Abort));
 
 	/* Clear all stats */
-	xlr_reg_update(priv->base_addr, R_STATCTRL,
-		0, 1 << O_STATCTRL__ClrCnt);
-	xlr_reg_update(priv->base_addr, R_STATCTRL, 1 << 2,
-		1 << 2);
+	xlr_reg_update(priv->base_addr, R_STATCTRL, 0, 1 << O_STATCTRL__ClrCnt);
+	xlr_reg_update(priv->base_addr, R_STATCTRL, 1 << 2, 1 << 2);
 	return 0;
 }
 
@@ -1035,7 +1038,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 
 		if (res == NULL) {
 			pr_err("No memory resource for MAC %d\n",
-					priv->port_id);
+			       priv->port_id);
 			err = -ENODEV;
 			goto err_gmac;
 		}
@@ -1098,7 +1101,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 		err = register_netdev(ndev);
 		if (err) {
 			pr_err("Registering netdev failed for gmac%d\n",
-					priv->port_id);
+			       priv->port_id);
 			goto err_netdev;
 		}
 		platform_set_drvdata(pdev, priv);
-- 
2.7.0



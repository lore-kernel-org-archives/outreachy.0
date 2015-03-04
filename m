X-GM-THRID: 6554076053504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,61be22872cd906f7,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.41 with SMTP id x9mr546315lax.10.1425465482298;
        Wed, 04 Mar 2015 02:38:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.140 with SMTP id ay12ls180719lab.2.gmail; Wed, 04 Mar
 2015 02:38:00 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr543696lan.1.1425465480472;
        Wed, 04 Mar 2015 02:38:00 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id gj20si27532wic.1.2015.03.04.02.38.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 02:38:00 -0800 (PST)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id hm9so6241317wib.2
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 02:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=SyRCpV1acuEFBQ4YoI3byXVHnSlQe2XwtQJBknYG1LE=;
        b=L/yot1VxnetODHnMWkqaEqCzDHJcEaxECfH3oUubyjYU4Hbv6+BC5MS4jHITU64SqS
         ElajAnRWD5X1IXG5Igq2Kz2uG07tFgpa4wXsFKUl1mRTIw7eTaal1Eb4gXW8WP32bb4z
         Vf7Nf24iPhOAy6vN1FN9a7P3eMGFu2L1n7qm8QbXB+gT16wZ3etoL0DPqvbPPi4p+bhd
         M0n692Jj4uTgE9ZHziZwnDVcrZbn3zxNSob3RIMPIe6+HzkGr5P2gPdDes2zTN64A5DG
         k3xCA58Oqf39+2CZaiA+21LoigorlNvxqF4HqorAj3uR5AjPdbV08Eafpny4/GeQgc4U
         KxUQ==
X-Received: by 10.180.85.103 with SMTP id g7mr53288942wiz.19.1425465480365;
        Wed, 04 Mar 2015 02:38:00 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([86.124.70.84])
        by mx.google.com with ESMTPSA id p10sm5308361wjw.44.2015.03.04.02.37.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 02:37:59 -0800 (PST)
Date: Wed, 4 Mar 2015 12:37:28 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: drivers: Bool initializations should use true/false
Message-ID: <20150304103728.GA6359@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bool initializations of 1/0 with true/false in order
to increase readability and respect the standards. Warning found by
coccinelle.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/ft1000/ft1000-usb/ft1000_debug.c       | 4 ++--
 drivers/staging/lustre/lustre/llite/llite_mmap.c       | 2 +-
 drivers/staging/rtl8192u/ieee80211/dot11d.c            | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 4 ++--
 drivers/staging/rtl8192u/r8192U_core.c                 | 2 +-
 drivers/staging/rtl8192u/r8192U_dm.c                   | 4 ++--
 drivers/staging/vt6655/rxtx.c                          | 4 ++--
 8 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
index da34257..0f776d0 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
@@ -544,7 +544,7 @@ static long ft1000_ioctl(struct file *file, unsigned int command,
 		if (ft1000dev->fProvComplete == 0)
 			return -EACCES;
 
-		ft1000dev->fAppMsgPend = 1;
+		ft1000dev->fAppMsgPend = true;
 
 		if (info->CardReady) {
 
@@ -719,7 +719,7 @@ static long ft1000_ioctl(struct file *file, unsigned int command,
 		result = -ENOTTY;
 		break;
 	}
-	ft1000dev->fAppMsgPend = 0;
+	ft1000dev->fAppMsgPend = false;
 	return result;
 }
 
diff --git a/drivers/staging/lustre/lustre/llite/llite_mmap.c b/drivers/staging/lustre/lustre/llite/llite_mmap.c
index ab07959..a90214b 100644
--- a/drivers/staging/lustre/lustre/llite/llite_mmap.c
+++ b/drivers/staging/lustre/lustre/llite/llite_mmap.c
@@ -312,7 +312,7 @@ static int ll_fault0(struct vm_area_struct *vma, struct vm_fault *vmf)
 		vio->u.fault.ft_vmpage    = NULL;
 		vio->u.fault.fault.ft_vmf = vmf;
 		vio->u.fault.fault.ft_flags = 0;
-		vio->u.fault.fault.ft_flags_valid = 0;
+		vio->u.fault.fault.ft_flags_valid = false;
 
 		result = cl_io_loop(env, io);
 
diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c b/drivers/staging/rtl8192u/ieee80211/dot11d.c
index 90ace79..82d6038 100644
--- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
+++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
@@ -6,7 +6,7 @@ void Dot11d_Init(struct ieee80211_device *ieee)
 {
 	PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(ieee);
 
-	pDot11dInfo->bEnabled = 0;
+	pDot11dInfo->bEnabled = false;
 
 	pDot11dInfo->State = DOT11D_STATE_NONE;
 	pDot11dInfo->CountryIeLen = 0;
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 286b71d..d2c2fb8 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -943,7 +943,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		if(net_ratelimit())
 		printk("find HTCControl\n");
 		hdrlen += 4;
-		rx_stats->bContainHTC = 1;
+		rx_stats->bContainHTC = true;
 	}
 
 	//IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 3a54071..1cc66a1 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1371,7 +1371,7 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
 	else if(ieee->is_silent_reset == 1)
 	{
 		printk("==================>silent reset associate\n");
-		ieee->is_silent_reset = 0;
+		ieee->is_silent_reset = false;
 	}
 
 	if (ieee->data_hard_resume)
@@ -2719,7 +2719,7 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
 	ieee->sta_edca_param[2] = 0x005E4342;
 	ieee->sta_edca_param[3] = 0x002F3262;
 	ieee->aggregation = true;
-	ieee->enable_rx_imm_BA = 1;
+	ieee->enable_rx_imm_BA = true;
 	ieee->tx_pending.txb = NULL;
 
 	setup_timer(&ieee->associate_timer, ieee80211_associate_abort_cb,
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 9de4412..7f0ace1 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2143,7 +2143,7 @@ static void rtl8192_init_priv_variable(struct net_device *dev)
 	//for silent reset
 	priv->IrpPendingCount = 1;
 	priv->ResetProgress = RESET_TYPE_NORESET;
-	priv->bForcedSilentReset = 0;
+	priv->bForcedSilentReset = false;
 	priv->bDisableNormalResetCheck = false;
 	priv->force_reset = false;
 
diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 7199616..167d3b1 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -2419,9 +2419,9 @@ void dm_rf_pathcheck_workitemcallback(struct work_struct *work)
 	/* Check Bit 0-3, it means if RF A-D is enabled. */
 	for (i = 0; i < RF90_PATH_MAX; i++) {
 		if (rfpath & (0x01<<i))
-			priv->brfpath_rxenable[i] = 1;
+			priv->brfpath_rxenable[i] = true;
 		else
-			priv->brfpath_rxenable[i] = 0;
+			priv->brfpath_rxenable[i] = false;
 	}
 	if (!DM_RxPathSelTable.Enable)
 		return;
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index ac8c8b5..2b4f005 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -248,11 +248,11 @@ s_uGetDataDuration(
 	unsigned char byFBOption
 )
 {
-	bool bLastFrag = 0;
+	bool bLastFrag = false;
 	unsigned int uAckTime = 0, uNextPktTime = 0;
 
 	if (uFragIdx == (uMACfragNum-1))
-		bLastFrag = 1;
+		bLastFrag = true;
 
 	switch (byDurType) {
 	case DATADUR_B:    //DATADUR_B
-- 
1.9.1



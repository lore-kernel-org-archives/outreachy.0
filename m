X-GM-THRID: 6333636808059912192
X-Received: by 10.25.195.134 with SMTP id t128mr568064lff.1.1474666426500;
        Fri, 23 Sep 2016 14:33:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.18 with SMTP id h18ls1704898ljh.52.gmail; Fri, 23 Sep
 2016 14:33:45 -0700 (PDT)
X-Received: by 10.25.22.65 with SMTP id m62mr482774lfi.29.1474666425634;
        Fri, 23 Sep 2016 14:33:45 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id c13si338691wme.3.2016.09.23.14.33.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 14:33:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id w84so4620386wmg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Sep 2016 14:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=86L4RkPpPmpzV+Xu81zAleu9ogZUXDQX/dQdK1Sh9qM=;
        b=QI0pLAB8hYi8BgVoD0MMWTYfm6EKyb7KD+ma/Gd4Nc/3GH6uasXrKoyaMyXloXFTBA
         KKR690IuejG1j/4sEuVmwKBZjimBJYl+ZBJmRvQdhHb36dzZFp8ySnztBW33PkK+VN6F
         Pae70+0X4nPdBmek68D4n2lkormKGqk7mqppVU9bPSHMCLTSAWThPtpMaESWdE74sY78
         p+HSBP3d/tinZplsIXaI+4GpY9T1eScUcKsyP7YX1XkMp4g3CjVGGVuHeXNBl33EPkix
         VZlTwVSH0PaTCApQkPq/wFq8G/KrPWwZ8V2Jb7+kSUuRU5MTYubP6S3XLy/B92eYLQqY
         CONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=86L4RkPpPmpzV+Xu81zAleu9ogZUXDQX/dQdK1Sh9qM=;
        b=mNC3patLAYxfJUStinyPkDK1Lbko0ngNNfLSYgWMZjqwrRo5Jnet+mEL+buJny6/4L
         hx3Nxm7geHSUJsKQ+pWbcpTchntiT3VecqoSxPmsLSeAMh1dz79JEgkPAqIjCbhxCEPt
         zCmoxRzMxTqjzBIWSG9wPy8264uIvb+47hq1/0vOa+YY4OJe5mCbBQ/lOFg48fsFLGgx
         k3T5p/ozTGw6UnNO6BwcW+9FPJiUQSjaiB9pb26KAB7weBNo8OU1vFxTV6LljYhE2jj2
         Hl6OxWyP3vZ14vhlFQMLveHPmJct8bsUQgQmNvT3VFKgQ056VEZmTVWU/feMRr4q9fiH
         53PQ==
X-Gm-Message-State: AE9vXwMNXKjc9l1DaUXAuovWtbkYF4ZqZxzz/SQ9vPSKgS4vbFwn4Ap11Sn2F0vEBdu02g==
X-Received: by 10.194.28.231 with SMTP id e7mr10408674wjh.170.1474666425355;
        Fri, 23 Sep 2016 14:33:45 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id p144sm4995022wme.0.2016.09.23.14.33.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Sep 2016 14:33:44 -0700 (PDT)
Date: Sat, 24 Sep 2016 00:33:43 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: ks7010: ks_wlan_net: Use netdev_ or pr_info
 instead of printk
Message-ID: <20160923213343.GA20036@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The checkpatch.pl script found the following warning:

WARNING: printk() should include KERN_ facility level

After adding the KERN_ facility level to printk(), the script showed
another warning:

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...

The warning is similar for KERN_ERR and KERN_DEBUG. In conclusion,
use netdev_info(), netdev_err() or netdev_dbg() when there is
a netdev device and use pr_info() in the remained cases.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
        - make the commit message more clear
	- replace all the appearances of printk()

 drivers/staging/ks7010/ks_wlan_net.c | 92 ++++++++++++++++++------------------
 1 file changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index d13a06b..9ef44cc 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -233,9 +233,9 @@ static int ks_wlan_set_freq(struct net_device *dev,
 		/* We should do a better check than that,
 		 * based on the card capability !!! */
 		if ((channel < 1) || (channel > 14)) {
-			printk(KERN_DEBUG
-			       "%s: New channel value of %d is invalid!\n",
-			       dev->name, fwrq->m);
+			netdev_dbg(dev,
+				   "%s: New channel value of %d is invalid!\n",
+				   dev->name, fwrq->m);
 			rc = -EINVAL;
 		} else {
 			/* Yes ! We can set it !!! */
@@ -2671,17 +2671,17 @@ static int ks_wlan_set_sleep_mode(struct net_device *dev,
 
 	if (*uwrq == SLP_SLEEP) {
 		priv->sleep_mode = *uwrq;
-		printk("SET_SLEEP_MODE %d\n", priv->sleep_mode);
+		netdev_info(dev, "SET_SLEEP_MODE %d\n", priv->sleep_mode);
 
 		hostif_sme_enqueue(priv, SME_STOP_REQUEST);
 		hostif_sme_enqueue(priv, SME_SLEEP_REQUEST);
 
 	} else if (*uwrq == SLP_ACTIVE) {
 		priv->sleep_mode = *uwrq;
-		printk("SET_SLEEP_MODE %d\n", priv->sleep_mode);
+		netdev_info(dev, "SET_SLEEP_MODE %d\n", priv->sleep_mode);
 		hostif_sme_enqueue(priv, SME_SLEEP_REQUEST);
 	} else {
-		printk("SET_SLEEP_MODE %d errror\n", *uwrq);
+		netdev_err(dev, "SET_SLEEP_MODE %d errror\n", *uwrq);
 		return -EINVAL;
 	}
 
@@ -2783,7 +2783,7 @@ static int ks_wlan_get_wps_enable(struct net_device *dev,
 	}
 	/* for SLEEP MODE */
 	*uwrq = priv->wps.wps_enabled;
-	printk("return=%d\n", *uwrq);
+	netdev_info(dev, "return=%d\n", *uwrq);
 
 	return 0;
 }
@@ -2978,112 +2978,112 @@ static void print_hif_event(int event)
 
 	switch (event) {
 	case HIF_DATA_REQ:
-		printk("HIF_DATA_REQ\n");
+		pr_info("HIF_DATA_REQ\n");
 		break;
 	case HIF_DATA_IND:
-		printk("HIF_DATA_IND\n");
+		pr_info("HIF_DATA_IND\n");
 		break;
 	case HIF_MIB_GET_REQ:
-		printk("HIF_MIB_GET_REQ\n");
+		pr_info("HIF_MIB_GET_REQ\n");
 		break;
 	case HIF_MIB_GET_CONF:
-		printk("HIF_MIB_GET_CONF\n");
+		pr_info("HIF_MIB_GET_CONF\n");
 		break;
 	case HIF_MIB_SET_REQ:
-		printk("HIF_MIB_SET_REQ\n");
+		pr_info("HIF_MIB_SET_REQ\n");
 		break;
 	case HIF_MIB_SET_CONF:
-		printk("HIF_MIB_SET_CONF\n");
+		pr_info("HIF_MIB_SET_CONF\n");
 		break;
 	case HIF_POWERMGT_REQ:
-		printk("HIF_POWERMGT_REQ\n");
+		pr_info("HIF_POWERMGT_REQ\n");
 		break;
 	case HIF_POWERMGT_CONF:
-		printk("HIF_POWERMGT_CONF\n");
+		pr_info("HIF_POWERMGT_CONF\n");
 		break;
 	case HIF_START_REQ:
-		printk("HIF_START_REQ\n");
+		pr_info("HIF_START_REQ\n");
 		break;
 	case HIF_START_CONF:
-		printk("HIF_START_CONF\n");
+		pr_info("HIF_START_CONF\n");
 		break;
 	case HIF_CONNECT_IND:
-		printk("HIF_CONNECT_IND\n");
+		pr_info("HIF_CONNECT_IND\n");
 		break;
 	case HIF_STOP_REQ:
-		printk("HIF_STOP_REQ\n");
+		pr_info("HIF_STOP_REQ\n");
 		break;
 	case HIF_STOP_CONF:
-		printk("HIF_STOP_CONF\n");
+		pr_info("HIF_STOP_CONF\n");
 		break;
 	case HIF_PS_ADH_SET_REQ:
-		printk("HIF_PS_ADH_SET_REQ\n");
+		pr_info("HIF_PS_ADH_SET_REQ\n");
 		break;
 	case HIF_PS_ADH_SET_CONF:
-		printk("HIF_PS_ADH_SET_CONF\n");
+		pr_info("HIF_PS_ADH_SET_CONF\n");
 		break;
 	case HIF_INFRA_SET_REQ:
-		printk("HIF_INFRA_SET_REQ\n");
+		pr_info("HIF_INFRA_SET_REQ\n");
 		break;
 	case HIF_INFRA_SET_CONF:
-		printk("HIF_INFRA_SET_CONF\n");
+		pr_info("HIF_INFRA_SET_CONF\n");
 		break;
 	case HIF_ADH_SET_REQ:
-		printk("HIF_ADH_SET_REQ\n");
+		pr_info("HIF_ADH_SET_REQ\n");
 		break;
 	case HIF_ADH_SET_CONF:
-		printk("HIF_ADH_SET_CONF\n");
+		pr_info("HIF_ADH_SET_CONF\n");
 		break;
 	case HIF_AP_SET_REQ:
-		printk("HIF_AP_SET_REQ\n");
+		pr_info("HIF_AP_SET_REQ\n");
 		break;
 	case HIF_AP_SET_CONF:
-		printk("HIF_AP_SET_CONF\n");
+		pr_info("HIF_AP_SET_CONF\n");
 		break;
 	case HIF_ASSOC_INFO_IND:
-		printk("HIF_ASSOC_INFO_IND\n");
+		pr_info("HIF_ASSOC_INFO_IND\n");
 		break;
 	case HIF_MIC_FAILURE_REQ:
-		printk("HIF_MIC_FAILURE_REQ\n");
+		pr_info("HIF_MIC_FAILURE_REQ\n");
 		break;
 	case HIF_MIC_FAILURE_CONF:
-		printk("HIF_MIC_FAILURE_CONF\n");
+		pr_info("HIF_MIC_FAILURE_CONF\n");
 		break;
 	case HIF_SCAN_REQ:
-		printk("HIF_SCAN_REQ\n");
+		pr_info("HIF_SCAN_REQ\n");
 		break;
 	case HIF_SCAN_CONF:
-		printk("HIF_SCAN_CONF\n");
+		pr_info("HIF_SCAN_CONF\n");
 		break;
 	case HIF_PHY_INFO_REQ:
-		printk("HIF_PHY_INFO_REQ\n");
+		pr_info("HIF_PHY_INFO_REQ\n");
 		break;
 	case HIF_PHY_INFO_CONF:
-		printk("HIF_PHY_INFO_CONF\n");
+		pr_info("HIF_PHY_INFO_CONF\n");
 		break;
 	case HIF_SLEEP_REQ:
-		printk("HIF_SLEEP_REQ\n");
+		pr_info("HIF_SLEEP_REQ\n");
 		break;
 	case HIF_SLEEP_CONF:
-		printk("HIF_SLEEP_CONF\n");
+		pr_info("HIF_SLEEP_CONF\n");
 		break;
 	case HIF_PHY_INFO_IND:
-		printk("HIF_PHY_INFO_IND\n");
+		pr_info("HIF_PHY_INFO_IND\n");
 		break;
 	case HIF_SCAN_IND:
-		printk("HIF_SCAN_IND\n");
+		pr_info("HIF_SCAN_IND\n");
 		break;
 	case HIF_INFRA_SET2_REQ:
-		printk("HIF_INFRA_SET2_REQ\n");
+		pr_info("HIF_INFRA_SET2_REQ\n");
 		break;
 	case HIF_INFRA_SET2_CONF:
-		printk("HIF_INFRA_SET2_CONF\n");
+		pr_info("HIF_INFRA_SET2_CONF\n");
 		break;
 	case HIF_ADH_SET2_REQ:
-		printk("HIF_ADH_SET2_REQ\n");
+		pr_info("HIF_ADH_SET2_REQ\n");
 		break;
 	case HIF_ADH_SET2_CONF:
-		printk("HIF_ADH_SET2_CONF\n");
+		pr_info("HIF_ADH_SET2_CONF\n");
 	}
 }
 
@@ -3330,7 +3330,7 @@ int ks_wlan_set_mac_address(struct net_device *dev, void *addr)
 
 	priv->mac_address_valid = 0;
 	hostif_sme_enqueue(priv, SME_MACADDRESS_SET_REQUEST);
-	printk(KERN_INFO
+	netdev_info(dev,
 	       "ks_wlan: MAC ADDRESS = %02x:%02x:%02x:%02x:%02x:%02x\n",
 	       priv->eth_addr[0], priv->eth_addr[1], priv->eth_addr[2],
 	       priv->eth_addr[3], priv->eth_addr[4], priv->eth_addr[5]);
@@ -3362,7 +3362,7 @@ int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev)
 	DPRINTK(3, "in_interrupt()=%ld\n", in_interrupt());
 
 	if (!skb) {
-		printk(KERN_ERR "ks_wlan:  skb == NULL!!!\n");
+		netdev_err(dev, "ks_wlan:  skb == NULL!!!\n");
 		return 0;
 	}
 	if (priv->dev_state < DEVICE_STATE_READY) {
@@ -3428,7 +3428,7 @@ int ks_wlan_open(struct net_device *dev)
 	priv->cur_rx = 0;
 
 	if (!priv->mac_address_valid) {
-		printk(KERN_ERR "ks_wlan : %s Not READY !!\n", dev->name);
+		netdev_err(dev, "ks_wlan : %s Not READY !!\n", dev->name);
 		return -EBUSY;
 	} else
 		netif_start_queue(dev);
-- 
2.7.4



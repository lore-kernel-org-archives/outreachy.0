X-GM-THRID: 6334551742146936832
X-Received: by 10.46.1.77 with SMTP id 74mr913571ljb.21.1474877759138;
        Mon, 26 Sep 2016 01:15:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.79 with SMTP id j76ls1310626wmg.25.gmail; Mon, 26 Sep
 2016 01:15:58 -0700 (PDT)
X-Received: by 10.28.4.200 with SMTP id 191mr744969wme.21.1474877758501;
        Mon, 26 Sep 2016 01:15:58 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p199si648592wmd.1.2016.09.26.01.15.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 01:15:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id w84so12826982wmg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 01:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=u0pHC5NyLu3jXyeqP0rOPZ/9dWGD8Po6KObd39RHuD8=;
        b=JdT3kMZ4KnlhSBy5ISfQoWCVjVbc64bZkOz0XHJLujWyZ5gwxzkiAx83TS8pPQu5BU
         1Aq+5GTMCu9aGlCpWkvaFyirE/Y6dmVjbkxdw4iKwGV62y83u4ru+fDJRC62wVrM9QvG
         rjljyxByjrOp0TtCMZHru2mVxCuPAwvzO1RFYOWrm1jhtC/3lBU3iHc71JIApFuIxQ5I
         CMAAF1xdbDpkf3K4hRCbscKTinnsd4NlI9aJYiQxCFA0wwy/pPnQOqO45elCqIgIC7Tn
         def2FRj9w73pmOvQ0amL+YmEFwNorCDRTE5VDPQANIoSIGkmnzDiq0C9LNr8vxosajTj
         ahXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=u0pHC5NyLu3jXyeqP0rOPZ/9dWGD8Po6KObd39RHuD8=;
        b=gTN4/brZ9xWEOGMJv7nlkPBUaX3aVhsKIWYEMtf0WYFZNlGeK7uGZF0rly7ofqBgU0
         AKP6CIpqvF6KUikYjm4pKAPPeAcRSbc97kbw5DJ+eWB+yNhb7p/73t7esqRnbGX5hX8P
         pPuF52r9yHCItiboPhZMKAqHVc2+MgGOmBrMoC/jmOQMeht3HP/WN/5wsHwmNFKV+mIC
         5PzDmu1b9h1Ffi+fs1wkwhN5nJWhFpLrSV2+CDL4kBQOnBJRUBWKKcIEGjmnOB6guB5U
         4OljRy9QL6UGHR9/Zb25gMom/rWbHPm5U/rpd3kuXRYh3wkKRsd09FTUw0sY3xxs1MJU
         ziyg==
X-Gm-Message-State: AE9vXwMpvfXDhKQ82wkzRm2FA3I86dgOQzR5yHsC1nAQJ7nSq8WiNzbZ97rVey+Q7TNVPQ==
X-Received: by 10.194.233.102 with SMTP id tv6mr16907774wjc.35.1474877758306;
        Mon, 26 Sep 2016 01:15:58 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id g17sm9909595wme.3.2016.09.26.01.15.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Sep 2016 01:15:57 -0700 (PDT)
Date: Mon, 26 Sep 2016 11:15:56 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3] staging: ks7010: ks_wlan_net: Use netdev_ instead of
 printk
Message-ID: <20160926081556.GA6085@fireworks>
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
a netdev device.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
Changes in v3:
        - remove the use of pr_info function
	- change the title to correspond to the 
	patch modifications

 drivers/staging/ks7010/ks_wlan_net.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index d13a06b..5854c13 100644
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



X-GM-THRID: 6334596049329455104
X-Received: by 10.25.136.134 with SMTP id k128mr565700lfd.14.1474888075393;
        Mon, 26 Sep 2016 04:07:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.229 with SMTP id e98ls2075138lji.45.gmail; Mon, 26 Sep
 2016 04:07:54 -0700 (PDT)
X-Received: by 10.46.9.202 with SMTP id 193mr1017091ljj.30.1474888074680;
        Mon, 26 Sep 2016 04:07:54 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id y6si522190wmg.0.2016.09.26.04.07.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 04:07:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id 133so13540829wmq.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 04:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cOikbHgzCt7UB2vZEZkdMblmYUCadsp06AadWkSXFFg=;
        b=OFpu8bsA55hdekxBt2hV8nRl2WbWBsWPypwBr34FFzFW691Ba7LeDP604BlGWQIVLl
         KukBy1EHVT0SSupEMiDt1yfvup07vI6kqEFX/iZGfhzg2lclyOd//A1TvTHHCBiClM1u
         +yNzNy8kPBybekjfS9Pm+ZGUhEdlSroxPHCcP4NwcvsaIm/4B+y4tgtskEm7MrcMoUS+
         LhH7UK1J6p4hdZq0gKtS8Rm43Zl2q8pzQWyp8BKh9dW9/Ry6cUsaqrJ5Dzlz0Hm/om7m
         jrV9zFy1Z7UkSmglua+hjKPyfhR+ZIKMUq7j7EmUTvIG6QpVNTGx1WnGq4EKV1dlMhr/
         TMhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cOikbHgzCt7UB2vZEZkdMblmYUCadsp06AadWkSXFFg=;
        b=gyMgZ747/8sqeb74ZPtyZC7MB2fSaZYDjcs5LI16NqNvqwhKAfXfZ1kMjSDW0/SAvI
         M8CiEVr0n2ARXQ3buziz3WuquhlHTdRPKXwhBvGFiUbu+94PYu3Nd64dIgG/bnoIsn67
         LGnBnzUMguFEpS2RhKyJfCJcu4r1q+jZ+7MwyHlx9tOVEtETyvL/6s3ZrEcdjhnndsy8
         URZUW0xX6qRajOXrsj61yK+5PQEhzkVx0K75P47r2u0sLJuE7P8pPqpDxCkPlVAItPkS
         V9YEkFLg9l+je+E6NVI6wTMfH1WPRpc4m4pdpM/OuAllSCOuTkGzqy8Q91saQWdLDEN7
         eibw==
X-Gm-Message-State: AA6/9Rmw3E9mjis6nPp8lmTgNLcSEnZ8qkorFF7MOa4lOv+5RR/zjneM1u0yVilrpRLYZg==
X-Received: by 10.28.29.4 with SMTP id d4mr13027564wmd.111.1474888074370;
        Mon, 26 Sep 2016 04:07:54 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id lj2sm21758768wjc.38.2016.09.26.04.07.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Sep 2016 04:07:53 -0700 (PDT)
Date: Mon, 26 Sep 2016 14:07:52 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: ks_wlan_net: Use netdev_info instead of
 printk
Message-ID: <20160926110752.GA7186@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Pass the net_device structure to print_hif_event function
in order to use netdev_info instead of printk.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/ks7010/ks_wlan_net.c | 76 ++++++++++++++++++------------------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 5854c13..bd7e2df 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -2973,117 +2973,117 @@ static int ks_wlan_get_eeprom_cksum(struct net_device *dev,
 	return 0;
 }
 
-static void print_hif_event(int event)
+static void print_hif_event(struct net_device *dev, int event)
 {
 
 	switch (event) {
 	case HIF_DATA_REQ:
-		printk("HIF_DATA_REQ\n");
+		netdev_info(dev, "HIF_DATA_REQ\n");
 		break;
 	case HIF_DATA_IND:
-		printk("HIF_DATA_IND\n");
+		netdev_info(dev, "HIF_DATA_IND\n");
 		break;
 	case HIF_MIB_GET_REQ:
-		printk("HIF_MIB_GET_REQ\n");
+		netdev_info(dev, "HIF_MIB_GET_REQ\n");
 		break;
 	case HIF_MIB_GET_CONF:
-		printk("HIF_MIB_GET_CONF\n");
+		netdev_info(dev, "HIF_MIB_GET_CONF\n");
 		break;
 	case HIF_MIB_SET_REQ:
-		printk("HIF_MIB_SET_REQ\n");
+		netdev_info(dev, "HIF_MIB_SET_REQ\n");
 		break;
 	case HIF_MIB_SET_CONF:
-		printk("HIF_MIB_SET_CONF\n");
+		netdev_info(dev, "HIF_MIB_SET_CONF\n");
 		break;
 	case HIF_POWERMGT_REQ:
-		printk("HIF_POWERMGT_REQ\n");
+		netdev_info(dev, "HIF_POWERMGT_REQ\n");
 		break;
 	case HIF_POWERMGT_CONF:
-		printk("HIF_POWERMGT_CONF\n");
+		netdev_info(dev, "HIF_POWERMGT_CONF\n");
 		break;
 	case HIF_START_REQ:
-		printk("HIF_START_REQ\n");
+		netdev_info(dev, "HIF_START_REQ\n");
 		break;
 	case HIF_START_CONF:
-		printk("HIF_START_CONF\n");
+		netdev_info(dev, "HIF_START_CONF\n");
 		break;
 	case HIF_CONNECT_IND:
-		printk("HIF_CONNECT_IND\n");
+		netdev_info(dev, "HIF_CONNECT_IND\n");
 		break;
 	case HIF_STOP_REQ:
-		printk("HIF_STOP_REQ\n");
+		netdev_info(dev, "HIF_STOP_REQ\n");
 		break;
 	case HIF_STOP_CONF:
-		printk("HIF_STOP_CONF\n");
+		netdev_info(dev, "HIF_STOP_CONF\n");
 		break;
 	case HIF_PS_ADH_SET_REQ:
-		printk("HIF_PS_ADH_SET_REQ\n");
+		netdev_info(dev, "HIF_PS_ADH_SET_REQ\n");
 		break;
 	case HIF_PS_ADH_SET_CONF:
-		printk("HIF_PS_ADH_SET_CONF\n");
+		netdev_info(dev, "HIF_PS_ADH_SET_CONF\n");
 		break;
 	case HIF_INFRA_SET_REQ:
-		printk("HIF_INFRA_SET_REQ\n");
+		netdev_info(dev, "HIF_INFRA_SET_REQ\n");
 		break;
 	case HIF_INFRA_SET_CONF:
-		printk("HIF_INFRA_SET_CONF\n");
+		netdev_info(dev, "HIF_INFRA_SET_CONF\n");
 		break;
 	case HIF_ADH_SET_REQ:
-		printk("HIF_ADH_SET_REQ\n");
+		netdev_info(dev, "HIF_ADH_SET_REQ\n");
 		break;
 	case HIF_ADH_SET_CONF:
-		printk("HIF_ADH_SET_CONF\n");
+		netdev_info(dev, "HIF_ADH_SET_CONF\n");
 		break;
 	case HIF_AP_SET_REQ:
-		printk("HIF_AP_SET_REQ\n");
+		netdev_info(dev, "HIF_AP_SET_REQ\n");
 		break;
 	case HIF_AP_SET_CONF:
-		printk("HIF_AP_SET_CONF\n");
+		netdev_info(dev, "HIF_AP_SET_CONF\n");
 		break;
 	case HIF_ASSOC_INFO_IND:
-		printk("HIF_ASSOC_INFO_IND\n");
+		netdev_info(dev, "HIF_ASSOC_INFO_IND\n");
 		break;
 	case HIF_MIC_FAILURE_REQ:
-		printk("HIF_MIC_FAILURE_REQ\n");
+		netdev_info(dev, "HIF_MIC_FAILURE_REQ\n");
 		break;
 	case HIF_MIC_FAILURE_CONF:
-		printk("HIF_MIC_FAILURE_CONF\n");
+		netdev_info(dev, "HIF_MIC_FAILURE_CONF\n");
 		break;
 	case HIF_SCAN_REQ:
-		printk("HIF_SCAN_REQ\n");
+		netdev_info(dev, "HIF_SCAN_REQ\n");
 		break;
 	case HIF_SCAN_CONF:
-		printk("HIF_SCAN_CONF\n");
+		netdev_info(dev, "HIF_SCAN_CONF\n");
 		break;
 	case HIF_PHY_INFO_REQ:
-		printk("HIF_PHY_INFO_REQ\n");
+		netdev_info(dev, "HIF_PHY_INFO_REQ\n");
 		break;
 	case HIF_PHY_INFO_CONF:
-		printk("HIF_PHY_INFO_CONF\n");
+		netdev_info(dev, "HIF_PHY_INFO_CONF\n");
 		break;
 	case HIF_SLEEP_REQ:
-		printk("HIF_SLEEP_REQ\n");
+		netdev_info(dev, "HIF_SLEEP_REQ\n");
 		break;
 	case HIF_SLEEP_CONF:
-		printk("HIF_SLEEP_CONF\n");
+		netdev_info(dev, "HIF_SLEEP_CONF\n");
 		break;
 	case HIF_PHY_INFO_IND:
-		printk("HIF_PHY_INFO_IND\n");
+		netdev_info(dev, "HIF_PHY_INFO_IND\n");
 		break;
 	case HIF_SCAN_IND:
-		printk("HIF_SCAN_IND\n");
+		netdev_info(dev, "HIF_SCAN_IND\n");
 		break;
 	case HIF_INFRA_SET2_REQ:
-		printk("HIF_INFRA_SET2_REQ\n");
+		netdev_info(dev, "HIF_INFRA_SET2_REQ\n");
 		break;
 	case HIF_INFRA_SET2_CONF:
-		printk("HIF_INFRA_SET2_CONF\n");
+		netdev_info(dev, "HIF_INFRA_SET2_CONF\n");
 		break;
 	case HIF_ADH_SET2_REQ:
-		printk("HIF_ADH_SET2_REQ\n");
+		netdev_info(dev, "HIF_ADH_SET2_REQ\n");
 		break;
 	case HIF_ADH_SET2_CONF:
-		printk("HIF_ADH_SET2_CONF\n");
+		netdev_info(dev, "HIF_ADH_SET2_CONF\n");
 	}
 }
 
@@ -3100,7 +3100,7 @@ static int ks_wlan_hostt(struct net_device *dev, struct iw_request_info *info,
 		event =
 		    priv->hostt.buff[(priv->hostt.qtail - 1 - i) %
 				     SME_EVENT_BUFF_SIZE];
-		print_hif_event(event);
+		print_hif_event(dev, event);
 	}
 	return 0;
 }
-- 
2.7.4



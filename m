X-GM-THRID: 6333636808059912192
X-Received: by 10.28.35.203 with SMTP id j194mr269897wmj.20.1474664734849;
        Fri, 23 Sep 2016 14:05:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.135 with SMTP id v129ls508146wmf.3.canary; Fri, 23 Sep
 2016 14:05:33 -0700 (PDT)
X-Received: by 10.28.154.76 with SMTP id c73mr270189wme.20.1474664733403;
        Fri, 23 Sep 2016 14:05:33 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id 82si338098wmg.3.2016.09.23.14.05.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 14:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id 133so4532627wmq.2
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Sep 2016 14:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6vKzQVrBBxCe72Sp/5y3svGurQ2MxCfzaHKKTyrpjDs=;
        b=tffgt8C22f8cFAeHEoyVuI2zlG+dwBHTgBJSmc/EgmHyEV3RrOFvgtfJtjvzgVGX0U
         /NQA+GssjHapsYVJxHWYGMJNzCoczj/9VRcwdSddcDXXevuwzltmtxgxI2G2Yd1i6tUR
         M9o8EgRx1nq4XtREzbxCeQ29/jp9qYbCjDFYIEYtgfMghtBRyxcRBYBCkK5v0yz0odBa
         L5DF3aQfCSN3W3LAlQEVNrbl93ts3in+OqJab6YE7Oa4LY7dIGUGem/cHX/+w7xIR+d6
         PF+FToWYa/WZyqlYAK6zL/wM04gHcroNsxp9laKDjmgkpLd0XFG31vB60ySEMO9aoPEp
         0+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6vKzQVrBBxCe72Sp/5y3svGurQ2MxCfzaHKKTyrpjDs=;
        b=TQ428NajP0jlTHtOqSOyY1Q6D2nD7MUfOlfTbgYoPTqwY8xLNpvkFtzVe5xGSHiMY9
         5/onBHDAETy8cHreXTYILovP/bmNg9Ot1kfN5jbe6wn6Hv+HFhb5wxt+1ExI8Yz3XEbu
         bdJn3fPaBdDO3Z8t/pp+nConsNiv8Vos09orXQCow6/P9LuwSZ0TNamD1CQf5+6JqsbH
         GAtq3QSE6k7ao0ikeDWHtCleHTCbKzg/LuNLP6K43bOoAjMEYtW4qub+TB7ocRgFUl46
         ADzyd2Ly1nOK+cFCngGwrusfp7fIus8SM6h0qQFWqeTsHFwRpPK0zYYX3gBTaBt/aqzf
         S7iA==
X-Gm-Message-State: AE9vXwO9Yh7+4MrGS2MRPvfbCfUD/o4vfvKEFIEPoIFscg6gkZii5sFv/IEd7En58cpjCw==
X-Received: by 10.194.88.137 with SMTP id bg9mr8480150wjb.155.1474664733184;
        Fri, 23 Sep 2016 14:05:33 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id q10sm4857031wme.6.2016.09.23.14.05.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Sep 2016 14:05:32 -0700 (PDT)
Date: Sat, 24 Sep 2016 00:05:31 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: ks_wlan_net: Use netdev_ or pr_info instead
 of printk
Message-ID: <20160923210531.GA14238@fireworks>
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

In conclusion, use netdev_info() or netdev_err() when there is
a netdev device. If there is no available dev structure, use pr_info().

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/ks7010/ks_wlan_net.c | 78 ++++++++++++++++++------------------
 1 file changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index d13a06b..58c3aa8 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
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
 
-- 
2.7.4



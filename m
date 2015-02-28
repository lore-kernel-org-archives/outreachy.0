X-GM-THRID: 5277654974464
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d8c831628d8fe76f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.219.131 with SMTP id po3mr1612452pac.16.1425165439185;
        Sat, 28 Feb 2015 15:17:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.164.137 with SMTP id yq9ls624634igb.32.canary; Sat, 28 Feb
 2015 15:17:18 -0800 (PST)
X-Received: by 10.50.57.47 with SMTP id f15mr9883664igq.1.1425165438957;
        Sat, 28 Feb 2015 15:17:18 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id xj4si946157pbc.2.2015.02.28.15.17.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 15:17:18 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id li10so3149932pab.13
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 15:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3x7gbFCp392YVYqEWB8yRmA7YCd2vcb0ghbGD9/lDaY=;
        b=p4w4kTY9wUJDCcuINrlQv6IWxa6Ay4zEBcSpVj9s9ZTJvu2zXvQFxawE58SD2XlVUX
         dOpwPk2VjPpK5Ri4r+NxFPhwDb6ojySHMVs+hMwvuVKB2IllP86m+v3vH+bOs5VBUAbd
         CChERUCr8P8QIxZbqAOy28JGiU26qSKl5lwpSOTXN2QADck4Dle5PI+AE9xpcN6Ebe3q
         WzMgnV8HCBVzeMflzQHjZ5eHGuF8GXDE9ZqTWOwdKSYQV0FTKCQbnznoOlWHTwdWVz6W
         e+bVAWLNvbm8JqCDI3yhO9B9F1nXxtkZR55oQqzoeHUrFsDxOM7CXf3W5l+z8EZy/DM5
         RVjA==
X-Received: by 10.70.89.99 with SMTP id bn3mr34905245pdb.149.1425165438773;
        Sat, 28 Feb 2015 15:17:18 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id p4sm7695567pdl.87.2015.02.28.15.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 15:17:18 -0800 (PST)
Date: Sun, 1 Mar 2015 04:48:31 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Use netdev_info instead of printk.
Message-ID: <20150228231831.GA10144@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses netdev_info instead of printk(KERN_INFO..)
as this is network driver to fix the following
checkpatch.pl warning:

WARNING: Prefer netdev_info(netdev, ... then dev_info(dev, ...
then pr_info(...  to printk(KERN_INFO ...

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
index c233a1c..b2b5716 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
@@ -254,7 +254,7 @@ static int r8192se_wx_set_radio(struct net_device *dev,
 
 	down(&priv->wx_sem);
 
-	printk(KERN_INFO "%s(): set radio ! extra is %d\n", __func__, *extra);
+	netdev_info(dev, "%s(): set radio ! extra is %d\n", __func__, *extra);
 	if ((*extra != 0) && (*extra != 1)) {
 		RT_TRACE(COMP_ERR, "%s(): set radio an err value,must 0(radio "
 			 "off) or 1(radio on)\n", __func__);
@@ -277,7 +277,7 @@ static int r8192se_wx_set_lps_awake_interval(struct net_device *dev,
 
 	down(&priv->wx_sem);
 
-	printk(KERN_INFO "%s(): set lps awake interval ! extra is %d\n",
+	netdev_info(dev, "%s(): set lps awake interval ! extra is %d\n",
 	       __func__, *extra);
 
 	pPSC->RegMaxLPSAwakeIntvl = *extra;
@@ -293,7 +293,7 @@ static int r8192se_wx_set_force_lps(struct net_device *dev,
 
 	down(&priv->wx_sem);
 
-	printk(KERN_INFO "%s(): force LPS ! extra is %d (1 is open 0 is "
+	netdev_info(dev, "%s(): force LPS ! extra is %d (1 is open 0 is "
 	       "close)\n", __func__, *extra);
 	priv->force_lps = *extra;
 	up(&priv->wx_sem);
@@ -311,7 +311,7 @@ static int r8192_wx_set_debugflag(struct net_device *dev,
 	if (priv->bHwRadioOff == true)
 		return 0;
 
-	printk(KERN_INFO "=====>%s(), *extra:%x, debugflag:%x\n", __func__,
+	netdev_info(dev, "=====>%s(), *extra:%x, debugflag:%x\n", __func__,
 	       *extra, rt_global_debug_component);
 	if (c > 0)
 		rt_global_debug_component |= (1<<c);
@@ -344,7 +344,7 @@ static int r8192_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 					up(&priv->wx_sem);
 					return -1;
 				} else {
-					printk(KERN_INFO "=========>%s(): "
+					netdev_info(dev, "=========>%s(): "
 					       "IPSLeave\n", __func__);
 					down(&priv->rtllib->ips_sem);
 					IPSLeave(dev);
@@ -471,7 +471,7 @@ static int r8192_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 	}
 
 	if (priv->bHwRadioOff == true) {
-		printk(KERN_INFO "================>%s(): hwradio off\n",
+		netdev_info(dev, "================>%s(): hwradio off\n",
 		       __func__);
 		return 0;
 	}
@@ -573,7 +573,7 @@ static int r8192_wx_set_essid(struct net_device *dev,
 	int ret;
 
 	if (priv->bHwRadioOff == true) {
-		printk(KERN_INFO "=========>%s():hw radio off,or Rf state is "
+		netdev_info(dev, "=========>%s():hw radio off,or Rf state is "
 		       "eRfOff, return\n", __func__);
 		return 0;
 	}
@@ -826,7 +826,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
 			set_swcam(dev, key_idx, key_idx, KEY_TYPE_WEP104,
 				  zero_addr[key_idx], 0, hwkey, 0);
 		} else {
-			 printk(KERN_INFO "wrong type in WEP, not WEP40 and WEP104\n");
+			 netdev_info(dev, "wrong type in WEP, not WEP40 and WEP104\n");
 		}
 	}
 
@@ -1148,7 +1148,7 @@ static int r8192_wx_set_PromiscuousMode(struct net_device *dev,
 			(rtllib_EnableIntelPromiscuousMode(dev, false)) :
 			(rtllib_DisableIntelPromiscuousMode(dev, false));
 
-		printk(KERN_INFO "=======>%s(), on = %d, filter src sta = %d\n",
+		netdev_info(dev, "=======>%s(), on = %d, filter src sta = %d\n",
 		       __func__, bPromiscuousOn, bFilterSourceStationFrame);
 	} else {
 		return -1;
-- 
1.9.1



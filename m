X-GM-THRID: 5240177819648
X-Received: by 10.66.100.198 with SMTP id fa6mr19456438pab.31.1425160428292;
        Sat, 28 Feb 2015 13:53:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.159 with SMTP id 31ls889621iop.32.gmail; Sat, 28 Feb
 2015 13:53:48 -0800 (PST)
X-Received: by 10.50.33.9 with SMTP id n9mr9548390igi.5.1425160428014;
        Sat, 28 Feb 2015 13:53:48 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id q9si96306pds.2.2015.02.28.13.53.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 13:53:47 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x229.google.com with SMTP id v10so29506056pde.7
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 13:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gwaMURt8w7sJ+hZkxc7aX9eXno/00PCBWqpa8cx+300=;
        b=HGff7Y/uVvrbSv9VM1HJHS/fdK7xcHhl/3octoXr1+LgZiVOqnC8I9H+PqNphA1glE
         dFhD48xTLhQbgoFdkSfGl3W8xgo/+XIeXHxqgqrRVe6clnhx2GOhN36+uweiFjDRWtgS
         MFr4mcMDpX0KcbAJUOfaUA5YrwCyPV60J1YBBFfp1q5VRVUkaWH2jUGlZSdvtSDR4GTP
         6wxbX+jYr4cgup4m2bXp5fWT5f/du3Ysyow/AsYkAEwF5tqczNWuqaKQn2ZMFxyQgJlw
         3EWt2FC4nk0QAE1BO5DjuX1cnYUv/GYLtAx7j7iC0acnsOaqtnyNwOxPYda9iHENKya1
         SDEQ==
X-Received: by 10.66.66.108 with SMTP id e12mr34452575pat.31.1425160427892;
        Sat, 28 Feb 2015 13:53:47 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id je2sm7663599pbd.44.2015.02.28.13.53.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 13:53:47 -0800 (PST)
Date: Sun, 1 Mar 2015 03:25:01 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Remove if conditions.
Message-ID: <20150228215501.GA5201@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes if conditions with no exececutable
statements in the bodies of those ifs and also no
variable assignments in the if conditional checks.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
index df0323f..c233a1c 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
@@ -572,10 +572,6 @@ static int r8192_wx_set_essid(struct net_device *dev,
 	struct r8192_priv *priv = rtllib_priv(dev);
 	int ret;
 
-	if ((rtllib_act_scanning(priv->rtllib, false)) &&
-	    !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN)) {
-		;	/* TODO - get rid of if */
-	}
 	if (priv->bHwRadioOff == true) {
 		printk(KERN_INFO "=========>%s():hw radio off,or Rf state is "
 		       "eRfOff, return\n", __func__);
@@ -708,11 +704,6 @@ static int r8192_wx_set_wap(struct net_device *dev,
 	int ret;
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if ((rtllib_act_scanning(priv->rtllib, false)) &&
-	    !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN)) {
-		;	/* TODO - get rid of if */
-	}
-
 	if (priv->bHwRadioOff == true)
 		return 0;
 
@@ -763,9 +754,6 @@ static int r8192_wx_set_enc(struct net_device *dev,
 			     {0x00, 0x00, 0x00, 0x00, 0x00, 0x03} };
 	int i;
 
-	if ((rtllib_act_scanning(priv->rtllib, false)) &&
-	   !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN))
-		;	/* TODO - get rid of if */
 	if (priv->bHwRadioOff == true)
 		return 0;
 
-- 
1.9.1



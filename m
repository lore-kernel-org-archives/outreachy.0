X-GM-THRID: 6211184706500689920
X-Received: by 10.129.84.198 with SMTP id i189mr3297946ywb.32.1446154133721;
        Thu, 29 Oct 2015 14:28:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.222 with SMTP id s91ls381931ioi.76.gmail; Thu, 29 Oct
 2015 14:28:53 -0700 (PDT)
X-Received: by 10.107.128.158 with SMTP id k30mr4375214ioi.33.1446154133152;
        Thu, 29 Oct 2015 14:28:53 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id fa8si391763pab.1.2015.10.29.14.28.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 14:28:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv9so53722864pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 14:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XBHlRwkspFvE1A02kk3wOayWIk9W2ycwEJc0VK9nB60=;
        b=e42Y2MGYJ3oVb752+GwI8danVaHQ7d8GUHA4GRfmFcAM3cJdovQEiZ6KNleB+Vp/wC
         wgCHpQbzDiJyEJHX+jjss1V2o4+blK0alTAqj1rt2xy0Y6aouWj/eeVKELbIFVklamFQ
         VPz4g0ZtA2n3lu6A1eLe8iucNywRsL0Ozli1a7CvDRqoBiUOPhUukAGvsQ8XvqJMqxdN
         yvAeiL+5u8vodAkBS1slqQDd9zJiDaXg1QQKJqb9q55y1cpq5Cf3DYcTiXLvwyWZkweI
         Z3Fp5+f9fCoNGjo7ce8oGAJL1k3NzHAd6BSTnek7SsvLAHt9EUXfIEfiIsHoi8WpJjb3
         Bbrg==
X-Received: by 10.68.142.129 with SMTP id rw1mr4245308pbb.149.1446154132968;
        Thu, 29 Oct 2015 14:28:52 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.136])
        by smtp.gmail.com with ESMTPSA id sn9sm4072210pac.16.2015.10.29.14.28.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 14:28:52 -0700 (PDT)
Date: Fri, 30 Oct 2015 02:58:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: Remove unused function
Message-ID: <20151029212847.GA23256@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop function that is declared but not called anywhere.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 28b54ba..956458a 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -5060,21 +5060,6 @@ static void __exit rtl8192_usb_module_exit(void)
 	RT_TRACE(COMP_DOWN, "Exiting");
 }
 
-
-void rtl8192_try_wake_queue(struct net_device *dev, int pri)
-{
-	unsigned long flags;
-	short enough_desc;
-	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
-
-	spin_lock_irqsave(&priv->tx_lock, flags);
-	enough_desc = check_nic_enough_desc(dev, pri);
-	spin_unlock_irqrestore(&priv->tx_lock, flags);
-
-	if (enough_desc)
-		ieee80211_wake_queue(priv->ieee80211);
-}
-
 void EnableHWSecurityConfig8192(struct net_device *dev)
 {
 	u8 SECR_value = 0x0;
-- 
1.9.1



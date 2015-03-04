X-GM-THRID: 5240177819648
X-Received: by 10.182.248.227 with SMTP id yp3mr3757606obc.22.1425458627610;
        Wed, 04 Mar 2015 00:43:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.98 with SMTP id rv2ls123533igb.34.gmail; Wed, 04 Mar
 2015 00:43:47 -0800 (PST)
X-Received: by 10.50.72.98 with SMTP id c2mr5701189igv.0.1425458627366;
        Wed, 04 Mar 2015 00:43:47 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id bo1si445032pbc.0.2015.03.04.00.43.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 00:43:47 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjg10 with SMTP id g10so55795858pdj.1
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 00:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4l7zy1l8rlJB19nbeRyQW5jo5siccg9NVpveSgLIb64=;
        b=ZcyJSFB+y8cOpK+Qda0dDNxtlsnis/i9NPbG/8rydAQm9RfND8e6JgCbisgrNBeuaI
         346P2rwHx5mUs9nvilqjl8pvmQkACgDhH0IbqMZzfWGKbr++oumbuBFMI0h0bnFZU9LN
         57Z84flv+iYodLT47Z3iyI7JhSMe6UqmF1iokhEMt12HY6ug5BXWDT335cHuytjBnlBH
         iuiX0YtjW3kdhNf4l04oT7akuuvlZFAAUdOdJZoZ4OADk45xMnchWCnM9dBWah+4XABZ
         zTBxPQDnmbdlr+7Xc7BM6ytQoch03PCxkbZ49TkiSMhn7ZQPE1iTUH6U9c5wCJBrJQwY
         y3Dw==
X-Received: by 10.70.135.165 with SMTP id pt5mr4742529pdb.101.1425458627153;
        Wed, 04 Mar 2015 00:43:47 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id d4sm3231834pds.60.2015.03.04.00.43.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 00:43:46 -0800 (PST)
Date: Wed, 4 Mar 2015 14:15:05 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192e: Remove if conditions.
Message-ID: <20150304084505.GA8656@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes if conditions with no exececutable
statements in the bodies of those ifs and also no variable
assignments in the if conditional checks. The call to
rtllib_act_scanning in the condition doesn't have any side
effects as it too performs conditional checks without changing
any values. Hence, it's safe to remove the if condition.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
    -Added an explanation of why this commit is safe in
     the commit message.

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



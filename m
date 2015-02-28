X-GM-THRID: 5139032178688
X-Received: by 10.112.219.102 with SMTP id pn6mr2770444lbc.12.1425147644077;
        Sat, 28 Feb 2015 10:20:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.101 with SMTP id gt5ls317767wib.28.gmail; Sat, 28 Feb
 2015 10:20:43 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr2801666wjb.1.1425147643824;
        Sat, 28 Feb 2015 10:20:43 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id ew5si349982wid.1.2015.02.28.10.20.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 10:20:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id n12so26153975wgh.1
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 10:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kPMBKcyMuDrhunATvq+wWsajEvYhf/H7rahkdj6q014=;
        b=QMWC/2cyWPUylLPrC8h0saRsmfwylo7ZjlZsCBmaLet8SZ/fzrwx7uKZEdpwuUDAcO
         4KyQi6Cn8qDAcrZ1m7S/rr5Aw/tq0G2LBDy1elPXQyuZcjRFXJb1N/r4yhWjO9r2MXV9
         QjCWzwxd0gl2TpuRliWgZE6CQU/OFEnHAFazLkgvfoJvGOF0HvXFO5ZjMfbKmFv7a5Jw
         oDH9NBhSOf6k2CBlTZBzFJ7Q33f1DERPcFo8mjYUEgPDoVxx1J7WQWS7vrNR5yfyRoGg
         ZUn8bNzC7lqaUb3gUlprePPZRoR51DxefpGUa+oIUt2kkM8WlyuKqHED06g4O9dkJ81b
         Ul/A==
X-Received: by 10.180.90.176 with SMTP id bx16mr18979575wib.14.1425147643760;
        Sat, 28 Feb 2015 10:20:43 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id gm2sm8019463wib.5.2015.02.28.10.20.42
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 10:20:43 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/3] Staging: rtl8192e: Replace printk with netdev_dbg, netdev_info, or netdev_warn
Date: Sat, 28 Feb 2015 19:20:36 +0100
Message-Id: <e558c09b852c7c9530743cfb4078f9ee41448a9c.1425147517.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425147517.git.ksenija.stanojevic@gmail.com>
References: <cover.1425147517.git.ksenija.stanojevic@gmail.com>

For network systems netdev_dbg, netdev_info or netdev_warn is preferred over
printk. Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 9e0f975..02faaf3 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -390,7 +390,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 			kfree(new_crypt);
 			new_crypt = NULL;
 
-			printk(KERN_WARNING "%s: could not initialize WEP: "
+			netdev_warn(dev, "%s: could not initialize WEP: "
 			       "load module rtllib_crypt_wep\n",
 			       dev->name);
 			return -EOPNOTSUPP;
@@ -423,7 +423,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 					     NULL, (*crypt)->priv);
 		if (len == 0) {
 			/* Set a default key of all 0 */
-			printk(KERN_INFO "Setting key %d to all zero.\n",
+			netdev_info(ieee->dev, "Setting key %d to all zero.\n",
 					   key);
 
 			RTLLIB_DEBUG_WX("Setting key %d to all zero.\n",
@@ -469,7 +469,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 	if (ieee->reset_on_keychange &&
 	    ieee->iw_mode != IW_MODE_INFRA &&
 	    ieee->reset_port && ieee->reset_port(dev)) {
-		printk(KERN_DEBUG "%s: reset_port failed\n", dev->name);
+		netdev_dbg(dev, "%s: reset_port failed\n", dev->name);
 		return -EINVAL;
 	}
 	return 0;
@@ -596,7 +596,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 		ret = -EINVAL;
 		goto done;
 	}
-	printk(KERN_INFO "alg name:%s\n", alg);
+	netdev_info(dev, "alg name:%s\n", alg);
 
 	ops = lib80211_get_crypto_ops(alg);
 	if (ops == NULL) {
@@ -610,7 +610,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 	if (ops == NULL) {
 		RTLLIB_DEBUG_WX("%s: unknown crypto alg %d\n",
 				   dev->name, ext->alg);
-		printk(KERN_INFO "========>unknown crypto alg %d\n", ext->alg);
+		netdev_info(dev, "========>unknown crypto alg %d\n", ext->alg);
 		ret = -EINVAL;
 		goto done;
 	}
@@ -642,7 +642,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 	    (*crypt)->ops->set_key(ext->key, ext->key_len, ext->rx_seq,
 				   (*crypt)->priv) < 0) {
 		RTLLIB_DEBUG_WX("%s: key setting failed\n", dev->name);
-		printk(KERN_INFO "key setting failed\n");
+		netdev_info(dev, "key setting failed\n");
 		ret = -EINVAL;
 		goto done;
 	}
@@ -759,9 +759,9 @@ int rtllib_wx_set_mlme(struct rtllib_device *ieee,
 
 	case IW_MLME_DISASSOC:
 		if (deauth)
-			printk(KERN_INFO "disauth packet !\n");
+			netdev_info(ieee->dev, "disauth packet !\n");
 		else
-			printk(KERN_INFO "dis associate packet!\n");
+			netdev_info(ieee->dev, "dis associate packet!\n");
 
 		ieee->cannot_notify = true;
 
-- 
1.9.1



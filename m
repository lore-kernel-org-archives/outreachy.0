X-GM-THRID: 4172222038016
X-Received: by 10.112.138.202 with SMTP id qs10mr1599374lbb.24.1424990959489;
        Thu, 26 Feb 2015 14:49:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.72 with SMTP id k8ls5186wif.35.canary; Thu, 26 Feb 2015
 14:49:19 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr40576wid.1.1424990959179;
        Thu, 26 Feb 2015 14:49:19 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id i7si13150wif.0.2015.02.26.14.49.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 14:49:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id w62so15463512wes.9
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 14:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=C0GRcftfmb4I9gR7aaKMvPAGZ7M9CEz+9x1XwH3ULyY=;
        b=w9w27mDreACxRV0LYdXqPO2H30/2er4yQNLqXMuLAWg3/d5FBkir6d9on2EgsghWaH
         4l/L4PM7S3TYXKDrAYYEexF33M4TXIb2Qxvn2nMCVdE0ueJaTw3N6KCDexch1PRbFhEy
         lOJvbsHthYybBqN9mwE8M8pX7ifPpVfFD+z9/GXajqqWlPkjw7JZHTJmO/jS3546pf75
         oO4FVYNLbIhzZ3140irKcE+SuTRRO8IOhnkdMAbbvZloBOwzmzJ3pyQSDtSRv0rWornK
         SDvsuEvv3gQNXov+FS5gHRc9BF38Jv70rEhkZnxnKSEezS/qct9P2okcyokb6RB05PlL
         D7hQ==
X-Received: by 10.194.108.9 with SMTP id hg9mr22074261wjb.68.1424990958961;
        Thu, 26 Feb 2015 14:49:18 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id j5sm246786wie.3.2015.02.26.14.49.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 14:49:18 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3] Staging: rtl8192u: Replace printk() with pr_debug()
Date: Thu, 26 Feb 2015 23:49:10 +0100
Message-Id: <1424990950-10390-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

For dynamic debugging netdev_dbg(), dev_dbg() or  pr_debug() macro is
preferred over printk(), which is the raw way to print something.
Network system has it's own printk format, netdev_dbg, but in this case
function's argument list has no  pointer to a struct netdevice so
pr_debug is used instead.
Issue found by checkpatch.pl.
---
v3: Change commit message.
v2: Include only changes made to this file.
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index 8c1bf1f..7fab680 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -49,14 +49,14 @@ static void *prism2_wep_init(int keyidx)
 
 	priv->tx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tx_tfm)) {
-		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
+		pr_debug("ieee80211_crypt_wep: could not allocate "
 		       "crypto API arc4\n");
 		priv->tx_tfm = NULL;
 		goto fail;
 	}
 	priv->rx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->rx_tfm)) {
-		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
+		pr_debug("ieee80211_crypt_wep: could not allocate "
 		       "crypto API arc4\n");
 		priv->rx_tfm = NULL;
 		goto fail;
-- 
1.9.1



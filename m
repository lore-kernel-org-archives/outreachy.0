X-GM-THRID: 4172222038016
X-Received: by 10.112.189.227 with SMTP id gl3mr1666916lbc.2.1424991790394;
        Thu, 26 Feb 2015 15:03:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.98.233 with SMTP id el9ls8602wib.8.gmail; Thu, 26 Feb 2015
 15:03:10 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr1637877wjc.3.1424991790112;
        Thu, 26 Feb 2015 15:03:10 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id r6si16567wix.0.2015.02.26.15.03.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:03:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id w55so15537018wes.5
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 15:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7Zt5FC0w9O33MDNy3dDXfHS7shL6Su3bM0KDRbiOmbc=;
        b=v3CI3FNhhIdvaCQrCu6xVrMTsG4zd9TTZCTbtPHuLPQ/M8Sc4GLjEusyCPKxoSbS/P
         mpwfB3JluE/2McD5lTXw3zXaWonf9stAGUNffo45HJyey8k0M9bMfuNB7J5OKzDTGn0v
         cgwpOFMKM7/fK+nqofhO27A1KqOMf8ODYaov+RWUPO6M92+padw68Cxcvu9h7wg2NYen
         pe3OQLGPTXSF9u9aJiPEw/cp3VrR6FemtOmWTZ9YMQiaKwccbb8bQW6VuvPim+USbk2t
         xCCZlgEohz6v7RmIz7qfw7jbq71/lP5/6QpFIijQAPGTHl3/ZGAfqGAAIDOKcAa6/Qja
         /b5A==
X-Received: by 10.194.48.74 with SMTP id j10mr22126582wjn.38.1424991790035;
        Thu, 26 Feb 2015 15:03:10 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id vh8sm3410853wjc.12.2015.02.26.15.03.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 15:03:09 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v4] Staging: rtl8192u: Replace printk() with pr_debug()
Date: Fri, 27 Feb 2015 00:03:02 +0100
Message-Id: <1424991782-10593-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

For dynamic debugging netdev_dbg(), dev_dbg() or  pr_debug() macro is
preferred over printk(), which is the raw way to print something.
Network system has it's own printk format, netdev_dbg, but in this case
function's argument list has no  pointer to a struct netdevice so
pr_debug is used instead.
Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v4: add Signed-off-by line at the end of commit message.
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



X-GM-THRID: 2590517493760
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,93e7be34ae9f918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr1610660lbb.11.1424721388815;
        Mon, 23 Feb 2015 11:56:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.6 with SMTP id v6ls584388laa.13.gmail; Mon, 23 Feb 2015
 11:56:28 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr777479lbb.17.1424721388257;
        Mon, 23 Feb 2015 11:56:28 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id ew5si771615wid.1.2015.02.23.11.56.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:56:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id bs8so20265525wib.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QLFLUsnPwf3Ux7Ttw3SRRsyG0DslDTlLeWSdcL9h41Q=;
        b=v+NotYyPkI1mIbsLTOUYZEAT/NexnOS99KZUOk8pixwL6ikugOWrtNF6r1QeNDa5v6
         kkhRRU51xJOOnIrbbz/FzlVBzjspiVb9LMFTsegD0uKpjDxbReSXsEGoEFF2ArB70skp
         lwwAxQWl3EKiVcSTrmyl4CsQWOb7VNS7r9F/+eKU4wY+lgMoxNq6H4Za6Qz+fOyxIcHo
         ox6CUk7jgOOWcMn2+MThiTD+390CgDxSGPIxDpRknmukDnPRJE5uBE/ZLk2fzBUKZ/4n
         x96kNJSx4o5P2jzCRrY/e09GcMZ0YhmBDk/PJmq+nYdFhuJxgZd6PBemVMYGxwUNTTHO
         K05Q==
X-Received: by 10.180.83.69 with SMTP id o5mr23235232wiy.48.1424721386697;
        Mon, 23 Feb 2015 11:56:26 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id bd8sm56990448wjc.21.2015.02.23.11.56.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 11:56:26 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: rtl8192u: Replace printk() with pr_debug()
Date: Mon, 23 Feb 2015 20:56:19 +0100
Message-Id: <1424721379-8173-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

For dynamic debugging pr_debug() macro is preferred over printk(), which
is the raw way to print something. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: include only changes made to this file.

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



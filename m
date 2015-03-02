X-GM-THRID: 6115060350976
X-Received: by 10.180.160.176 with SMTP id xl16mr2513047wib.6.1425333425902;
        Mon, 02 Mar 2015 13:57:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.161 with SMTP id dd1ls666327wib.49.canary; Mon, 02 Mar
 2015 13:57:05 -0800 (PST)
X-Received: by 10.180.75.232 with SMTP id f8mr2516267wiw.0.1425333425656;
        Mon, 02 Mar 2015 13:57:05 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id by11si787616wib.1.2015.03.02.13.57.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 13:57:05 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx12 with SMTP id x12so36258078wgg.11
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 13:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZDTTEEuKyXgvX93G7/S9cQcn2xSh4vu8WHunv+TLgO4=;
        b=KynoLZz/tgYGl/3ewlf9y7vVAUBrEViXnj5qenwxCKOBk8XKoLjDMCeEDLVf8bXTOk
         84WTG1kcBcOTX4GMpY2IukdbAyjjanM/Rc5xThc4FuAMHIHmEjFTsKJ3f7tMS7PIoZtO
         nvPqZ8heE1FHwQUWWUu9hFoAhn/yKJ5plHOI1aLQbo/RnjtrXevfJSi2J7/KfhIQt6Lh
         Fx4Mnz4i2uSOPVH9+MnIUluvzVUj4zpK47HrHkGhlZl+Nlq8Sg24a6qlahA8Ki2PZ3hn
         AAiS1SNGaA1mNwN8KCJ5PWDtGept5N2Ys8Vz1pXqWdmnEUrgU4sOBXi/CDXV7Soqu/1O
         NndQ==
X-Received: by 10.180.87.165 with SMTP id az5mr39773558wib.29.1425333425572;
        Mon, 02 Mar 2015 13:57:05 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id q10sm20973794wjr.41.2015.03.02.13.57.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 13:57:04 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 2/2] Staging: rtl8192u: Fix quoted string split across lines
Date: Mon,  2 Mar 2015 23:56:55 +0200
Message-Id: <1425333415-5205-2-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425333415-5205-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425333415-5205-1-git-send-email-dilekuzulmez@gmail.com>

This patch fixes checkpatch.pl warning in file ieee80211_crypt_ccmp.c
WARNING: "quoted string split across lines warning"

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c    | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index 95f5fc7..344de83 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -73,8 +73,8 @@ static void *ieee80211_ccmp_init(int key_idx)
 
        priv->tfm = (void *)crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
 	if (IS_ERR(priv->tfm)) {
-		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate "
-		       "crypto API aes\n");
+		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate
+				crypto API aes\n");
 		priv->tfm = NULL;
 		goto fail;
 	}
@@ -284,16 +284,16 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	keyidx = pos[3];
 	if (!(keyidx & (1 << 5))) {
 		if (net_ratelimit()) {
-			printk(KERN_DEBUG "CCMP: received packet without ExtIV"
-			       " flag from %pM\n", hdr->addr2);
+			printk(KERN_DEBUG "CCMP: received packet without ExtIV flag from %pM\n",
+					hdr->addr2);
 		}
 		key->dot11RSNAStatsCCMPFormatErrors++;
 		return -2;
 	}
 	keyidx >>= 6;
 	if (key->key_idx != keyidx) {
-		printk(KERN_DEBUG "CCMP: RX tkey->key_idx=%d frame "
-		       "keyidx=%d priv=%p\n", key->key_idx, keyidx, priv);
+		printk(KERN_DEBUG "CCMP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
+				key->key_idx, keyidx, priv);
 		return -6;
 	}
 	if (!key->key_set) {
@@ -353,8 +353,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 
 		if (memcmp(mic, a, CCMP_MIC_LEN) != 0) {
 			if (net_ratelimit()) {
-				printk(KERN_DEBUG "CCMP: decrypt failed: STA="
-				"%pM\n", hdr->addr2);
+				printk(KERN_DEBUG "CCMP: decrypt failed: STA= %pM\n",
+						hdr->addr2);
 			}
 			key->dot11RSNAStatsCCMPDecryptErrors++;
 			return -5;
-- 
1.9.1



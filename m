X-GM-THRID: 5601444757504
X-Received: by 10.194.95.67 with SMTP id di3mr1849081wjb.0.1425246226136;
        Sun, 01 Mar 2015 13:43:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.242.132 with SMTP id wq4ls372692lac.30.gmail; Sun, 01 Mar
 2015 13:43:44 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr3396083lbc.22.1425246224610;
        Sun, 01 Mar 2015 13:43:44 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id o3si542066wib.2.2015.03.01.13.43.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:43:44 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so29898853wev.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xtwpApOd/8IjQTBzQvHogo3eYi8QgEpi++EWjOeFNRQ=;
        b=nYzJhcZlZXuSVdlGIdi3yrx+tnrmtZ8lfHZi9PywjjezScBleObhcHJiRKbqAPN3Di
         1DOQDR/s2o5jbgCEn6fGn60MhbJjKO8Ev358gCW6S0DxEUJGAJdnW3merWn+R9GuLZS2
         4FgL7Dz0JjSRw+pel6kD4kuyXdstFfQQlFj5P8pED0Pfa5M3TBfpMp0+/0izcR/cgUuc
         dvhHzlg8kFFWxUJ4/EAqsOOU4JXWzaVG8KxI9U17kLb7FTDwzoIJKIG96gx3oZeWEAN6
         PbCgnUWcl8Feynz2lty3snDQMKp6Zgm2M4/oMEFqt5GpTFQI8MpwJDLG45JbFBHzUmjg
         nh8w==
X-Received: by 10.194.210.103 with SMTP id mt7mr53026123wjc.103.1425246224484;
        Sun, 01 Mar 2015 13:43:44 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id lx10sm16407016wjb.17.2015.03.01.13.43.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 13:43:43 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Move { up one line.
Date: Sun,  1 Mar 2015 23:43:38 +0200
Message-Id: <1425246218-11692-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

That open brace { should be on the previous line.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index 8962de7..4cf566f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -140,8 +140,7 @@ static int prism2_wep_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	/* Copy rest of the WEP key (the secret part) */
 	memcpy(key + 3, wep->key, wep->key_len);
 
-	if (!tcb_desc->bHwSec)
-	{
+	if (!tcb_desc->bHwSec) {
 
 		/* Append little-endian CRC32 and encrypt it to produce ICV */
 		crc = ~crc32_le(~0, pos, len);
@@ -198,8 +197,7 @@ static int prism2_wep_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	/* Apply RC4 to data and compute CRC32 over decrypted data */
 	plen = skb->len - hdr_len - 8;
 
-	if (!tcb_desc->bHwSec)
-	{
+	if (!tcb_desc->bHwSec) {
 		crypto_blkcipher_setkey(wep->rx_tfm, key, klen);
 		sg_init_one(&sg, pos, plen+4);
 
-- 
1.9.1



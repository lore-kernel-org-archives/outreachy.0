X-GM-THRID: 5617484824576
X-Received: by 10.180.11.34 with SMTP id n2mr1727687wib.2.1425246721549;
        Sun, 01 Mar 2015 13:52:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.240.201 with SMTP id wc9ls446763wic.2.gmail; Sun, 01 Mar
 2015 13:52:01 -0800 (PST)
X-Received: by 10.194.53.225 with SMTP id e1mr842228wjp.4.1425246721281;
        Sun, 01 Mar 2015 13:52:01 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id i7si551666wif.0.2015.03.01.13.52.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:52:01 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl2 with SMTP id l2so30012012wgh.9
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=zx4iCTqGOBVEm3W2yQ4ga5I1/Mkx0SW1/exJ5LEoSJs=;
        b=s19LaCiBYlPPNy4UMOdRkNF9EhmPuGkAb56pJSf1eOEyTgPmsU4o19bSr19ntRzCJL
         F8k0ZgB5mP2krGKZ9XW+TfMXyQMaFsPQMOanQqy33huzGAa8kwygMRnkrhzZ3oD57ZJ0
         OvG3yjHHeHPb32mQcNoBkFAQnLsZkNkTKnmfY8EmYdmx2SRgLmGs/oo344vTu1Qno2ZB
         D2WYxnzvFUrXM6NsDSr9fs1Fi8vimx2wj2flBuq+ztmIr8pKkV7ywRvW6EVb84XEpPwJ
         Y5HfGZHwLOzQoTskkm7Q8r8KQ103GE24IIh6NnzACStUNlsHNeeVx7r7nMsqkYTYeuXV
         4lEw==
X-Received: by 10.181.13.14 with SMTP id eu14mr29641790wid.2.1425246721207;
        Sun, 01 Mar 2015 13:52:01 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id bd3sm13264631wib.17.2015.03.01.13.52.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 13:52:00 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Add blank line after declarations
Date: Sun,  1 Mar 2015 23:51:54 +0200
Message-Id: <1425246714-12452-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c WARNING:
Missing a blank line after declarations

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index ea6efd2..6cac354 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -109,6 +109,7 @@ static int prism2_wep_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	u32 crc;
 	u8 *icv;
 	struct scatterlist sg;
+
 	if (skb_headroom(skb) < 4 || skb_tailroom(skb) < 4 ||
 	    skb->len < hdr_len)
 		return -1;
@@ -127,6 +128,7 @@ static int prism2_wep_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	 * can be used to speedup attacks, so avoid using them. */
 	if ((wep->iv & 0xff00) == 0xff00) {
 		u8 B = (wep->iv >> 16) & 0xff;
+
 		if (B >= 3 && B < klen)
 			wep->iv += 0x0100;
 	}
@@ -178,6 +180,7 @@ static int prism2_wep_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	u32 crc;
 	u8 icv[4];
 	struct scatterlist sg;
+
 	if (skb->len < hdr_len + 8)
 		return -1;
 
@@ -253,6 +256,7 @@ static int prism2_wep_get_key(void *key, int len, u8 *seq, void *priv)
 static char *prism2_wep_print_stats(char *p, void *priv)
 {
 	struct prism2_wep_data *wep = priv;
+
 	p += sprintf(p, "key[%d] alg=WEP len=%d\n",
 		     wep->key_idx, wep->key_len);
 	return p;
-- 
1.9.1



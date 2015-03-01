X-GM-THRID: 5601444757504
X-Received: by 10.112.156.65 with SMTP id wc1mr657576lbb.7.1425245703816;
        Sun, 01 Mar 2015 13:35:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.139 with SMTP id l11ls163758wiv.33.gmail; Sun, 01 Mar
 2015 13:35:03 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr1719935wib.4.1425245703675;
        Sun, 01 Mar 2015 13:35:03 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id l8si567557wia.0.2015.03.01.13.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widem10 with SMTP id em10so10783990wid.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=aNdUQsJ0/j0qUI+JGCjinc022oodQRGa7EPDWtEnLr0=;
        b=DxWVMSG3uNl/tkTh5WuB/ErqptvaFT3zhun7ELMkB21oqcEBgbZU89bIrtaZSFFzaY
         h77gATTcGCliSKVTId8q5nyNxmUKi2xyJiYP+jJ5Qu3g7lhbrFcEHrR5KW55MtMJnzrE
         athGbv+NocpiskZ9MUq96P8pEX8Kc/NlAuPh0IFbbstmey68S8vl0vjh44QslfoQy2du
         Ubp7dn35D6FGZSEd0OUW4xtHIjP71pa00bWNEYCi5QoTibyfsypBiARg3C2Xx8WM+upI
         d2RRnnkq0tj9uk3GVD42nOfK+DeQzAty68Nh9Y+zmqr1ekbkftCWg1MnCUj4+A7yPk0n
         qdtw==
X-Received: by 10.180.108.199 with SMTP id hm7mr29285749wib.5.1425245703606;
        Sun, 01 Mar 2015 13:35:03 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id dq1sm5257779wib.20.2015.03.01.13.35.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 13:35:03 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Move { up one line.
Date: Sun,  1 Mar 2015 23:34:57 +0200
Message-Id: <1425245697-11270-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

That open brace { should be on the previous line.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index 99c5d89..f7a978c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -229,8 +229,7 @@ static int ieee80211_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 
 
 	hdr = (struct ieee80211_hdr_4addr *) skb->data;
-	if (!tcb_desc->bHwSec)
-	{
+	if (!tcb_desc->bHwSec) {
 		int blocks, last, len;
 		u8 *mic;
 		u8 *b0 = key->tx_b0;
@@ -322,8 +321,7 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		key->dot11RSNAStatsCCMPReplays++;
 		return -4;
 	}
-	if (!tcb_desc->bHwSec)
-	{
+	if (!tcb_desc->bHwSec) {
 		size_t data_len = skb->len - hdr_len - CCMP_HDR_LEN - CCMP_MIC_LEN;
 		u8 *mic = skb->data + skb->len - CCMP_MIC_LEN;
 		u8 *b0 = key->rx_b0;
-- 
1.9.1



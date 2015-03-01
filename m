X-GM-THRID: 5486072037376
X-Received: by 10.112.156.65 with SMTP id wc1mr575107lbb.7.1425230381076;
        Sun, 01 Mar 2015 09:19:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.168 with SMTP id e8ls359444laf.72.gmail; Sun, 01 Mar
 2015 09:19:40 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr3231568lan.1.1425230380659;
        Sun, 01 Mar 2015 09:19:40 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id r6si519103wix.0.2015.03.01.09.19.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 09:19:40 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id l15so10024009wiw.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 09:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=UbOAlmbTmSAXqrgHL7xfYtZSudcxsjUQdD/91CWHzQw=;
        b=CtW+0Ow9gwYobWEYJFdMARtkVMM6/Nad0t63s+i65NwlST85Huld2tznl9hZ+hq2nr
         k//x5sldNR4xtrl7ywH3EzEHQFitoFR6FNSmMAA82EV8as8ho3o+Vwl1+gHvNrvfaMF9
         r69UGz4bas1+g4Fi/pauehpggbq6Gu5PykckHlEeyffAoTcAffTbZSnmZw2/eGcYKC6E
         f72wUgbsgUkow8UN/m+t7RYnBRqnJ4zfqZkgvjARqza+psxZ/fd+gbng+/UBKYRPfcqE
         CUxTHSDNIkePCXpFCMgqDO58FzDDFqhB6NP/jUrjeTD4Hrumzkg2PNj4rdjoZq/e3Slh
         oPYA==
X-Received: by 10.180.92.71 with SMTP id ck7mr15717217wib.48.1425230380571;
        Sun, 01 Mar 2015 09:19:40 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id gf11sm12337415wic.18.2015.03.01.09.19.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 09:19:40 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Convert comment from C99 style to C89 style
Date: Sun,  1 Mar 2015 19:19:23 +0200
Message-Id: <1425230363-5590-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl error:
ERROR: "Do not use C99 // comments"

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index 95f5fc7..f470cb6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -129,7 +129,7 @@ static void ccmp_init_blocks(struct crypto_tfm *tfm,
 	qc_included = ((WLAN_FC_GET_TYPE(fc) == IEEE80211_FTYPE_DATA) &&
 		       (WLAN_FC_GET_STYPE(fc) & 0x08));
 	*/
-	// fixed by David :2006.9.6
+	/* fixed by David :2006.9.6 */
 	qc_included = ((WLAN_FC_GET_TYPE(fc) == IEEE80211_FTYPE_DATA) &&
 		       (WLAN_FC_GET_STYPE(fc) & 0x80));
 	aad_len = 22;
@@ -208,7 +208,7 @@ static int ieee80211_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 	pos = skb_push(skb, CCMP_HDR_LEN);
 	memmove(pos, pos + CCMP_HDR_LEN, hdr_len);
 	pos += hdr_len;
-//	mic = skb_put(skb, CCMP_MIC_LEN);
+	/* mic = skb_put(skb, CCMP_MIC_LEN); */
 
 	i = CCMP_PN_LEN - 1;
 	while (i >= 0) {
@@ -238,7 +238,7 @@ static int ieee80211_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		u8 *e = key->tx_e;
 		u8 *s0 = key->tx_s0;
 
-		//mic is moved to here by john
+		/* mic is moved to here by john */
 		mic = skb_put(skb, CCMP_MIC_LEN);
 
 		ccmp_init_blocks(key->tfm, hdr, key->tx_pn, data_len, b0, b, s0);
@@ -443,7 +443,7 @@ static char *ieee80211_ccmp_print_stats(char *p, void *priv)
 
 void ieee80211_ccmp_null(void)
 {
-//    printk("============>%s()\n", __func__);
+	/* printk("============>%s()\n", __func__); */
 	return;
 }
 
-- 
1.9.1



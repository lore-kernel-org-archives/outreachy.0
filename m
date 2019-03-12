X-GM-THRID: 6666504737930608640
X-Received: by 2002:a67:ad14:: with SMTP id t20mr24320255vsl.21.1552375028405;
        Tue, 12 Mar 2019 00:17:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2c98:: with SMTP id w24ls3806849uaj.1.gmail; Tue, 12 Mar
 2019 00:17:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxkUkSyMN4txbEEiCUTv8LCB91aXPrvaOUmUNFFx62kufM0lC5+MRQGi3xXfJyocHEXXIGM
X-Received: by 2002:ab0:60c8:: with SMTP id g8mr23439678uam.18.1552375027620;
        Tue, 12 Mar 2019 00:17:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552375027; cv=none;
        d=google.com; s=arc-20160816;
        b=AE2eYEzfxKgYDivKH9XGeDcVYLpnJy12kRELooPV7q102TN9J17x0lobPfwTNZPnZe
         1Ad9h/cJu/inibBwIJUTn5Of6HsgmVoU3fTjuzkDgoZVBBekIrHXnKuXLUpE7+QYkhlB
         WyathtQEH7Q9dZCdHZVclEPjmnZnCUn1gQ80BRdvtjKkQVymkgjdmh328Qz7k/MCG8os
         hu5J9dYwR80pUX7M+mmLV1xkElK0TDnmpwtqrPLsdaGe7LAPR691Ks7c0esBx+oV+HZW
         rnwwOska2+LwE/Kx1c4p8n7UaHKdhx0I5Zh3fLbzePQiGX7Mx8z4bHfaUBcKgfRw0U9A
         dRKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=8jxkPJR5lp3zNXG82dX0Hsaed0y7dWcAwEmBR7yHgOE=;
        b=GbgCrYvQCHioRJ4j/tONZ8fyLGB6KNkahkC/n/CUW+jIVgczjZR1gpo+ZBm8lJVbdJ
         0/3H07rCjikSFlGo7fryLjRDQOq2IVkl8On7i6fIKfR792+6IvNAcEMoUTgbFQVt+prE
         Mk1dkalP7ajJhbFlQ8hfd4RF9hmsHYWFeqpK8qnilhoRDUYKCdolDNNFHHfrZGE3JIbn
         Rbu9qpV+woXscnXblH3KRD7Uflidt5bXQk7mJ53WV/sxAc2TNHdY4ueiZtqmZXIVDN6h
         1dqQvOap5Iu7O/cYlEOfErBzFfyr+2vEWs8jZrWCx86e7nuhyu+G561hwOMaRf80mJer
         ZepA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pP0E1Dsy;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m11si452801vkh.1.2019.03.12.00.17.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 00:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pP0E1Dsy;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id u9so1183239pfn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 00:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8jxkPJR5lp3zNXG82dX0Hsaed0y7dWcAwEmBR7yHgOE=;
        b=pP0E1Dsy4hKtCS0UJWx7ShG7R7NZfdvcUgK8M+T6GlLj+qCWtPaYGTlPbZ/tkQa2Gr
         rGHCmKTf5/xi13m3ERKNzBS/K1BzlWxSVa7/efQ2ZKHLnT2j+ePekX7Dt3Go7gRE9AOg
         NGQ1mVMijbWO3JCkNfoGz2JbN9q3gQzkpNFIB97QjIk7DlIiggOjbPkHFr16lHWBPD+S
         /BOtLjklazdArncrOny5mILPv/NdTg5iumEHOtpsNDPDBJCUBaEFXfOY0xm2oZzHF4Bp
         vX7+ZGxhDAh4FGbbx3znCT0FLvd2G0IXDx9kOEMmZoR3e9B/rOOTl2cg2IBwScSip+9d
         V9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8jxkPJR5lp3zNXG82dX0Hsaed0y7dWcAwEmBR7yHgOE=;
        b=BWW/3arNL7U1E+XV1VOkZ3ug0whfngqJ+2Id1yJ7cgY2oKpZHYhQ2YfYmbSoA0WbIy
         oFT4Zpz1XyVKNJY8f/TxkUb+6+O5veQA74stNSqXOB6nu2S9Jwce2R79o5mDEi5RAQYQ
         Qdv2Cp7d05MpjzKR6taSrjUD4UvjruHYSWHoyFHTX76ccRLqFW3qBFWg+6FdQpGbMo1i
         yvlZtqmPdMJ3BPr0+OVcwZVFghfmjwifILn43B5ZGCHclyBXLqVbBDLySk8AwycZWGxr
         FDD+bv7sd88ccaBZlYe3H41Gha+J79aRMFSUXWhK4Hx1BIjaXvG9biW5en1t22ArHi14
         oiwQ==
X-Gm-Message-State: APjAAAXaKALkQzv24ixhopPsEZIz9psC54i8kfzRepAM6Jd8eHoeQdMF
	7EjbpRvoLOawZaxs+cw20KXmpj5k35k=
X-Received: by 2002:aa7:8059:: with SMTP id y25mr36586856pfm.74.1552375027016;
        Tue, 12 Mar 2019 00:17:07 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([2409:4042:2e82:4b1a:b003:fc56:e6eb:d569])
        by smtp.googlemail.com with ESMTPSA id u11sm27743967pgq.28.2019.03.12.00.17.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 12 Mar 2019 00:17:06 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/2] staging: rtl8712: line over 80 characters.
Date: Tue, 12 Mar 2019 12:46:55 +0530
Message-Id: <1552375016-5169-1-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v2:
  - Put kmalloc on the next line.

 drivers/staging/rtl8712/hal_init.c     | 3 ++-
 drivers/staging/rtl8712/ieee80211.c    | 3 ++-
 drivers/staging/rtl8712/ieee80211.h    | 3 ++-
 drivers/staging/rtl8712/rtl871x_xmit.c | 8 ++++----
 4 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 4c6519c..401f0e4 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -100,7 +100,8 @@ static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
 		pfwpriv->rf_config = RTL8712_RFC_1T2R;
 	}
 	pfwpriv->mp_mode = (pregpriv->mp_mode == 1) ? 1 : 0;
-	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense; /* 0:off 1:on 2:auto */
+	/* 0:off 1:on 2:auto */
+	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense;
 	pfwpriv->vcs_mode = pregpriv->vcs_type; /* 1:RTS/CTS 2:CTS to self */
 	/* default enable turbo_mode */
 	pfwpriv->turbo_mode = ((pregpriv->wifi_test == 1) ? 0 : 1);
diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index 2eae11d..4cca739 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -238,7 +238,8 @@ unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
 	return NULL;
 }
 
-unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len, int limit)
+unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len,
+				 int limit)
 {
 	return r8712_get_ie(pie, _WPA2_IE_ID_, rsn_ie_len, limit);
 }
diff --git a/drivers/staging/rtl8712/ieee80211.h b/drivers/staging/rtl8712/ieee80211.h
index 1470771d..8098f69 100644
--- a/drivers/staging/rtl8712/ieee80211.h
+++ b/drivers/staging/rtl8712/ieee80211.h
@@ -728,7 +728,8 @@ struct registry_priv;
 
 u8 *r8712_set_ie(u8 *pbuf, sint index, uint len, u8 *source, uint *frlen);
 u8 *r8712_get_ie(u8 *pbuf, sint index, uint *len, sint limit);
-unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *rsn_ie_len, int limit);
+unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *rsn_ie_len,
+				int limit);
 unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len,
 				 int limit);
 int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 7c88574..f6fe8ea 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -75,8 +75,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	 * and initialize free_xmit_frame below.
 	 * Please also apply  free_txobj to link_up all the xmit_frames...
 	 */
-	pxmitpriv->pallocated_frame_buf = kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4,
-						  GFP_ATOMIC);
+	pxmitpriv->pallocated_frame_buf =
+		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);
 	if (!pxmitpriv->pallocated_frame_buf) {
 		pxmitpriv->pxmit_frame_buf = NULL;
 		return _FAIL;
@@ -114,8 +114,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	/*init xmit_buf*/
 	_init_queue(&pxmitpriv->free_xmitbuf_queue);
 	_init_queue(&pxmitpriv->pending_xmitbuf_queue);
-	pxmitpriv->pallocated_xmitbuf = kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4,
-						GFP_ATOMIC);
+	pxmitpriv->pallocated_xmitbuf =
+		kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4, GFP_ATOMIC);
 	if (!pxmitpriv->pallocated_xmitbuf) {
 		kfree(pxmitpriv->pallocated_frame_buf);
 		pxmitpriv->pallocated_frame_buf = NULL;
-- 
2.7.4



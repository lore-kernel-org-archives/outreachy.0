X-GM-THRID: 6463500175393423360
X-Received: by 10.107.161.84 with SMTP id k81mr2348796ioe.68.1504900906580;
        Fri, 08 Sep 2017 13:01:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.130.67 with SMTP id t64ls1925838itd.5.canary-gmail; Fri, 08
 Sep 2017 13:01:45 -0700 (PDT)
X-Received: by 10.107.146.214 with SMTP id u205mr2272326iod.46.1504900905710;
        Fri, 08 Sep 2017 13:01:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504900905; cv=none;
        d=google.com; s=arc-20160816;
        b=snzXMUTeuZh9uk8CnrjtCKYganEEz4k0XXdnX8HvukEWS6lozWL2w85t6CbfER0tnC
         W3V1tui4Cpd8VnCMZMySvHS9Nvaf6JjknDubSniopsiGLtaIWYX4kmZQ0oNtqtOW9HBg
         IrSj7RdHWrilu8xUcpk+g0xnxHwcPHpM3QeqtwfFHOiXASVBCrgmOZs7qUUF+N1uCl7H
         LeeY7LP58aD1BCAlTBJnguag+BmKF+ic/pwOlE9AQxJbgARAowTGqDH3D0RkSnLbe+Vo
         j9y27g4AQyD3PmL0OmrL4tV7RVu1H4qyX8ZBoHWO/aCiW2E6yECLMX726c23TjiGcyda
         AUEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=x4yuuS6m1ahEvmnctGXiEwC/JlHXVOzHsSQG4YEbXD4=;
        b=MTg9z9wkhDPHHK0H/uEMkUgTApyP4xInXt1gIMxvBt8Fzfej+lqKNH3lU4gcLDkioB
         qxp/Z60OBCE1SN8AVraz6L87yR5SjC/kNfL/kg3RwTvb9pdc90d85nHHQMM4KaHmurMc
         Et4VCJANA17FR5snYJkgaNDpDrSbEWh7ejXNX/PtfRFD7T0dXNO/nilmzi1tq5pONAq3
         dPXcKo2tqDl69nv+TIYxQJE6xxSc02m4udgmvHAGhom0+Q9OYIkWlsFI0Bo9MikTD64Y
         yG5KIRxDnHBarg6FNcE6FG8nKPLDv7b9d9WEkFFiBFQW7IQufHzYUiExb+rY+zCwTx35
         9Siw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IXFS0ZqS;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id k76si339509pfb.5.2017.09.08.13.01.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 13:01:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IXFS0ZqS;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q76so1865904pfq.5
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 13:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=x4yuuS6m1ahEvmnctGXiEwC/JlHXVOzHsSQG4YEbXD4=;
        b=IXFS0ZqSMJ9S0yJzaQtPGZQJy6+gUGfK8sPMAYLNPoBnwa17vOISj1tlOxw9dXIyzl
         jXUbAU98TfwMjGpw7hRqyxxZP+t9JNfkH5pxhuhyFilnq3pW9I5qVbdJ6wAMAXL4SyBK
         zSuH8LCG9wBc9hu+f/fDYZDuSKnsmuxVwzEHCWVnhy4+TeBJ6ELuhedzasYrBjRmDlN2
         kMbCsC2U9/SPFnguCAQV49mLWfQyGaOk186QnlAIv334seQh+DHvlbnOnEPW96dPEDYT
         +erDRsxSoeD3xh0gfv2h7ztBiCSF9aoNs6ebE8tXDfPbDbSALO8mS0bJsoKNAbp2wtS/
         ywOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=x4yuuS6m1ahEvmnctGXiEwC/JlHXVOzHsSQG4YEbXD4=;
        b=aA91xSlihzvi+4WmxjH7ggd4rd6XBPOq3b1knszpXqSOS2+faPSc2OxhQIfEHPGVUC
         xIf6UIP3qxfYcTTfUb+mXGY5rvfWfqiSGVRh4igI7/jYikvkKKe+U22jB9L8ecGRUA+P
         mpohPSiQlSk+EwPSwoSGsrQMBUB6Aul/g6r29OkIBv7nlQVSJLdQsLYxJvTfZEUIQIf/
         gfynU3nPjG89fnmotlhWSWQPdSakMy8raIn3wQPNUXBQf7AyPnUcbp/n3Nwzhb+CrS3y
         8fsxt0WN+rCs7rB7T4Se729nfy08V+ktxESiSPRlHw8czZnyCOboS9R0YR+7RkcQknoh
         itdA==
X-Gm-Message-State: AHPjjUinX36V8N5M86oGYVaundLZqZd8nnkOSGihMTlSjfG6ndD89ekx
	0bedmC2KfP7W6w==
X-Google-Smtp-Source: ADKCNb67Mw5Y1DPL3Dp3bLItsqAl+g/EVjxj25qfqctzwYfQj0sy1tjuHUbvj2ZJ3aEzPYXvN6Tevw==
X-Received: by 10.98.193.2 with SMTP id i2mr4117936pfg.207.1504900904557;
        Fri, 08 Sep 2017 13:01:44 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.9.172])
        by smtp.gmail.com with ESMTPSA id r15sm5172164pfj.41.2017.09.08.13.01.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 13:01:44 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: ccree: Merge assignment with return
Date: Sat,  9 Sep 2017 01:31:35 +0530
Message-Id: <1504900895-13110-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Return the return value of a function directly, instead of first saving it in a variable and then returning it. This change was made using the following
semantic patch by coccinelle.

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/ccree/ssi_aead.c | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
index 5abe6b2..6bb98f7 100644
--- a/drivers/staging/ccree/ssi_aead.c
+++ b/drivers/staging/ccree/ssi_aead.c
@@ -651,17 +651,14 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 {
 	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
-	int rc = 0;
-
+
 	if (keylen < 3)
 		return -EINVAL;

 	keylen -= 3;
 	memcpy(ctx->ctr_nonce, key + keylen, 3);

-	rc = ssi_aead_setkey(tfm, key, keylen);
-
-	return rc;
+	return ssi_aead_setkey(tfm, key, keylen);
 }
 #endif /*SSI_CC_HAS_AES_CCM*/

@@ -2214,8 +2211,7 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
 static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 {
 	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
-	int rc = 0;
-
+
 	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);

 	if (keylen < 4)
@@ -2224,16 +2220,13 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
 	keylen -= 4;
 	memcpy(ctx->ctr_nonce, key + keylen, 4);

-	rc = ssi_aead_setkey(tfm, key, keylen);
-
-	return rc;
+	return ssi_aead_setkey(tfm, key, keylen);
 }

 static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 {
 	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
-	int rc = 0;
-
+
 	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);

 	if (keylen < 4)
@@ -2242,9 +2235,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
 	keylen -= 4;
 	memcpy(ctx->ctr_nonce, key + keylen, 4);

-	rc = ssi_aead_setkey(tfm, key, keylen);
-
-	return rc;
+	return ssi_aead_setkey(tfm, key, keylen);
 }

 static int ssi_gcm_setauthsize(struct crypto_aead *authenc,
--
2.7.4



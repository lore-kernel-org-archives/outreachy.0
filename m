X-GM-THRID: 6463500175393423360
X-Received: by 10.84.240.65 with SMTP id h1mr3299261plt.10.1504943347296;
        Sat, 09 Sep 2017 00:49:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.147 with SMTP id e141ls2568752ite.1.gmail; Sat, 09 Sep
 2017 00:49:06 -0700 (PDT)
X-Received: by 10.99.158.17 with SMTP id s17mr3322936pgd.143.1504943346532;
        Sat, 09 Sep 2017 00:49:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504943346; cv=none;
        d=google.com; s=arc-20160816;
        b=0YE84XOT2OYzJUde1ETaBS2QUXBPX3+rfbKuIXUFmxD6ARJWfdIMHNpzGVhXmsauAH
         IxQADg+bh8ZO2MyqQVE/r68EaVIrBkMUXmQtx4K74swPfPBHz/NaKtdU/i8PSeuovdjJ
         IVKuAAabp61L8XSco1W3T8PfGdxitrTlSbPcUgi7Gfuk9yxCmwFFfHypAwE3tvhzL6Bk
         uyb5O/7XJyFnFOZ40ckSH7hlTi0lne1J8LwMvP785D6UTVJU1yrPFkiKQsnKGvzpKB4/
         DexX7FtsMIXL23lrgm45WXDfTUIP77TzmTxs8HPcuPUkcrWu1RqhrACOJdjUhaJCLZxu
         EMmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=JoAQfi6yel7sdqjPCHvQ84YzdnlKbzIYWwYDHM1nCb0=;
        b=QkbEZJQKwwqOzjNR5qFsoEZkbTTeADJwjXPZTPwY0sefef242ufsgwofkmrswl48oR
         uAAR8ycXg6sPV7dKaCg0fNieI7SMz6arLBIQjwpHaT943tV/fQv3uBlrHm2Qc1XC5mz9
         yPGQzHBLJ31gxz1H9GLLm+Oo2x8zQphBlmcnu2qgnwp1K5HONj2IXkNl9JhjDMP9G/YA
         PQqIweDYLMUHT0fwnSIsJILhDk2NrEXX6I4WCzE9BWQ98TW7JZcY7rOwY+tiFIiAM6J7
         UtQAOLbGP1hi/fE/LQOo0Z+7ewpOPY4cC9mljCdNpKIUgiWROeLMmDNcaptthduxZy2Q
         OoEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jZslgCBA;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id t77si440228pfi.13.2017.09.09.00.49.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 00:49:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jZslgCBA;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so712987pfg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 00:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JoAQfi6yel7sdqjPCHvQ84YzdnlKbzIYWwYDHM1nCb0=;
        b=jZslgCBAvbm66WUh2RkybAOuZ6SJtmvimB7QooyACzIoock4mT9wWvfFf8GWNB8XO5
         O4VoYu99ACRAcUs3BaV0h0fdQ7rK57goYuNRajwAjIjHe+xrfDtYOu+RnCruzbyR7g7l
         o0B2Ska+On/dmNK5SHOx154gKC74vB8aUwzMkcBg5P55ZPdhcZy2GaD6/uiqPMx30uEs
         JgC2qHkIWZYcxvAj7lgQFQze74zcYZtK3MNEMO/FjUM2a7Ttlk3uBWzr2h/m7h/7nnUk
         MoS/dU8x0WHSkBYbo4JrEV6iFCLh61p+qm/nguaAW91GEyj/wdAbQWhPMqHCi9Hwcur9
         OOSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JoAQfi6yel7sdqjPCHvQ84YzdnlKbzIYWwYDHM1nCb0=;
        b=rPgYVaXIeLNv8W/uamJQGR9ouncMY1tcrAFr6SJpuQYCZvjFTNUVML9FjhdjJSDoN0
         NFSqy3hPwxcsJBfBjqys18RQG7bAap0Q8TyE/Ek/r/G6KGepaxB2ZQLK4g5DZMIYIAY8
         gLub4LNce+jlsVzilC8eYXhzQsnG3zrKLRcIuKVRnEQ+uHwCB69VnFFtsCWU83R8xYbP
         mn4NoGn0pRF40QhcAzEk72LYfnOKyXSZ1uRi18eoQVreG3X66l8uJq2fNvRytxyk8ddN
         pAkr1NGwgrdt3Yhk8/Os8Uo/f8u6/QVF6y+P7fSh48cD9cXu6Gq2NBoZfzJLplsH1pHk
         mvUA==
X-Gm-Message-State: AHPjjUjx7wSrQ4kLKlifhYnFiGv80+dc3EzhTWiAgaX0MEeEsQ/sdqqp
	R4gnS40rr1D5mCZnMu0=
X-Google-Smtp-Source: ADKCNb6enrDX/UWDG/nqChZcDKk53mJ3ySB47fE5V7nmilfqqE0XuNlc2H2/IhEGGnB8RTv8/kCVzw==
X-Received: by 10.98.24.5 with SMTP id 5mr5775725pfy.18.1504943346243;
        Sat, 09 Sep 2017 00:49:06 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.9.172])
        by smtp.gmail.com with ESMTPSA id 195sm6804270pgg.42.2017.09.09.00.49.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 00:49:05 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v4] Staging: ccree: Merge assignment with return
Date: Sat,  9 Sep 2017 13:18:51 +0530
Message-Id: <1504943331-4636-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Merge the assignment and the return statements to return the value
directly. Done using coccinelle.

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
Changes in v4:
 -Edit commit message so that it respects 80 character limit
 -Remove unneeded blank lines
 -Remove declarations of variables that are not used

 drivers/staging/ccree/ssi_aead.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
index 5abe6b2..84fcb75 100644
--- a/drivers/staging/ccree/ssi_aead.c
+++ b/drivers/staging/ccree/ssi_aead.c
@@ -651,7 +651,6 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 {
 	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
-	int rc = 0;

 	if (keylen < 3)
 		return -EINVAL;
@@ -659,9 +658,7 @@ static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
 	keylen -= 3;
 	memcpy(ctx->ctr_nonce, key + keylen, 3);

-	rc = ssi_aead_setkey(tfm, key, keylen);
-
-	return rc;
+	return ssi_aead_setkey(tfm, key, keylen);
 }
 #endif /*SSI_CC_HAS_AES_CCM*/

@@ -2214,7 +2211,6 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
 static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 {
 	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
-	int rc = 0;

 	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);

@@ -2224,15 +2220,12 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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

 	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);

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



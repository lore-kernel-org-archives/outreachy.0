X-GM-THRID: 6463500175393423360
X-Received: by 10.84.240.12 with SMTP id y12mr2667357plk.12.1504907679718;
        Fri, 08 Sep 2017 14:54:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.197 with SMTP id p188ls887730iop.51.gmail; Fri, 08 Sep
 2017 14:54:38 -0700 (PDT)
X-Received: by 10.36.105.82 with SMTP id e79mr2317972itc.44.1504907678923;
        Fri, 08 Sep 2017 14:54:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504907678; cv=none;
        d=google.com; s=arc-20160816;
        b=TM9IS0Ulm1Oih+dm14Q2ih+Qf+HaYQRpY/LHuYBGfyUZ0thXAfUpmrjfmRIxB7m5Ic
         hjbRbOcegD4O1VdG+rJD82q2VvwAQU7VYoJJ6AVdlsnDY4ZIdyya2nsRt5pb3LdEUyxw
         Y+caqzn4w8OeMk018GHkOG13WzEKWi1Ws9GPuB7X88VshX2vfep8OdSrvqBrI52/IcZP
         Jx99GA/d4B3Zx+EQhUpLayAVkNJR/8pgK9tAf+96LNMo5SkXLXOP8/of6nNTw+N/JCgH
         AWKdOVao53Pgv0tCIkBo35WHXGwG/+DP68pC4qtncqXPi5T5c/bH+fXQLsnuWeDtJonN
         vn+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=5hDROTMnWGk7N9W/S5OvxE/Hjv47OD5el0C+5pAFuoo=;
        b=hxH7m1DGRtuS5j8Ah61M6M1ZcIxc0kOPbCVKbL6UNDHb+uvvMGJEoRNMbwJTUA3+uy
         yno0dek0Vljxt9i8Gkv+PD7bUNVn4OHXsjCEtfWN+ZpMQgE4oDEtnaJ8gMQiOyFMOY8Z
         Q5lvR1cOenaPR1xBGj72+ZeRN+D8imIb2CXn6XgqI8ORbvZSE0U4z8T1g5Thz/VOuY9z
         TkRDug/untDXJ8NSwLRoh5kKMbztVnBFIx5GpdvcxRk905LkKYoYSZHwujVGUc0Wdj9Y
         V5u7jrH7fbXUApXiLyWSMdy10Q3eX8u9MiGeyOXAkZo8rueqZ+GA2GLwpLxWmaduo9WQ
         M1Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hRM6Ts5s;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a12si351613pfd.2.2017.09.08.14.54.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 14:54:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hRM6Ts5s;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so190907pfg.4
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 14:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5hDROTMnWGk7N9W/S5OvxE/Hjv47OD5el0C+5pAFuoo=;
        b=hRM6Ts5sZkFXod+csC3Np4r4ldOv/vHFhHCLmlZL6TOgiVcrm6VchvFBAPsGAiRlrP
         Xt8nIepRaNPeQXgTL/src+zHMlZ9SvMdYhLtAZXyWfn5K1YMBnsWTA2FqVzxDtPS4t7y
         SltxVQov7pnGlw3Ti5iWlo8y2SHhLepNTAPN49JaUKJ71rnqQ8KhFX8SmUQDHoPIdJSa
         JjmHuMbocon2TuQ02v2ykR2I3qMJ4vkouc+/MwHUFiV9ObJ5Opq37QaqsBjgHWmyNBDw
         +br8f94TyOe7GKZC20yDrPhuzsBN4feEtUt5pmglCnU1k5vONKmCdQZkduS/0ZRMst0M
         tydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5hDROTMnWGk7N9W/S5OvxE/Hjv47OD5el0C+5pAFuoo=;
        b=VXFI+gSfZvNffCq/lNyU5ObdchMtqUMDCJqfjQC8i9DmdN5fOafwVEyIGnr7o2nnQt
         0B1rDfrGODipjydChfU5ei8Prqn/7M8C51fB6dxlbn18bgXmQVa0+3oUeRPqn14PDIMg
         qlKY7q5O+dk3NfJkmXLxyDY/icBE0zGvZJ3wi5NB7GqX4TFQAYhecPImTiXU22Iiivpk
         DooMGWvfqMVEA27DMbjyw9dnoXp823VqIggtCeo8G1CFLqAafKm2I/iUroSFa9O/i9fM
         ATaRkWxgliWUpLZtAeqzt7yGmP9kZNa6KfQ4Rga64wKaLs/dW0dJb4u/yi4ca3IeGeR9
         wrRQ==
X-Gm-Message-State: AHPjjUgahZYthgVm39qiCPdfZvE0HtiolJA8SyI5iZVJb0owF8aZHqwV
	RovaR5NWwdk0+g==
X-Google-Smtp-Source: ADKCNb5L39gQC+pZ1kYCbpqr4MqoPjhCHrbak9cCFcivKPs7PLyYEukoQPN0CsepdQ8CexGCKV1bmg==
X-Received: by 10.98.217.75 with SMTP id s72mr4463330pfg.158.1504907678699;
        Fri, 08 Sep 2017 14:54:38 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.9.172])
        by smtp.gmail.com with ESMTPSA id j14sm4449013pgs.15.2017.09.08.14.54.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 14:54:37 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v3] Staging: ccree: Merge assignment with return
Date: Sat,  9 Sep 2017 03:24:14 +0530
Message-Id: <1504907654-4914-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Merge the assignment and return statements to return the value
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
Changes in v3:
 -Edit commit message so that it respects 80 character limit.
 -Remove unneeded blank lines, that were added by mistake.

 drivers/staging/ccree/ssi_aead.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
index 5abe6b2..1d3b580 100644
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

@@ -2224,15 +2221,12 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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

@@ -2242,9 +2236,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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



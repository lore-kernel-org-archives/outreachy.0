X-GM-THRID: 6463500175393423360
X-Received: by 10.129.88.6 with SMTP id m6mr2612062ywb.42.1504904161000;
        Fri, 08 Sep 2017 13:56:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.97.24 with SMTP id v24ls842046iob.17.gmail; Fri, 08 Sep
 2017 13:56:00 -0700 (PDT)
X-Received: by 10.233.230.77 with SMTP id x13mr2169420qkl.59.1504904160231;
        Fri, 08 Sep 2017 13:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504904160; cv=none;
        d=google.com; s=arc-20160816;
        b=aGcyeYjQ6HJKJPUsXYGdkMFCcVyunjXMTXxQ0u5o4WHlkl2EUvZhb4yS8DPCL3Ausm
         my2IjkFpRnhus41A9n8FHqqD9h11J75F+IgmI8CMv7FmtdTo5WA74KA/Z3abKD6W7Uqt
         +o9TCHlGsoxwJg+SYtX7L+dsEoNlaq1Nm3gV286QXA1vdiTUmHBnnbZD1XSQy4gVdAve
         uDIgxNvvyRqpoaSCKNN9nN2oyHs4WvekAYyQ0Hi2jYgZypZUDlBq41IbLNgnldfMnVsA
         XLorcWzpNqZR6If/xV5zxqdZ0QzQoquTgmpr4IcODZYeu+tImG/MRJu4Ud25Cb5f7giB
         7Wzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Ny9GsPPjJ0z8ACK/24FBFryHq20CuR9702HxizrcLAI=;
        b=VISlOHrfywP8fOidx1pYsmWUNwBknpE3FmO9jXKmN0IEFbRtjMiv3nxKaYAxp2yE4N
         EJZ6CTKhL7lhVtGck1rj6ijr4czXmIXVWEHtXpu1zfIokUi5drs9+oU7pQdLrx1+p3o+
         WmvWqV5ykIRz8gUYdmeUra+rgJzpAS8AjeyDEiOcksrs7KNyftYHKJ2Zy9Upr/KkUVz2
         aAYYLcz8fB39Equ+YSRmTmKTX7dLH0RYub8rDJd8b77OYWK8xPNEFOhsvMHwZmfsYpaE
         DnjksBld5tJcGmh8eAqFZnDyhsKWwtm/f9cSl2lMUvK7rerriwnC0OMnhIGxjI5tqRek
         zStg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nK3NC+AW;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c19si329098pfk.9.2017.09.08.13.56.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 13:56:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nK3NC+AW;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g13so1931277pfm.2
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 13:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ny9GsPPjJ0z8ACK/24FBFryHq20CuR9702HxizrcLAI=;
        b=nK3NC+AW9L6SeKOW1eYyzyJm06GFyguojRou5OyUvuxF0aBX6XMc4UH3hczj9VjI55
         Bhm1Oy2ejZB+qFcKzHjqNjbmzhoWdDg7w/Sqy2eeTAuR7/SrA6BTOt1MCcys4O3y9h39
         xZW5XHmPEU88b6pC7HXdPsENZs7WXekfAxE62nQ8+756hOjbmavTnwvNMaMVWO8zvfeM
         B4WvdHjIqTeDBH2tDS8lBUZi15OiGZnz+sR+vxdQvyVyTnTYKm/LoHBD+qXBAAQJSSdI
         l5kJ+aovWKpFmtPaSs2SPfQbuWYbCI878ZosDwLE2yM8bNOCwyj1sgYL6r/rTXl8IAVO
         AlNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ny9GsPPjJ0z8ACK/24FBFryHq20CuR9702HxizrcLAI=;
        b=DrCSm5qB1vQfA3pdRJVRwnVJ8cw4ovPzXSPu0HaoWlNVWX31VpKKR1twJTF2cE4l+4
         +UjRTAuke1NPjfEuZE6wN3xGL8Yn/pGi0GlSuK3VC0OShFRg892UnhsYoDb6aRBfnKc5
         b2APSpWt9fNfwUPoPobTKHiuUXowf7OTzipiDo5W3kdZqiJTPD3F06Gm2d9QZKLnDBYB
         +Bc+B0Jgyu2w5UdSmj5A8g0eMQ3ehtFy7OANjGCElwgMZXMGOdzhtKhHfqXTLXoupug5
         M/DiIvfZ7RmpM1eNQM1WBpBXWFEFzGgKiuAlrE0Bjkokoj5ccZY5hKjf8mi8GPHZKQ4S
         oHDA==
X-Gm-Message-State: AHPjjUgS7OiFpRE2XnAHeKXS1JQAJ+xD8i/S47IfBvmCcrQAGuSMrhuZ
	StW8pYqkekvzYQ==
X-Google-Smtp-Source: ADKCNb6PfHMfuiE9D3GX/+V3AZ/tr/ZtEEdl6KPooEEZWttRm8uUr7z+SyeQunznfp+KYXV3mr1zCA==
X-Received: by 10.99.163.26 with SMTP id s26mr4422777pge.445.1504904159948;
        Fri, 08 Sep 2017 13:55:59 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.9.172])
        by smtp.gmail.com with ESMTPSA id 62sm4819566pfu.4.2017.09.08.13.55.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 13:55:59 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: ccree: Merge assignment with return
Date: Sat,  9 Sep 2017 02:25:35 +0530
Message-Id: <1504904135-3973-1-git-send-email-srishtishar@gmail.com>
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
Changes in v2:
 - Edit commit message so that it respects the 80 character limit.

 drivers/staging/ccree/ssi_aead.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ccree/ssi_aead.c b/drivers/staging/ccree/ssi_aead.c
index 5abe6b2..f4532ea 100644
--- a/drivers/staging/ccree/ssi_aead.c
+++ b/drivers/staging/ccree/ssi_aead.c
@@ -651,7 +651,7 @@ ssi_aead_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 {
 	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
-	int rc = 0;
+

 	if (keylen < 3)
 		return -EINVAL;
@@ -659,9 +659,7 @@ static int ssi_rfc4309_ccm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
 	keylen -= 3;
 	memcpy(ctx->ctr_nonce, key + keylen, 3);

-	rc = ssi_aead_setkey(tfm, key, keylen);
-
-	return rc;
+	return ssi_aead_setkey(tfm, key, keylen);
 }
 #endif /*SSI_CC_HAS_AES_CCM*/

@@ -2214,7 +2212,7 @@ static int ssi_rfc4309_ccm_decrypt(struct aead_request *req)
 static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
 {
 	struct ssi_aead_ctx *ctx = crypto_aead_ctx(tfm);
-	int rc = 0;
+

 	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);

@@ -2224,15 +2222,13 @@ static int ssi_rfc4106_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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
+

 	SSI_LOG_DEBUG("%s()  keylen %d, key %p\n", __func__, keylen, key);

@@ -2242,9 +2238,7 @@ static int ssi_rfc4543_gcm_setkey(struct crypto_aead *tfm, const u8 *key, unsign
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



X-GM-THRID: 10002918014976
X-Received: by 10.182.65.162 with SMTP id y2mr2139770obs.6.1427389821966;
        Thu, 26 Mar 2015 10:10:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.37 with SMTP id g34ls720841qgf.45.gmail; Thu, 26 Mar
 2015 10:10:21 -0700 (PDT)
X-Received: by 10.236.27.76 with SMTP id d52mr16960820yha.52.1427389821725;
        Thu, 26 Mar 2015 10:10:21 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id e5si762771qcg.1.2015.03.26.10.10.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 10:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id a8so101068851qgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 10:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nL39CJazz24cF1Oa5pSpDoR0jwJOkCoMmJMni1zbL9s=;
        b=cK7BIlVXKegf7V7nhAhCFvHxDSooQ73v1DSN8sdHee6FXyHX2o0PMdcdL3Hx62CGq3
         AHY4QictfqYrys7ga+VfH84rYJA4RQXGjo5ux57+NumysQKn1J5DKOwtHd8ukFTJNHUh
         kd11hjIl7hvHQRVFqjLdxkp20N0lUbb8zAvwuw/TDcQDV9LZioH8mKr/vFAAynLoE0Xe
         w5CC4qB1Do2jKsMXG89m9FfwwR05YhVnCGvmJsK22MKHYKBB7FHOmeRF9hYXzlJxhSFb
         jh5jhhO7fuGLhZHAFwbKbX7mOPTeAAdLms07k/+PNvwzipsVCU51SkdBr81ZlbgQTqzs
         K4Dg==
X-Received: by 10.140.106.244 with SMTP id e107mr19271665qgf.0.1427389792602;
        Thu, 26 Mar 2015 10:09:52 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id o19sm3797905qkh.25.2015.03.26.10.09.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2015 10:09:51 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH 7/8] staging: sm750fb: Move switch case trailing statment
Date: Thu, 26 Mar 2015 14:09:19 -0300
Message-Id: <42dbeb5519097d37b2d22c8d240a7b59cff51583.1427389602.git.helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>

This patch fixes the checkpatch.pl error:

ERROR: trailing statements should be on next line

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 4f2e0db..b30c183 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -236,11 +236,16 @@ unsigned int ddk750_getVMSize(void)
 	/* get frame buffer size from GPIO */
 	reg = FIELD_GET(PEEK32(MISC_CTRL), MISC_CTRL, LOCALMEM_SIZE);
 	switch (reg) {
-	case MISC_CTRL_LOCALMEM_SIZE_8M:  data = MB(8);  break; /* 8  Mega byte */
-	case MISC_CTRL_LOCALMEM_SIZE_16M: data = MB(16); break; /* 16 Mega byte */
-	case MISC_CTRL_LOCALMEM_SIZE_32M: data = MB(32); break; /* 32 Mega byte */
-	case MISC_CTRL_LOCALMEM_SIZE_64M: data = MB(64); break; /* 64 Mega byte */
-	default: data = 0;break;
+	case MISC_CTRL_LOCALMEM_SIZE_8M:
+		data = MB(8);  break; /* 8  Mega byte */
+	case MISC_CTRL_LOCALMEM_SIZE_16M:
+		data = MB(16); break; /* 16 Mega byte */
+	case MISC_CTRL_LOCALMEM_SIZE_32M:
+		data = MB(32); break; /* 32 Mega byte */
+	case MISC_CTRL_LOCALMEM_SIZE_64M:
+		data = MB(64); break; /* 64 Mega byte */
+	default:
+		data = 0;break;
 	}
 	return data;
 
-- 
1.9.1



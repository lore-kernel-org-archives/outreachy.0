X-GM-THRID: 6673855780112826368
X-Received: by 2002:a17:902:5181:: with SMTP id z1mr1000774plh.62.1553878136430;
        Fri, 29 Mar 2019 09:48:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls389738plb.6.gmail; Fri, 29
 Mar 2019 09:48:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwqkrQC38Y13NKASOQ2Pip/LEgNCnlYX0/wpxjiB9qJGVUqnrFqrFIBwCjQYN50fYsdSSzT
X-Received: by 2002:a17:902:4624:: with SMTP id o33mr813312pld.91.1553878135679;
        Fri, 29 Mar 2019 09:48:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553878135; cv=none;
        d=google.com; s=arc-20160816;
        b=Ix5XMQniN1DUrEDZT4bjCtLYMrtO6j8fVAhDzyMJKT0EP/jWn9QGVKuwXcu+K4+ijl
         /twSJJl2+D8/T5xu6pr9vBGwYqKaHzL5JTPsj3hQ8pcHOYBX7IlEAR+O0iAdfYYAsN4G
         JNACPZrI8xMNPftzcqpw7uRIirXlO7v28A5c8J/cG401nonqOxVGH9BPgy5Bzl+1XXle
         Ajq+XbS0UiRWxa8r9yPkU3SjnXjiBINUqmA+VSq3dJfbv0N8lQh5M+0996ehqTAo1Ldh
         2Bm+OXmAevR68saOURHXi072Mg9KHgVM1uVPyjipmmb8KXjBr0cYr/50YAtOCf71xGoC
         KQXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=t4sU8UH0hw/5p7z5aSQ47Zu1g0Sk4C0aOwBWL2o+Inw=;
        b=S74BB1/FJCKyYc3C6DhJXteMW3PLGfngoS5raK+KUcHNTym/hCqmR18vuu9H6czKWP
         /9OArUV2qFriZahXcXVFyxlowOhuo5g4Su5h3ixIUlD40sX5VgrHxYq8orDNm4lBNSUJ
         RB6EwDl7OTJwI1EPqRq3qXPt1DYMjNXE36hn0oCWdY+bLqNv3a/1y/m6IPLTWhLuyZFz
         KigU2PY8FBQnQqyzkXfMHqKdGKzzM7YFENDdh7dk48JD7azmJhVlWN0VDyWXd1/8H8hK
         +OoBCF58BVCDTv0t3mvczhzfQhi2Tlv3vOIWGk+l3CDm9Z08ZM/2R/Zw35axMTD2hgDf
         1ESA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mWVUYX6g;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id cu1si226233plb.4.2019.03.29.09.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:48:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mWVUYX6g;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x231.google.com with SMTP id w139so2164582oie.9
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 09:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=t4sU8UH0hw/5p7z5aSQ47Zu1g0Sk4C0aOwBWL2o+Inw=;
        b=mWVUYX6g8u4Pw4eArdEqWVUCXB7sNAjWMUQpNtSGzUqIsThy6FCTqQqCAja2EjxGFU
         6hZbSh+Z2hZmGQzlxlHPb04a6b9jUAW5j/OouMFtJGwrcZsRahBRIyiBqvzFRXFWwFH4
         nt3+CNK3imgr/yU/m3CZ2gDvtj7jsjx8NvTQpQjmQFTFC7pBX77sbv9OijM1XZzh2grX
         3OQOfWMgsdQCWihDbsNoHrVi/zfPwEzy9S72HuznqkKhLtVOXiicjBQk7Vc3rVti26nf
         Hk7dIBeL5jNE9TzeivZz/7U3OClC05qXluQhQNKGlPSrBIITyJDPv+I16OfhwiGnUot4
         k3QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=t4sU8UH0hw/5p7z5aSQ47Zu1g0Sk4C0aOwBWL2o+Inw=;
        b=szRjyLdX13u/OZTwnPirlq8LAEcHPbWFaCcyg3cXLrx0/mHdqf64ByE+xgkiaP99jO
         7wLgVvwz/pJpThowgutUm8oLGQM78WW0T2WlNNhnccjpzEXmaEQt73z6V7238cvP+Pta
         O4q+b0uR/4bVh9LkNQtr9rUJTbc6um4xjoxQmPZpcwoTo1T9KvErA6xefjTvWqVShkrY
         KmgRCY/zy+/hpj0z0hG8AAsIh56x8ttosRHZD6qXcAp3w87+0Ocs49ypQhAvSuu9Tps5
         I+3jfinaqBJMldezMB53oJ55f3IFc4OLH2d+DXfBOzwiUv1nDcj2svnXE78IveyLDZQ7
         Qvdw==
X-Gm-Message-State: APjAAAUQ7WBIYD0aEKCLuZ0kKijACce3T8ulotcD4X2pYXHA+EmY5KLM
	M8UHlzjylGo6k0k131RUbWQ=
X-Received: by 2002:aca:4405:: with SMTP id r5mr4161652oia.165.1553878135063;
        Fri, 29 Mar 2019 09:48:55 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:88a:2f6f:3d5a:23bf])
        by smtp.gmail.com with ESMTPSA id a23sm913283otf.69.2019.03.29.09.48.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 29 Mar 2019 09:48:53 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: media: davinci_vpfe: Convert macro 'IPIPE_S12Q8' into inline
Date: Fri, 29 Mar 2019 11:48:51 -0500
Message-Id: <20190329164851.7230-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Convert macro 'IPIPE_S12Q8' into an inline function to maintain Linux
kernel coding style based on which inline function is preferable to
macro resembling function.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Change in v2
- Resent patch
- Changed subject line
---
 .../media/davinci_vpfe/dm365_ipipe_hw.c       | 24 ++++++++++---------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index 565a3dc5bed1..110473c30577 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -825,8 +825,10 @@ ipipe_set_lum_adj_regs(void __iomem *base_addr, struct ipipe_lum_adj *lum_adj)
 	regw_ip(base_addr, val, YUV_ADJ);
 }
 
-#define IPIPE_S12Q8(decimal, integer) \
-	(((decimal & 0xff) | ((integer & 0xf) << 8)))
+inline u32 ipipe_s12q8(unsigned short decimal, short integer)
+{
+	return (decimal & 0xff) | ((integer & 0xf) << 8);
+}
 
 void ipipe_set_rgb2ycbcr_regs(void __iomem *base_addr,
 			      struct vpfe_ipipe_rgb2yuv *yuv)
@@ -835,23 +837,23 @@ void ipipe_set_rgb2ycbcr_regs(void __iomem *base_addr,
 
 	/* S10Q8 */
 	ipipe_clock_enable(base_addr);
-	val = IPIPE_S12Q8(yuv->coef_ry.decimal, yuv->coef_ry.integer);
+	val = ipipe_s12q8(yuv->coef_ry.decimal, yuv->coef_ry.integer);
 	regw_ip(base_addr, val, YUV_MUL_RY);
-	val = IPIPE_S12Q8(yuv->coef_gy.decimal, yuv->coef_gy.integer);
+	val = ipipe_s12q8(yuv->coef_gy.decimal, yuv->coef_gy.integer);
 	regw_ip(base_addr, val, YUV_MUL_GY);
-	val = IPIPE_S12Q8(yuv->coef_by.decimal, yuv->coef_by.integer);
+	val = ipipe_s12q8(yuv->coef_by.decimal, yuv->coef_by.integer);
 	regw_ip(base_addr, val, YUV_MUL_BY);
-	val = IPIPE_S12Q8(yuv->coef_rcb.decimal, yuv->coef_rcb.integer);
+	val = ipipe_s12q8(yuv->coef_rcb.decimal, yuv->coef_rcb.integer);
 	regw_ip(base_addr, val, YUV_MUL_RCB);
-	val = IPIPE_S12Q8(yuv->coef_gcb.decimal, yuv->coef_gcb.integer);
+	val = ipipe_s12q8(yuv->coef_gcb.decimal, yuv->coef_gcb.integer);
 	regw_ip(base_addr, val, YUV_MUL_GCB);
-	val = IPIPE_S12Q8(yuv->coef_bcb.decimal, yuv->coef_bcb.integer);
+	val = ipipe_s12q8(yuv->coef_bcb.decimal, yuv->coef_bcb.integer);
 	regw_ip(base_addr, val, YUV_MUL_BCB);
-	val = IPIPE_S12Q8(yuv->coef_rcr.decimal, yuv->coef_rcr.integer);
+	val = ipipe_s12q8(yuv->coef_rcr.decimal, yuv->coef_rcr.integer);
 	regw_ip(base_addr, val, YUV_MUL_RCR);
-	val = IPIPE_S12Q8(yuv->coef_gcr.decimal, yuv->coef_gcr.integer);
+	val = ipipe_s12q8(yuv->coef_gcr.decimal, yuv->coef_gcr.integer);
 	regw_ip(base_addr, val, YUV_MUL_GCR);
-	val = IPIPE_S12Q8(yuv->coef_bcr.decimal, yuv->coef_bcr.integer);
+	val = ipipe_s12q8(yuv->coef_bcr.decimal, yuv->coef_bcr.integer);
 	regw_ip(base_addr, val, YUV_MUL_BCR);
 	regw_ip(base_addr, yuv->out_ofst_y & RGB2YCBCR_OFST_MASK, YUV_OFT_Y);
 	regw_ip(base_addr, yuv->out_ofst_cb & RGB2YCBCR_OFST_MASK, YUV_OFT_CB);
-- 
2.17.1



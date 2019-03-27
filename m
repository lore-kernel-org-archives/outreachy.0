X-GM-THRID: 6673109681211179008
X-Received: by 2002:a17:902:b615:: with SMTP id b21mr501914pls.34.1553704422480;
        Wed, 27 Mar 2019 09:33:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9f86:: with SMTP id g6ls7909487plq.3.gmail; Wed, 27
 Mar 2019 09:33:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyxShJPXingmQHr7jaXgMUL+EFElkCnH6lmMTvDU4Ck4vCzeJgyA7URdfA9pUz5zGI4tUaV
X-Received: by 2002:a17:902:8f8e:: with SMTP id z14mr295570plo.99.1553704421712;
        Wed, 27 Mar 2019 09:33:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553704421; cv=none;
        d=google.com; s=arc-20160816;
        b=nR+1zcf/gChznM6ypi+BbpuPp8eDZbkLmHRS+JB7xwMK06q04tkqoWFz73Uhh+P+eh
         BT/AMlWfRzXDqZP46yk5OJYW0JKrOGqZWZHkrCYoycUKgHl0VwpbdehuTKRIi4o1dywt
         I2k8oLNXPw1xN66V5ZEckaB8oTFCfsYhwpveRx0GMZTjRv05npFWtqMnD4Ap2NCWB+JH
         1FTNjjpeeecYPX8FJX9DZRiqOH7NADfh0iS+TVxzyGP2vnMdMbpehqlvuaPJ29Wmk1OW
         a3TWBtZn+3OhUu0P0DiqcK/fqmzexO9i3G5J6TT1ON/flfm82T0o9PLj4d7H+93apO7Q
         U17Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WWiAPEHplYmRDS0uuBpqONUKNL28AmvrAFic7FqHjKk=;
        b=kx1f8ex4Kux0MRfkWIBP+4yo8xaUqD/kc1Xq+O7qHdkTEDHmJAQ2KTey7XSFqFqP4u
         b5vVVrHM9rRIj3zNFcDmK/Nd8UH92RRabOjFOEv0jiYZmEK3eYoVnIP1jyhmqAsbPE4N
         /31M7TX0uqhGQiNTZxVDFUY1A4VuQxqZ3c+g58TK94/wPBCcF0PyH1TXT0ieAFRL25VL
         2UxZeguw6EHAeFOZneK+qAY5Wt5ZiVUby5Zc2M/5CcXRlpgihwifxcUEFCV1k+hqWQsq
         yCG6/S7f2PlzuHJYckOiwVLNTaZNmYOvXfLAbd4eRAUz3Z/Jt67xI2b7Diy9Z1D/g381
         B6vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RkbOAJR2;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id d19si134945pfm.5.2019.03.27.09.33.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 09:33:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RkbOAJR2;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id 64so15456370otb.8
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 09:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WWiAPEHplYmRDS0uuBpqONUKNL28AmvrAFic7FqHjKk=;
        b=RkbOAJR2dyQzYyDw3N2RDM3ccNIFt34thwHBsEw8mLNKeAYnK8xAkcY1j7FRUCjXjh
         y6OupfnmZK8TXaza69YmgFh7OGnGu4Vm9B3uMinieELfzUk+pXm2YKzysvI3s2XCy679
         inA5+E3YLwAwRZWb5ABQcp8C3smW8kNp9UlsNYy0x5s5/QQ4nFZ4slO+ls0B5cdQAXV9
         5nFo65kLEJaDGvXKBTf4isxHWcCsTTG1RV9k7/jwO2+TIU3u8cbDv1GYrdb9yseWxFrA
         8tugkxcT3KmHCPWFbd6fCs1Yx0HYveoH9g0pTRbqvGa5Oy7eyOmjXFSUH90aXTCosivB
         rqBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WWiAPEHplYmRDS0uuBpqONUKNL28AmvrAFic7FqHjKk=;
        b=WJTm74G8cMwOQMdwRXxAyVaCRjQ0P80vgwEEVRtDB/sN/cTE1G0BeT4OyFND1yM67g
         h1NengZslZNgOHIOUBu1MCLyBZqyRnshaE+d6Q7jd+RhMeGI2Fa+czfDOlO+/wKTq2Ig
         q2mFjwn2yIsEPTgh7bKzfW2gOTO09GLGpcN1xuNsDa0toyodW+Ii2QoOZlimwJzQvRBK
         ItSL56IQcVdNGAOc/mTGfXh4sLPdphhyRUgDZt3nuBD3B44H3hn6zRHrMACXJ/hhNfOe
         2dffQb8s8htfV5ubbAp5WsOe15Zh8Uu1FoneKIc2+E+Z28BsF418/ogCaGgVkE3r+wUU
         poWw==
X-Gm-Message-State: APjAAAVSb7EpjGBtSEnO3Uu08Gvvb2jFhA0QT9oOznaFbFcZpEvVgVrR
	wm8i+nyg3jeJeCtAaBkTQ2c=
X-Received: by 2002:a9d:7697:: with SMTP id j23mr26106942otl.344.1553704420901;
        Wed, 27 Mar 2019 09:33:40 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:b885:380e:c834:19c3])
        by smtp.gmail.com with ESMTPSA id p132sm3915163oig.37.2019.03.27.09.33.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Mar 2019 09:33:40 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: media: davinci_vpfe: Convert macro into an inline function
Date: Wed, 27 Mar 2019 11:33:37 -0500
Message-Id: <20190327163337.12083-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Convert macro into an inline function to maintain Linux kernel coding
style based on which inline function is preferable to macro resembling
function.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
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



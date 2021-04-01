X-GM-THRID: 6946206210186018816
X-Received: by 2002:adf:bc01:: with SMTP id s1mr10394250wrg.240.1617289663630;
        Thu, 01 Apr 2021 08:07:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls1517960wrd.0.gmail; Thu, 01 Apr
 2021 08:07:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwyeCoWpDDDpYkrgUTMD+EC8xYjfU5D42N9advC1Ugt0/dLKGVvgWcWAJVHSGfxdOXUPBV+
X-Received: by 2002:a5d:4312:: with SMTP id h18mr10280517wrq.193.1617289662380;
        Thu, 01 Apr 2021 08:07:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617289662; cv=none;
        d=google.com; s=arc-20160816;
        b=nQMO0OGcVs2AGzjCYD/+Tzocd0+8xbLOEpZua1Go/ZGmMK8BLZTA+3g2t8Pu4LKHnM
         bcuZkgDzNzVzXzwQZRMouMx7FNur24t6QC9PUJ0sthC/Oj5ITY+lVcIUTUastuwO+XpC
         /9iDderKBH5mHIfUtvZ6CNyecP1kQXNN5K2y1jUX0I0SOEXKNuEbpnbprAyhITpqUYau
         hxODi9rYtW8mzks5VN1efTX19YgvDtU6U+v3t0RoR3eqXg/9KQ2Rrm4gKcUZ8S6Vri5S
         wI1PmAhonfL2PEWNQpjA/LoTGn06ac/a8egwxOQavt88+VLsTFm4VeJLvf3o2TMGq0t8
         15QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=6e8KU9fk/1P7iY76hALRoVzDDpKZGRE6STiYdEDt5Z8=;
        b=IVq9l8bXaE5IrVu9zRdG5DiFPu8QwmHfqAEEDpxSOEmfjiTMmz+MkiUfrEdEl2Jaah
         2bILIP8EpDmBEp/EcJJTi0xM8zy0NyUGdoAdqMFmZwlu3NyNco28frbNKxCN/OVJjO85
         NVhSZkOceqUKu+TtNhVzxnGLF4893xgrSdKsKdIPpuoNd/zuRA1QMKgdkWQJmxhgureP
         dgAZA/QUQjekCjjfzhg7l5R7nYlrtaDWFXXamhv3602beg8T3BAlgtjxu1s1cUZly5ly
         TB3vPpxAy8RAxlKu9SpE1PaRtAs1PAyMneZwgdqBmkhLPSs7riEpryHDiDmFojoC2wTE
         DCDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tkZ3WeOn;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id s8si741708wrn.5.2021.04.01.08.07.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 08:07:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tkZ3WeOn;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42f.google.com with SMTP id j18so2173185wra.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Apr 2021 08:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6e8KU9fk/1P7iY76hALRoVzDDpKZGRE6STiYdEDt5Z8=;
        b=tkZ3WeOnNZ/rYuTknOHdEl8iGi2/VAZhTwJWoyFipF7BHeyFfnWA2HDqWIzy+75TS3
         lzTGaBvba9eO0rcyi5pSePT0dj6mk79RfK4W1b5Lan7a1PuMVmvxchI8GBtoTAsiPuyt
         wZqrJEg3GvudG7OqfJebmoYOrbcmaD4Z2AQiAai//EI5V0wPIHvOGa+Z7ys2WFUyQM4X
         r5Kxjz38AG2xmHAmsDyDMJxXaliI7yVLNIUumcGATgynjj6nGBRD/SaUKchtYhRCtxoh
         ByMWTcPB1o1HAlnZlyZOGH2E+2ifR9nyVdT0Z2+HVrffjuXrOCOnu/iM5KiIq8Ttktpa
         I4qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6e8KU9fk/1P7iY76hALRoVzDDpKZGRE6STiYdEDt5Z8=;
        b=CJKzSPvPJ05eaBXU8fBHrDntN6Q0RtSoVkEtknqocvLh3WC/2I1l211pMt10ipZjVo
         RHJXWpxo+kYfcZavZVJtLkWjWyfJn3bjJL2iNeBlePJ/Ax5hxDXFs0wOFBSHBR9ymB0R
         HOphAcD3UyfOPnXiKE1eepWDeylu+TyIeqj7CXSEkbruL/AWFsMkLLGQcVFy1O2+O4KO
         k0vi6CpskIHb3SRBG9vjNT/XrVYBtj28Ok+SgvROT4RfRCXTx8JQNHXwoE9lVgi/dxRk
         D8gcKkeaKnUticN0/2dmZLmGsR/5G6bTQe/GCvUgft4t0YL/rYWnui8ZYJ1EGBp7iMy7
         y64Q==
X-Gm-Message-State: AOAM53095ebkSyF8CEsdCsnXLpaWvTFznIH9wVb7XtXUblh08SalrnIS
	YlFETg3XXQ+lbVBWQaD6pCk=
X-Received: by 2002:adf:b355:: with SMTP id k21mr10360675wrd.156.1617289662171;
        Thu, 01 Apr 2021 08:07:42 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:a182:b5f0:9f7c:c891])
        by smtp.gmail.com with ESMTPSA id n8sm9710108wrm.70.2021.04.01.08.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:07:41 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: media: omap4iss: Ending line with argument
Date: Thu,  1 Apr 2021 16:07:38 +0100
Message-Id: <441d27060ff6477d0ad418f41e194b96373c1f7f.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove checkpatch check "CHECK: Lines should not end with a '('" with
argument present in next line and reorganize characters so the lines
are under 100 columns

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 46 +++++++++++++---------------
 1 file changed, 22 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index dae9073e7d3c..e8f724dbf810 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -559,9 +559,10 @@ static int iss_reset(struct iss_device *iss)
 	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
 		    ISS_HL_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
-		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
+	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
+							    OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG)
+							    & ISS_HL_SYSCONFIG_SOFTRESET),
+							    1000, 10, 100);
 	if (timeout) {
 		dev_err(iss->dev, "ISS reset timeout\n");
 		return -ETIMEDOUT;
@@ -583,9 +584,10 @@ static int iss_isp_reset(struct iss_device *iss)
 
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
-		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
+	timeout = iss_poll_condition_timeout(iss_reg_read(iss,
+							  OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL)
+							  & ISP5_CTRL_MSTANDBY_WAIT, 1000000,
+							  1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 standby timeout\n");
 		return -ETIMEDOUT;
@@ -595,9 +597,10 @@ static int iss_isp_reset(struct iss_device *iss)
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
 		    ISP5_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
-		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
+	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
+							    ISP5_SYSCONFIG) &
+							    ISP5_SYSCONFIG_SOFTRESET), 1000000,
+							    1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 reset timeout\n");
 		return -ETIMEDOUT;
@@ -1104,33 +1107,28 @@ static int iss_create_links(struct iss_device *iss)
 	}
 
 	/* Connect the submodules. */
-	ret = media_create_pad_link(
-			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
+				    &iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
+				    &iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
-			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
+				    &iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
-			&iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
+				    &iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
-			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
+				    &iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-- 
2.25.1



X-GM-THRID: 6746714652058583040
X-Received: by 2002:a37:544:: with SMTP id 65mr17681848qkf.261.1570841914263;
        Fri, 11 Oct 2019 17:58:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3341:: with SMTP id u59ls2089416qtd.12.gmail; Fri, 11
 Oct 2019 17:58:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVEi4ZlUmzbC8UpUgoZjXpPGoaqY5iEzkOwd07pSEqNtToYRtBMQpN+ig+jkoKtdxvqmEF
X-Received: by 2002:ac8:75d1:: with SMTP id z17mr20907115qtq.261.1570841913497;
        Fri, 11 Oct 2019 17:58:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570841913; cv=none;
        d=google.com; s=arc-20160816;
        b=nrexAMEXRju5HPWMuYhCUDdjvKXFGeM0dGJvHeQq+lSsNNJj16APgB2r63bVs25iJk
         ndpZGtbwr8vkWM9h7z5PMiu0rg5GcBoYy7bs02wa/I0XLJRlR6TL6aHtnOGtzIliQAPE
         kUjomRsjZcs5lWMeUtmJVq2I+DVRshNjeUmJBEl31NxdEjnSHQ8/wj8YUUoUYTafgdfg
         Dvvcnnq2YvfzMIG055Ps7Y3BXPnDpJoHF5eJ+JQpc8I4d1AuTf5pE47FS11d2QrLJ57N
         WVesZ6hfcdC7gIcn7R2f7Fv6In5SG1qvgyCXSfxZovL+i5g3sYjOTCjeo15+3tduFrVG
         JspA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=fNHKkQjoCDErGNVQU5T5qwcuQJa41Rl2E+ndSZy7fYU=;
        b=1JyJYpuTLVy1+SE8LNIM/AzMmrgDvPQNe+oV185X8owui0kqUFAOzXnD7d1xdgrO3Z
         21tAu1X08OCPoOa327VepkFGb4WaAUZhKEEcT4Ey3ZjtGYErVZJ0DXDIbu+/W4zCdjZu
         knqd5g6JWQKLPFR1OBfKJyT+L4DqYbUvaDGlOP1Nx3GinP6yZ9WO2RvRuLWi/u5kqcTd
         dgktP4roCCif3DSLtcW8kPaKhYZK52KNstzNQMuzT8KN4k65jgKnwOfpSv4YsE5MEDXf
         bMCdHzBC+vilTkZhwtu6Q4KQl0irjjUToxbSG612qDn0Gv04SjyQd7vNUiTU8dCfhpU+
         EIcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aLp9nlmg;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l189si714427qke.6.2019.10.11.17.58.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 17:58:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aLp9nlmg;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id b128so7057620pfa.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 17:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fNHKkQjoCDErGNVQU5T5qwcuQJa41Rl2E+ndSZy7fYU=;
        b=aLp9nlmgP+ZxVjUmYustw2UZwE5vKsYoFNgF3XD1VuvKYdbffNrzVbVwXfLF8LhpiV
         perX1HrzaCGbaITl0ld5EIgoccia47ErembmVrF2Bzfshd04gkn8iJx+IydrN7L2y3QN
         Ut86Lo2hmMC5+G8rUm3NV7/ADUkidKxjB88mcIAfuSkY6lh9qZX2PQtFvvo+8+sks8jI
         8ro8tT8TdToTNuIVepXly8FdHzaHjODCu9PRlBmiHde+z5FMOBMj6AjlP27P5BDX8OdL
         xSpSRl39YI/7rUUs3+/nvTBvmr4ZNOnEQ1ZYr61QeFooGaNqncIa+ZTjiD2qiyxIrNV0
         vxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fNHKkQjoCDErGNVQU5T5qwcuQJa41Rl2E+ndSZy7fYU=;
        b=eKMeR8jncHAbAnKzlAw7Y3xWPcbAtx7C3NJMC+XvCs8Id/mh//2HPXoQARs7iYZv57
         E2TZXctshIBU2dnbJMfw6X1f2qgoChBWWZ3mro0Gh93BwGC5p8GOWHrZEdSk8J4Iyscw
         x4zm3pDO70wxOC2XKwuuFFCTeKczJgc/sWwCKOVaRjJJZmowCK9aXO99DXvzOSkHo4fb
         8o5D2p6vnPlQ92M49Vfm7hfmwvLak3EKM8d2MG8F7+i8950rC02bOsxJBBI5/BRa2SMG
         IkDJcrHo3hJXc/Yu90nCb/QsnnjKSLJmF/CloXFKFBRX6p3UjA6E/U9vGY2MtZ2/gMbO
         F1ww==
X-Gm-Message-State: APjAAAU18Ep9H3+xqEnVn6RH6fNYErUgIgjy292oDRyzsGGM3fmmTh+O
	aXuFYqATLop0zimxtyCyPvzT3oZ6dwc=
X-Received: by 2002:a17:90a:aa98:: with SMTP id l24mr20898427pjq.96.1570841912226;
        Fri, 11 Oct 2019 17:58:32 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id z29sm10963335pff.23.2019.10.11.17.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 17:58:31 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH] staging: media: omap4iss: Fix lines ending with "("
Date: Fri, 11 Oct 2019 17:58:10 -0700
Message-Id: <20191012005810.4459-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix lines ending with open left parenthesis "(".
Issue found by checkpatch.

Also fix checkpatch "alignment should match open
parenthesis" issue.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 65 +++++++++++++++++-----------
 1 file changed, 40 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 1a966cb2f3a6..9d6676b4618a 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -559,9 +559,11 @@ static int iss_reset(struct iss_device *iss)
 	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
 		    ISS_HL_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
-		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
+	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
+							    OMAP4_ISS_MEM_TOP,
+							    ISS_HL_SYSCONFIG) &
+						ISS_HL_SYSCONFIG_SOFTRESET),
+						1000, 10, 100);
 	if (timeout) {
 		dev_err(iss->dev, "ISS reset timeout\n");
 		return -ETIMEDOUT;
@@ -583,9 +585,11 @@ static int iss_isp_reset(struct iss_device *iss)
 
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
-		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
+	timeout =
+	iss_poll_condition_timeout(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
+						ISP5_CTRL) &
+				   ISP5_CTRL_MSTANDBY_WAIT,
+				   1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 standby timeout\n");
 		return -ETIMEDOUT;
@@ -595,9 +599,11 @@ static int iss_isp_reset(struct iss_device *iss)
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
 		    ISP5_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
-		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
+	timeout =
+	iss_poll_condition_timeout(!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
+						  ISP5_SYSCONFIG) &
+				     ISP5_SYSCONFIG_SOFTRESET),
+				     1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 reset timeout\n");
 		return -ETIMEDOUT;
@@ -964,7 +970,9 @@ iss_register_subdev_group(struct iss_device *iss,
 		}
 
 		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
-				board_info->board_info, NULL);
+						   board_info->board_info,
+						   NULL);
+
 		if (!subdev) {
 			dev_err(iss->dev, "Unable to register subdev %s\n",
 				board_info->board_info->type);
@@ -1108,33 +1116,40 @@ static int iss_create_links(struct iss_device *iss)
 	}
 
 	/* Connect the submodules. */
-	ret = media_create_pad_link(
-			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
+				    &iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
+				    &iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SINK, 0);
+
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
-			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SOURCE_VP,
+				    &iss->resizer.subdev.entity,
+				    RESIZER_PAD_SINK, 0);
+
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
-			&iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SOURCE_VP,
+				    &iss->ipipe.subdev.entity,
+				    IPIPE_PAD_SINK, 0);
+
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
-			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipe.subdev.entity,
+				    IPIPE_PAD_SOURCE_VP,
+				    &iss->resizer.subdev.entity,
+				    RESIZER_PAD_SINK, 0);
+
 	if (ret < 0)
 		return ret;
 
-- 
2.17.1



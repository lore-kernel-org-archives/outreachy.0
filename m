X-GM-THRID: 6746727664104505344
X-Received: by 2002:a17:90a:9ae:: with SMTP id 43mr21132900pjo.65.1570844944453;
        Fri, 11 Oct 2019 18:49:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8f8e:: with SMTP id z14ls2452900plo.5.gmail; Fri, 11
 Oct 2019 18:49:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyH/Qh2KFepb69IpzAIuhxHu1X6cBaApROUnqQGpe4OtoNq9o9C2kG8OIeit3tJBYu8/6WJ
X-Received: by 2002:a17:902:d891:: with SMTP id b17mr18344145plz.310.1570844943505;
        Fri, 11 Oct 2019 18:49:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570844943; cv=none;
        d=google.com; s=arc-20160816;
        b=apnOkiTdN0baqVAr04ApkjraryGTA5qMcZWhmxURoihUohMVZx2KXCiqVB33VlGZlP
         ZDYeRA5x9fDBqs1vnc2ZL7v5z3pMyV4SBdZ0d0b8G8ojZivN54MqhVm4+y2+J6t+uMxX
         FrleCrFdXS65LGp+MowNEYq80KeNd7/pAvpBujsthCEACqQAeb5YG8b1VJSETASp0AYT
         FvvU59FayN2WmKXSlQyozZMwbdkmGjtP0I9cZAdkZDkUwKIdskVCrNRrCBh3vm42YVDX
         x4f6JOaElmDMt3jkSJyZQQADvrnr5Eo+knLlfaKlJ78cmIy5eQczxOOZVhZGdMuXVzl9
         qL4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=kKw66a2cbvNj8tL0b9eEFDuzSZWDZMU8i/7kGfc0jWs=;
        b=WSjxCXnIKZPPD7oF1ewSefqKMv2LqiGEhzEmExg3pbdXJtAX1d8A9VO/FyLgBHRq2B
         a6Z2PoXfzck5eQeTLxFcZgchneM9E8WCQYNC6vGNUDgl1I+MLg+QKgbls8MqmkT0mRUf
         Sj9UwhNsFkwve2tRFaTVHw8w+BF3782ojDLCgUhVDVH02R2sDcoc2PthFCrbXGSiazuP
         PNKmQeAE3xgZ077yrHVVZj4S5bDKUwNS3GAnx3MR6TNhP5rrCJEsITRUFWWOdJbbo3eU
         5DY98IqiUsP/32yLornpK2Wf1awjsMiugw48Ybogk340S6K5ZbgEU7meHS1gbDA1pMBG
         2RSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hOIy/wSQ";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m6si454200pgm.2.2019.10.11.18.49.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 18:49:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hOIy/wSQ";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id v4so7090853pff.6
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 18:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kKw66a2cbvNj8tL0b9eEFDuzSZWDZMU8i/7kGfc0jWs=;
        b=hOIy/wSQ5w95G8ss9IzCNpvFWtc7SlUxSLVITyFEJpiALce7evBmJRpmXoPu8Qi7KV
         xZ7OF9+9mRaXChrZn/3FwtErs0OZ/jrfunXVdt4fNDymzRuUiVA0BBDhuamX4xe6sUXf
         nOzNv9NtBxGxPdT7Q7PBx6Q521VuXm+V7CvIHBwVvHWebkb+AOnSy6WMPrC/orTRFEJ5
         iNC1Lx57ka9U9gnNkt2QAsC5Cd5zphVsXNNWGRFAIi1KtY2YTkZGoelqNrtB8F6TlqTA
         0OxY8qS5189rZvvSUFRwBIWI6cnDvbB+8Kit0fUfC4SM59TaNyBbCsUGCAdMXMHIGHbc
         6CLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kKw66a2cbvNj8tL0b9eEFDuzSZWDZMU8i/7kGfc0jWs=;
        b=ZXD6mc6iAML7slerB3vTtc+eHnCsxrXBQDR6/lY7mBJBAPmrC/wJYnSQAXAn9IctCV
         qyH7ylsuppm0tjWglQkCbfG1ZfzaLxXQL9TRhE7k92817omZtp+NDIHiM7AL3J9q9csF
         ljDTut2KnZBXig55vI5YfmDyEcCGwJ+u2dOsSDkUoqmfzKXx8aEOStoV2CfDfbvXBnIh
         gmoTu2oOqoOYXOfyA10F8pUfs1ssgrXGuxKsUbPb7kVc4va/GlTRvSpncyiT+hi0izdM
         JTgm0Sc2ZgzUO+UjPgqvM/boBTOYEPYfiBlZ3Af21mY5Y3LLNkBknF7ih9o+MJnl6xUH
         4EsQ==
X-Gm-Message-State: APjAAAWumYHnIw1BJPR2NBjOKZc7RTMJNyXxqBjABoCh60UVL24x6v96
	nHVpMK1HHwyidiaGMFgSvoBuYCg+7OY=
X-Received: by 2002:a65:640e:: with SMTP id a14mr19578925pgv.392.1570844942969;
        Fri, 11 Oct 2019 18:49:02 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id t12sm8135284pjq.18.2019.10.11.18.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 18:49:02 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: omap4iss: Fix lines ending with open parenthesis
Date: Fri, 11 Oct 2019 18:46:37 -0700
Message-Id: <20191012014637.2655-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix lines ending with open parenthesis. Issue
found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/media/omap4iss/iss_csi2.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
index a6dc2d2b1228..738eb8b07430 100644
--- a/drivers/staging/media/omap4iss/iss_csi2.c
+++ b/drivers/staging/media/omap4iss/iss_csi2.c
@@ -495,9 +495,11 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
 	iss_reg_set(csi2->iss, csi2->regs1, CSI2_SYSCONFIG,
 		    CSI2_SYSCONFIG_SOFT_RESET);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
-		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
+	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
+							  csi2->regs1,
+							  CSI2_SYSSTATUS) &
+					     CSI2_SYSSTATUS_RESET_DONE,
+					     500, 100, 200);
 	if (timeout) {
 		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
 		return -EBUSY;
@@ -506,9 +508,11 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
 	iss_reg_set(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_CFG,
 		    CSI2_COMPLEXIO_CFG_RESET_CTRL);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
-		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
+	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
+							  csi2->phy->phy_regs,
+							  REGISTER1) &
+					     REGISTER1_RESET_DONE_CTRLCLK,
+					     10000, 100, 500);
 	if (timeout) {
 		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
 		return -EBUSY;
-- 
2.17.1



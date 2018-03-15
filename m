X-GM-THRID: 6532874572090310656
X-Received: by 10.202.185.198 with SMTP id j189mr3786010oif.78.1521135498861;
        Thu, 15 Mar 2018 10:38:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:1697:: with SMTP id c23-v6ls2909224ote.13.gmail; Thu, 15
 Mar 2018 10:38:17 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvBhzUM5IRXEM++NTcaqVq7dtWGkvGIX9v0cTvh1Phq9oXqKoX7+OADo+h6Y3IVh4rFWr2a
X-Received: by 10.157.41.184 with SMTP id n53mr4299375otb.46.1521135497905;
        Thu, 15 Mar 2018 10:38:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521135497; cv=none;
        d=google.com; s=arc-20160816;
        b=ejtuw1M0fTiXHJZvbcR4NuduTeykC2mHWu0hnju6tSTaiZhShS8zCc/ECgv4JxhLm9
         5QKUwk7dQ9BYE6ZH9pN54Gc4g6/JAiKRXvZhx74Mr7QFxgso8COufSSNa/VpQdPi3NLC
         xwzDqXvWpsDGlMPKnh1fLw8BxICEUv447JmjoIzwXkrcmInK87LOx3dma10mJNKkUlva
         xZ27tp8aFgThQytjq18vssEBxe+UyYSKrcwj0xL1E1/PP5nMzdY31Mcfw7thjM8K2+Kw
         KL4yyDNxLr7//ux0tXZiqzDBvp6yiRUczQtl381FvCJNf9EVpdKdOfilTl4qHv04/Hj+
         ZH9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=iVD3Bjm/fojMUipdQQpLU39YEoOeCrn2cYXEemiUpj4=;
        b=DVhp2SXHtFZQegrFo52YmMEHAB8bNvbDtt75XN7/aEndcf2aqKGsdSyCo0LjngGsOE
         HAzl2lmAWjRZh9shNpXPVNb0cXBziT4UbvQL6Avj+5fgS27AM73P1GrIrSMGGlNrpeQA
         AAdirl2EMBgywAgHBq9OfBPkC++rDuY7Y94nQy3sm7IBUg/GrI0D7e3aywrtZ3WhOgjt
         pLiOn6XR9DIS3dHwchGyNAnxsEfQgR8QJspRRlWfvR8tn1+eNp1ujJVOMX9gEDBkBhS5
         P6HvwKXhgnkDbcuO4KnGpbVqbLSnJ5tgQUTEA0sBHsmuz1w7/3/qXB4srPyeTC42Vin6
         07Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=bqEaXNZf;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id d131si404158oib.3.2018.03.15.10.38.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 10:38:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=bqEaXNZf;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x241.google.com with SMTP id m15so3037179pgc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Mar 2018 10:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=iVD3Bjm/fojMUipdQQpLU39YEoOeCrn2cYXEemiUpj4=;
        b=bqEaXNZfCFsN4dTH87nh2/dTktxBUXcmEQJh9fLRo/fUdNd/YkcSEBbXfvYY0oim7Q
         i1QGAZBQN7QlZtiSkga7bbaYje5A9djfhv+dqmmCmXmqS/VS4pmZ8jBp7C4FAaJ4g7lp
         f9voJzeSz5VhJoBfVP26aYMurOkOQC/cFDgnk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iVD3Bjm/fojMUipdQQpLU39YEoOeCrn2cYXEemiUpj4=;
        b=kyZ6+zBr1Z+8uu/e83GLRVlZFIKVGU9BekvnfAGPh2wzMDxp1LmU0I2ikyELn9LMIX
         KGdv0rv7rTU9UVDcRQCZB96fbxzjJb2WFJjj7JJEjEVE7GYNrr0PdC93oK5OJoyoJLK9
         GkhsPz06mr6JN4FZjRX5vzBAwBDLarikRHLwEs79yZUxZAA5W9o9vRGRMp8RVfjxalUk
         4Pl4gHjRF+stbvcuDiOlg8nCOr3YEidheJ0HTILZDL+6YDRP1biJIuBPthcq+IDaRqNi
         JAsoKfBotrTWlUUz+xfbBi7p4no3wRwgBVVj/OYfmI25t9CWxQeCrvtzZlfEKbZvw+/8
         HdhQ==
X-Gm-Message-State: AElRT7FHR8mdfwjZggTBaRVwQCAG2nJK+Kx2QgDb52oIcXLw9q9JJodg
	PIeoH2zbK6oTG827DI2jQRMolA==
X-Received: by 10.98.32.134 with SMTP id m6mr1899002pfj.27.1521135496927;
        Thu, 15 Mar 2018 10:38:16 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id h10sm10271056pgf.19.2018.03.15.10.38.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Mar 2018 10:38:12 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: sm750fb: Remove typedef
Date: Thu, 15 Mar 2018 17:37:57 +0000
Message-Id: <1521135477-2802-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Change typedef enum to enum and ensure compatibility with the change.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Remove leading _ of affected variable declarations.
 - Make commit message clearer.

 drivers/staging/sm750fb/ddk750_display.c | 2 +-
 drivers/staging/sm750fb/ddk750_display.h | 4 ++--
 drivers/staging/sm750fb/sm750_hw.c       | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 7710454..1273e7d 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
 	primary_wait_vertical_sync(delay);
 }
 
-void ddk750_setLogicalDispOut(enum _disp_output output)
+void ddk750_setLogicalDispOut(enum disp_output output)
 {
 	unsigned int reg;
 
diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index 3eeb02f..7fd101d 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -89,7 +89,7 @@
  * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
  * CRT means crt path DSUB
  */
-enum _disp_output {
+enum disp_output {
 	do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
 	do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
 	do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
@@ -102,6 +102,6 @@ enum _disp_output {
 	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
 };
 
-void ddk750_setLogicalDispOut(enum _disp_output output);
+void ddk750_setLogicalDispOut(enum disp_output output);
 
 #endif
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 3248f88..edeae9d 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -185,7 +185,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
 			    struct fb_fix_screeninfo *fix)
 {
 	int ret;
-	enum _disp_output disp_set;
+	enum disp_output disp_set;
 	int channel;
 
 	ret = 0;
-- 
2.7.4



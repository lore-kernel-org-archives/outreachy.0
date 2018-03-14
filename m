X-GM-THRID: 6532874572090310656
X-Received: by 10.107.165.137 with SMTP id o131mr2651831ioe.5.1521053391938;
        Wed, 14 Mar 2018 11:49:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.71 with SMTP id q68ls474557iod.6.gmail; Wed, 14 Mar
 2018 11:49:50 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvuMr3oPIPR4lLpk1HLZ5UjJ6jjWnTMvDhRZ9wBSRSvlBtIZXR0j9qs7uy0EILq3aDCBMUy
X-Received: by 10.107.201.143 with SMTP id z137mr2629880iof.49.1521053390526;
        Wed, 14 Mar 2018 11:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521053390; cv=none;
        d=google.com; s=arc-20160816;
        b=ymmgW0BrG9zHg3MZRskNKEsLJ+2JOC1XqKuJGHUoryO+/4Qgielb3qTH96uvJDFwBk
         4PA0A6DaX2HUBmj0aECKNdfeEoGArEo0V59WmuuBOLv98FDJ1iXdmlSvQu1xGNHIH+wT
         AJVY+1l15uqO3Iilz//aybmrsiWc7bkQ2EWYYd8CUlm/qt5AxljjsmES93eRqqaWVe2v
         ATz9aNxm3KzOixSpx2eFhnIDsuy3/1DTPWb2FpYcb7yiqXzcpOoUBH1vUysMy3/Wpcu9
         N8qyDUaNIx6Ofdi3i5XoxDw6mZdWGU2oiqq1I6pyjRoJrM7yhEMY2J20NAmi5Co2TC/2
         5Wdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=BnfSiPdIkju/kqwm6BatsqKxWsNVPX7oIIq9t0JOmC8=;
        b=NdlPA2qH7YsVEnX2B/upGDPxebmBw03lJPHMWQoFm9kI1uhPUQUPSqWBQxI5gxab/G
         6kSimtwsfmVEr7mK36BbC12DwUz2SkFp2ksCYtVFzYMam77XhF4oLKuisGPOb+X0ZmbD
         W2waFr0TCUcukX9xlBt1X18qzNcAGs7/lNHRQ9Eo2wRHR7a3OtMnHNd6lyeE/bBs5Mtx
         zOk3loI4dp9gHDBlSV55pLaKGIDDhGLDB4SX0swChzSfWqMN2R8XvehhQhjU9ThiLjAZ
         l7p4JYCq+0sxRGGU1yvMfVWdn3S4A5Rb0nV0meeKieFw6PaNAP6ZxW1sx/b7tttXefxq
         cL7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=V5LQ9Gy8;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x235.google.com (mail-pl0-x235.google.com. [2607:f8b0:400e:c01::235])
        by gmr-mx.google.com with ESMTPS id h1si252201iob.1.2018.03.14.11.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Mar 2018 11:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::235 as permitted sender) client-ip=2607:f8b0:400e:c01::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=V5LQ9Gy8;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x235.google.com with SMTP id w12-v6so2208652plp.4
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Mar 2018 11:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=BnfSiPdIkju/kqwm6BatsqKxWsNVPX7oIIq9t0JOmC8=;
        b=V5LQ9Gy8nEC8oYCHur29lA81WePOUSkU7NXLFTRjAx9j1SFTpOS1yVNzKRHx/+kfp1
         93NV1+/aCmBfbo17QPgB4WYw//vgPNArR6UShZVDdq+TEBCvvdZq2oJmNwun+UDHeLtM
         X5FxJPgQQQHv0+OUQgmFClPFY3DhKKzyvLFK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BnfSiPdIkju/kqwm6BatsqKxWsNVPX7oIIq9t0JOmC8=;
        b=Ivx5pPw6NFPX6LhDhCitBoXi4aWceabMRm3vOghUP7oqfGcXU0rkZKNsstv+cD5r//
         I7G6KGvHGrDOZh60mxi0iWf2ersYV4a3aGtJ8trQfXzD8e6Ni41qK6140WDPR2dD9otf
         6+ETTtK+ynx9SO/HaN27htViDUyxdxybjqWDxwgCLkt7CWOJD0DSf2dJgNSpyRquOWuT
         n2tpGMlLDru04AZOSWS8RyYiiSdD/tJvR3p4xJu/mKRvEqOGAW9vjN5ukMm52ZxdjYLy
         raeRdzkxhnhxl2yfbgtk28M+h8fh7ajnNU5GCuFQJdq0ZVk7EfrRcW9PvGiQYWtAOkwZ
         xbAQ==
X-Gm-Message-State: AElRT7Hl9ZLpLvYKXJzauXtOgSXCd5gRggY3MveLCAUuqsltKNGLEvU3
	jxt+0NXQBJ6jNKexNN9AnkpfNA==
X-Received: by 2002:a17:902:8d8f:: with SMTP id v15-v6mr5026980plo.100.1521053390041;
        Wed, 14 Mar 2018 11:49:50 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id x5sm5226762pgq.84.2018.03.14.11.49.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Mar 2018 11:49:49 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: sm750fb: Remove typedef
Date: Wed, 14 Mar 2018 18:49:37 +0000
Message-Id: <1521053377-28914-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Change typedef enum to enum and add backward compatibility. Issue found 
with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/sm750fb/ddk750_display.c | 2 +-
 drivers/staging/sm750fb/ddk750_display.h | 7 +++----
 drivers/staging/sm750fb/sm750_hw.c       | 2 +-
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index c6fd901..7710454 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
 	primary_wait_vertical_sync(delay);
 }
 
-void ddk750_setLogicalDispOut(disp_output_t output)
+void ddk750_setLogicalDispOut(enum _disp_output output)
 {
 	unsigned int reg;
 
diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index 523bbf3..3eeb02f 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -89,7 +89,7 @@
  * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
  * CRT means crt path DSUB
  */
-typedef enum _disp_output_t {
+enum _disp_output {
 	do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
 	do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
 	do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
@@ -100,9 +100,8 @@ typedef enum _disp_output_t {
 	 */
 	do_CRT_PRI = CRT_2_PRI | PRI_TP_ON | DPMS_ON | DAC_ON,
 	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
-}
-disp_output_t;
+};
 
-void ddk750_setLogicalDispOut(disp_output_t output);
+void ddk750_setLogicalDispOut(enum _disp_output output);
 
 #endif
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index f996f84..3248f88 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -185,7 +185,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
 			    struct fb_fix_screeninfo *fix)
 {
 	int ret;
-	disp_output_t disp_set;
+	enum _disp_output disp_set;
 	int channel;
 
 	ret = 0;
-- 
2.7.4



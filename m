X-GM-THRID: 6532874572090310656
X-Received: by 10.55.178.66 with SMTP id b63mr6205482qkf.15.1521136772346;
        Thu, 15 Mar 2018 10:59:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.47.196 with SMTP id m62ls2983261qtd.7.gmail; Thu, 15 Mar
 2018 10:59:31 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuWY6/1uXVM0vd5Jw1aUCseW/3DUD+vIZrH6OQdsQuLvONCLnxV3d+EMT5N6J3l99QypPm+
X-Received: by 10.200.9.110 with SMTP id z43mr6301917qth.61.1521136771241;
        Thu, 15 Mar 2018 10:59:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521136771; cv=none;
        d=google.com; s=arc-20160816;
        b=Zpy07uTAJrSNdvCzq2hkAr3PtM5jyf3Q2uRYKlHZRkokUkpsMGJ+Iuj14n0Zsdp1Kk
         4sOgHvGAO1jvXwGyeDM7TeuIUxdGhD5hR/AFuRvQgIPLGKiYXyMVbuZ1CEPYehdk19EE
         ZMRqTgEz6xndEB+H/V/pbjsmAvNUdiZZY3vzkpUe0NdDACsSlPckFQL694ush5DmfcyB
         kM1cSau2+vrrDI9VdDYDPMXDKibbMzPZUDkVmBoYiy8zGKfGscvAUfJbKzyTTiZRA0Ii
         PlEQ/B2jOI2h9HX4Q7lf4Rq4QoEDXYPWnEns6mEsh3tP+ekOK4l/OGrEeEsbFKpFx6WW
         XYwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=bn45Bq6WlwqQ1droZVNZmK1FiRrGSG1VczCluxHscIY=;
        b=G+oylLOwiEZMQQjZfVms4NpodieC4Ri0cmjyvzXpwxamV39amY4gr70b1gVm8XvjYo
         SugwRqwNctLitanbmUjZRbjnTX9nE7lNk4DjMQfsCW/VpRYXvtnJZYvWPCiFjuH8uwKf
         ihQX8j1Xi6/cxaoUU/pBg4nH8nwIc7Zms9b8dDLt0LMs62Un4VjSmd7BwFPwDSUR14ld
         h5JxZLkJUWZ0zBd8H1Zzfo2NEgnw0sWQGr+rC8m1s27A7XsPH+AV0gKsGu7kp+48W7HA
         hD82Uc3V6VA1O83BbYBJAIrRlk17Qfec3szuze4rUWGGiyV9CYRuvclTLajjdJn+tKtH
         w6IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=XatxlEDg;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id o5si415921qke.2.2018.03.15.10.59.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 10:59:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=XatxlEDg;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x235.google.com with SMTP id w17so3052207pgq.8
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Mar 2018 10:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=bn45Bq6WlwqQ1droZVNZmK1FiRrGSG1VczCluxHscIY=;
        b=XatxlEDgsAdCa5FzapqG5kgECxXyQXhryfxjjxzTg4pVi3UMxqgkGAw8GRwJRoH4gI
         gHs7QlzYP1C5QJGVGVcNqvVZZA4b1aM1Wmp2QgHiBZx9iJsNHqFZIrgSPfGmFsWQ8kFw
         AKKUYFL7y7mhEZO/13t5Vij4zTm8VvwhHHM44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bn45Bq6WlwqQ1droZVNZmK1FiRrGSG1VczCluxHscIY=;
        b=KxrpsrrwzygIe34E56z25zK12XnOntZ8Y9QiCS7oyyX9WZZklmG9F/FuC5mquYjXGE
         bJFF1FM+EH2EKj4X3g744QySjtvTZFX64G42WhWIU0sbdhAW1oiwmRG/rH0g7hvGtGrl
         G+7th6o9QJMpbQR33Jax4KRm0xeiSI/3AtM2I3SSAU82+m3vXVvcaVVe45u2XUHbqCxQ
         AT4xZss+PfgiDFzWFS4FEsJ3Vd+ePzTjlne3mE0ZCeWSK+GxljDScf89RQkv/NHPZZHf
         +L8kseGWrnmwsGvfGjA3OWgEh3mjoRvGU5dYWZDYxirNKyUu71nEBw3pbIEdAZe/6x00
         i78w==
X-Gm-Message-State: AElRT7FlRMzs4d6ai0980cWpX95IIzWgRN/kpf//2I+GiEiW6z0WWlvd
	YsYTINdbZ4lbOi2I/9rZA15QCUuH
X-Received: by 10.99.3.144 with SMTP id 138mr7464900pgd.364.1521136770540;
        Thu, 15 Mar 2018 10:59:30 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id n7sm10280428pgd.87.2018.03.15.10.59.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Mar 2018 10:59:28 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v3] staging: sm750fb: Remove typedef
Date: Thu, 15 Mar 2018 17:59:15 +0000
Message-Id: <1521136755-3760-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Change typedef enum to enum and ensure compatibility of change. Issue
found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v3:
 - Integrate both v1 and v2 into one commit.

 drivers/staging/sm750fb/ddk750_display.c | 2 +-
 drivers/staging/sm750fb/ddk750_display.h | 7 +++----
 drivers/staging/sm750fb/sm750_hw.c       | 2 +-
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index c6fd901..1273e7d 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
 	primary_wait_vertical_sync(delay);
 }
 
-void ddk750_setLogicalDispOut(disp_output_t output)
+void ddk750_setLogicalDispOut(enum disp_output output)
 {
 	unsigned int reg;
 
diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index 523bbf3..7fd101d 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -89,7 +89,7 @@
  * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
  * CRT means crt path DSUB
  */
-typedef enum _disp_output_t {
+enum disp_output {
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
+void ddk750_setLogicalDispOut(enum disp_output output);
 
 #endif
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index f996f84..edeae9d 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -185,7 +185,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
 			    struct fb_fix_screeninfo *fix)
 {
 	int ret;
-	disp_output_t disp_set;
+	enum disp_output disp_set;
 	int channel;
 
 	ret = 0;
-- 
2.7.4



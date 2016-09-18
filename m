X-GM-THRID: 6331596023688855552
X-Received: by 10.157.21.60 with SMTP id u57mr2528829otf.134.1474189577114;
        Sun, 18 Sep 2016 02:06:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.132 with SMTP id l126ls2646614ioe.34.gmail; Sun, 18
 Sep 2016 02:06:16 -0700 (PDT)
X-Received: by 10.107.128.87 with SMTP id b84mr2384338iod.65.1474189576767;
        Sun, 18 Sep 2016 02:06:16 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3919899pab.2.2016.09.18.02.06.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:06:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so5497080pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 02:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xGgYyIp6PKE4bptxaQECUVtDVvQ1cGyCPr9w3BuTCps=;
        b=D+YcZR+YEnKmeGAwtPEt1Xd2DVyKPOnB+Hy0qRJdMcuuFXXxgSfe5Zd18KIisOrPoy
         EXRKUGnPgxoVN8tEPoXT/lROnjkxR750GPzouG3FaZPleBGiAbJoTGYfsJkk9buPLVb0
         ErJ2OV3gI2vCuG4LDQPT+b8bJpBpqFyMQ2u2VBdIAkEb20591Twq5PklaFp5ETjYOQ9N
         DDT6T0FqB5Ksy4t3rQ3ySIXH49p/9oOuvIVNxjekpTAHPBhCeN732HFp2UR1Fbx8lkpH
         i3lwECaSyQBQwJ8+3pzDLnSefZJ9CvZvdfC3o4pPb0ukWlXhJXocUC21IAnZaNrrsKpc
         1BVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xGgYyIp6PKE4bptxaQECUVtDVvQ1cGyCPr9w3BuTCps=;
        b=NWEc/UpNLuQzPHntFiKlTfRoTWp3RxESHWy8yf3TZgnAR4ZvXOfduqYx/a1V0F9sr4
         dPL/jtjO+ETT0dYCIbhfQa7SpVftZ6LwUBA7kql5QgdFlkyaFJOqRGTlqVrsSHkTXhay
         klEbb2oKCaEd2tubkn1Oevz9TMlARs3g6+hJS43/sHhWlQqQHBbEA0RMlMFg62JVYmZa
         XGdoU21vrOYeujx19lEY4offZU34U/rXWKmno7etLVOdjBFtBY7PvY1pG96P4q6aRN1z
         LwZ7c8OKwx9NCsMFbeDRccz75gvIuzL7Wj8RDyBtBCa/YtxtAHkMYi6ZHi8/5fx/EQb3
         9lxw==
X-Gm-Message-State: AE9vXwPDyixK+RTyTSTYPXSd9lnABFg/Xf/lj2xGY4DRii8nO3tRjlrDUuSR1WczNFzTfg==
X-Received: by 10.66.135.52 with SMTP id pp20mr36640039pab.121.1474189576161;
        Sun, 18 Sep 2016 02:06:16 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.172.195])
        by smtp.gmail.com with ESMTPSA id uj8sm23358234pab.5.2016.09.18.02.06.08
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 02:06:14 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 18 Sep 2016 14:36:01 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	arnaud.patard@rtp-net.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: xgifb: Compress return logic
Date: Sun, 18 Sep 2016 14:35:59 +0530
Message-Id: <1474189559-17186-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch compresses the  return logic into a single statement
and removes the now unused return variable.
Done using coccinelle:
@@
type T;
identifier r;
@@
- T r;
... when !=r
- r =
+ return
     ...;
- return r;

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index d56ef14..cc69233 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -62,7 +62,6 @@ static int XGIfb_mode_rate_to_dclock(struct vb_device_info *XGI_Pr,
 	unsigned short ModeNo = modeno;
 	unsigned short ModeIdIndex = 0, ClockIndex = 0;
 	unsigned short RefreshRateTableIndex = 0;
-	int Clock;
 
 	InitTo330Pointer(HwDeviceExtension->jChipType, XGI_Pr);
 
@@ -73,9 +72,7 @@ static int XGIfb_mode_rate_to_dclock(struct vb_device_info *XGI_Pr,
 
 	ClockIndex = XGI330_RefIndex[RefreshRateTableIndex].Ext_CRTVCLK;
 
-	Clock = XGI_VCLKData[ClockIndex].CLOCK * 1000;
-
-	return Clock;
+	return XGI_VCLKData[ClockIndex].CLOCK * 1000;
 }
 
 static int XGIfb_mode_rate_to_ddata(struct vb_device_info *XGI_Pr,
-- 
1.9.1



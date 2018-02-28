X-GM-THRID: 6527741709040746496
X-Received: by 10.200.55.21 with SMTP id o21mr11379950qtb.37.1519858303375;
        Wed, 28 Feb 2018 14:51:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.64.210 with SMTP id n201ls3225221qka.14.gmail; Wed, 28 Feb
 2018 14:51:42 -0800 (PST)
X-Google-Smtp-Source: AG47ELs0krWlLrJurYE8A1ABRmvt+zDgD0qWhKRTdIbeIayU5gFAUaMemlHLMfRBXLaYVLnbBtJk
X-Received: by 10.55.77.1 with SMTP id a1mr14490489qkb.49.1519858302122;
        Wed, 28 Feb 2018 14:51:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519858302; cv=none;
        d=google.com; s=arc-20160816;
        b=j4cS5PaB9IzP8vqkIyY/7V2sJECfINaxXXgDPxcJeZokyD/Kg/2gjF4+YjJz5t5Ats
         BQqOzn0ig+4zpJRXQ5hLiROvXSeu2VVZdLRunPtckG76Z5scCTbMNb6xZbulMn5Tb2l9
         ReV5SF/BWW4Rh2x0hLTzi1zfyfAjJCYSIodrbPjNRpAhvvuWaIf4UkrXJJMik2F/ev/p
         22Iv1ZmVaDLNeGIsMV1/1mykvSjyMS1gukw5l3+/aVwIve4llat4QrwbCMgsA37NYkbF
         knJ4lfdOzmjc355xPyoQ6Vw8XZ5Mwv4BDZmW+/o7MeHdpRfl9bmglUz/QuuXGDB7WArm
         zyjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=FeWNfBorV8XHTCPn8em1MUWWLchqHqGLHnLU8/pqBVo=;
        b=tGouaGQ+kGZukwM7KP+4wmqE3X5mYcJ8N9A+i0fngnr/L8Bw63yh+aOyl1phP4elAe
         Z3C2Trfsor2moKhi0bPpwpb8zVk8zROl4Oegk7P0lehwd8ZbWv7qCUyNq49Tv7UnYEYz
         qRBx7G2CTFwA0BjJBgOS22ZZ+LQ5e+8EwxkLOtSNlWJj2e4hK6GiY64DRUjDyCAE11ib
         z6fGDn3b38g5cgfKybWQf7LaIXNk7imu2xTTDc19cUDugLMUqim1UmRcuKVOhYzPkhPH
         hQNmoRx8lliizCEaVxhJbpC9HvVhyUD7gs1yWTHqhk+qnIt4JHA9OEdIFcB4yzhTEaKb
         F5vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IH4Sb5Xs;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id b26si201406qtb.2.2018.02.28.14.51.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 14:51:42 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IH4Sb5Xs;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id l24so1530427pgc.5
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Feb 2018 14:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=FeWNfBorV8XHTCPn8em1MUWWLchqHqGLHnLU8/pqBVo=;
        b=IH4Sb5XsEFMn0jMNr/3PZTnrJ0dGTnN8ehq5+zEWFTZMUsjPNtqAZYNjJTK6tHDycA
         1DLl4m4Cx37u8namZY0NwT1rq4SSeqsI93Z/0qCQuM1x6vBzTA0jkpu/LF1vUE7ojIOO
         H812AhXH8v4xpcHH3X0OcFYmjOd4PhmHzXKVQfEVXPKmOHv8Y0Yaf1xg8gz9HDtv66f3
         yH1eDqL51E0zJDHbR44DEQu1csFgf3VRmBWohbzfR5B3pBsgEtHa5jhJc7fKpJMeGGTm
         T7BUa2lIUOeQHsRS9EGj/G7Gv96Km9UUC1SP647N2lhPVB+/TAA/IvkHk0PIw0J1NLdg
         yC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FeWNfBorV8XHTCPn8em1MUWWLchqHqGLHnLU8/pqBVo=;
        b=Gs82IgHv/TlnJsANS9eACrTxU/hFOa9ssRVKsO5vP8+cvLasxTYulbza24MDe4FNzV
         eClgFbu5R2kB4nbiRbhOxIxJkZRg/QQWWmdzckd3Znnx5lEa+e6IyEBcwkv1v1KY+bUl
         hMnEYeo9OEc59WvOx9cTjlQ+HhLMZZlH7GNd8N1hloCr4UPLyfHEJeO38NSXYAGnyw0G
         cCmwQwqPLf5dfXvzQNIyYhoJWQtOmxDweTdv/YXd+W4sdA6Ymr0LMP+5d0RnRL51zMJ3
         gh/PzaEp1HhPfoLysfOk3FMqQeIA4DwxIr+Ub7gsiIzufwV1tymKedzNmMm/SNzHlcNV
         cfgg==
X-Gm-Message-State: APf1xPBRkQrFJp6P2SIAwkg9/jRPDde8NuL/mvRzd6RAw/qXrN32Kggd
	HbAHDC+R/+9sgB31x2SKm+o=
X-Received: by 10.99.143.88 with SMTP id r24mr14373066pgn.160.1519858301275;
        Wed, 28 Feb 2018 14:51:41 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-249.resnet.ucsb.edu. [169.231.23.249])
        by smtp.gmail.com with ESMTPSA id c11sm6694885pfe.109.2018.02.28.14.51.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Feb 2018 14:51:40 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: vt6655: replace NULL comparison with variable
Date: Wed, 28 Feb 2018 14:51:12 -0800
Message-Id: <1519858272-23123-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace NULL comparison of the variable with just the variable name to
conform to the Linux kernel coding style. Issue found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index bea0b7f..7a5c2a8 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -966,7 +966,7 @@ s_vGenerateTxParameter(
 		return;
 
 	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
-		if (pvRTS != NULL) { /* RTS_need */
+		if (pvRTS) { /* RTS_need */
 			/* Fill RsvTime */
 			struct vnt_rrv_time_rts *buf = pvRrvTime;
 
@@ -988,7 +988,7 @@ s_vGenerateTxParameter(
 			s_vFillCTSHead(pDevice, uDMAIdx, byPktType, pvCTS, cbFrameSize, bNeedACK, bDisCRC, wCurrentRate, byFBOption);
 		}
 	} else if (byPktType == PK_TYPE_11A) {
-		if (pvRTS != NULL) {/* RTS_need, non PCF mode */
+		if (pvRTS) {/* RTS_need, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
 			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 2, byPktType, cbFrameSize, wCurrentRate);
@@ -1002,7 +1002,7 @@ s_vGenerateTxParameter(
 			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11A, cbFrameSize, wCurrentRate, bNeedACK);
 		}
 	} else if (byPktType == PK_TYPE_11B) {
-		if (pvRTS != NULL) {/* RTS_need, non PCF mode */
+		if (pvRTS) {/* RTS_need, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
 			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 0, byPktType, cbFrameSize, wCurrentRate);
-- 
2.7.4



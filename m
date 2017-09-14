X-GM-THRID: 6464370677237415936
X-Received: by 10.101.87.206 with SMTP id q14mr8305149pgr.78.1505390942469;
        Thu, 14 Sep 2017 05:09:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.216.68 with SMTP id b65ls4961315itg.1.canary-gmail; Thu, 14
 Sep 2017 05:09:01 -0700 (PDT)
X-Received: by 10.202.213.3 with SMTP id m3mr11720073oig.19.1505390941717;
        Thu, 14 Sep 2017 05:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505390941; cv=none;
        d=google.com; s=arc-20160816;
        b=p75tGIcvm8IHW5MSQacDbf7yGCNS3Q5Y9s9Zn3NOMcJOxr4nptHASHNzJOvCoc9mqQ
         Z5HdMrN7F/0H7z4ClfRmJ+MwAtCieqO/7h+Pik+SuucXj5AEf17O9LPzw28GOULQatd4
         bqmVlEGpTDmK2HshsihiK+h0q3+BUAwi5jspzlZe3VKikH51MWp/NujiRxV/PJ9tMq3y
         3uSI2joDImZRVt+R6n8dgdPdaYEUkq7NoR3fhN9uyy4eXyQqXsJn5ekxTRuDQjS+3e6O
         cfFE2gyqM/lO+pfcwBdrj/F3CJ3XHFAO+d52es+sAtd27XltChgznHIlPMOaMldldn8t
         GrWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ZRl893xsP8fX4KXiWwrPuRCwLz5zOWqjlHpJNewO1AI=;
        b=wPYt9AEMUwbaKw8mErMXWiI8u0EKTWxScz85f6KsBLFuKfTb7Gga+wr32bodJ8m7Vv
         Rrb7LSOSJKeQLj96yrVQYJDhDISuiIITlAJi13fE48nUwzu2lG/2D2kcKYFxdOiZvbTh
         /kYlOB1jgu4Phi7RLSzb3UPYrsMHQRvlLQshBxCj75Rhl85jxBN9Tqy8NL/zvtCGvHki
         una/cCrPsWKkmkyfLS0bh8G3jV/hd78JC/ooU3koTARJi4RaHMYVpshsYrRQvZb8MknM
         DsLKG4Sg/d+oVmcikgeX1WzJRyoYy2Xb0aRTQ0OwzyCiqdxcn9+l7cUXtTTXg/KXm7Gj
         fn+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UBci+cBb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 88si1332590pfm.20.2017.09.14.05.09.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UBci+cBb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so1422690pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 05:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ZRl893xsP8fX4KXiWwrPuRCwLz5zOWqjlHpJNewO1AI=;
        b=UBci+cBbHrTpqiSvYQNNai84vst6YLkNd4SMr5JjuRsPdoYVG7hv/xyX8TDahD0pIT
         OBy0N36ag8A3RSaED6wY49p59wpbsbABMy8lh55AU63FXePFZLcTBR/c49TDsKVo5LxZ
         uDOo3iVLth7818mziT8dHtkhTUETRAjQVU13Vut9tDk7sKlD+3HViaRPptbobsazggQi
         zzS3wmbm/1Xw3ss6DP5UuP9s0jElxOe9xNJRXKfU9vxH/IBw8Z+P1uvTT/yh+rBPaBgn
         MDQMnq/ZiKHgEncI1p7B9El2oeQMjdCJDOIo8ycno5WAw/81zrfdYFLT/jYOrDCdHuFQ
         8Dbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZRl893xsP8fX4KXiWwrPuRCwLz5zOWqjlHpJNewO1AI=;
        b=Xkxtr43nEoMiMBg2+RXYfhCPM14iM1fDwREXiMWuZr8Sf/yBlgBa0S9i7gPpANYIqd
         lsMketjNUN+XNbAmekM/cbn48AK2mT9NTC7AfCkH6Us05gUXSwUpnszjE4KjlsGJlU++
         Kg0j8RJRo6xoQICalmkR1YCxwH3LVtGEyJ0aA8N/XCriwVxNKhY9DIAxFIwbQOtsUkDE
         nEoR2pKNMtasJvUMZmtGDc0HjEMMOVGnuV8HjOaaURVws/uc8h8L0uQ4sScqOQ7vyqRm
         Wh2zJwtdkWfyvRH/cjb4k5nRjqfafAK4VcnX6Rb7RDM+RfRINMyosWuQfe4Mx1bOPZhB
         5Ewg==
X-Gm-Message-State: AHPjjUiiSBThNxmb4FBe1J+Ke+7BCZAD2+T7vF1g9dHZWPT6Pga/hI6Q
	nnsa7LNCsrCvgA==
X-Google-Smtp-Source: ADKCNb5GxtJNar10ucIZociw+fUeEBVpgwhlWbt+cOZLLwH90EHlla0iSpYcwjXCxg/debfwmAzDSA==
X-Received: by 10.101.77.137 with SMTP id p9mr20832802pgq.88.1505390941352;
        Thu, 14 Sep 2017 05:09:01 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([122.176.131.114])
        by smtp.gmail.com with ESMTPSA id r22sm31009450pfe.78.2017.09.14.05.09.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 05:09:00 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] staging: xgifb: fix multiple line dereference
Date: Thu, 14 Sep 2017 17:38:50 +0530
Message-Id: <1505390930-9374-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the checkpatch.pl warning:

WARNING: Avoid multiple line dereference - prefer'XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag'

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
Changes in v2:
  - fix the line over 80 characters warning.

 drivers/staging/xgifb/vb_setmode.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index cea128b..d55ffa6 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -5479,8 +5479,9 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
 						   ModeIdIndex))
 				return 0;
 
-		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
-						Ext_ModeFlag & ModeTypeMask;
+		pVBInfo->ModeType =
+			XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag
+			& ModeTypeMask;
 
 		pVBInfo->SetFlag = 0;
 		pVBInfo->VBInfo = DisableCRT2Display;
-- 
2.7.4



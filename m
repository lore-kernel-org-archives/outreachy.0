X-GM-THRID: 3455056871424
X-Received: by 10.112.146.65 with SMTP id ta1mr819775lbb.19.1424901662172;
        Wed, 25 Feb 2015 14:01:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.130 with SMTP id v2ls705575lae.98.gmail; Wed, 25 Feb
 2015 14:01:01 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr827837lbb.9.1424901661742;
        Wed, 25 Feb 2015 14:01:01 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id ta1si1219034wic.1.2015.02.25.14.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 14:01:01 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id l18so6432561wgh.7
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 14:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZZVSs+2Ltcs5zzB61Xj/KRFVspG2WEYHm/CDBlJ+04U=;
        b=eawsMnaAQa1nkTakhXEZ9EfottM75TxtJad46VAgYW51QvaAOOF8AnWucTBG4+aUrq
         OYmshSF1/VAY8zmjyQvzCi3AkWCIb43sEHVxO14AW9EhUWbX9h0HQC1AxwAY9Aa0Dqhg
         sfwCbhtZDiqGF6ufsgTkwvvDeRgFjPli5aSeHTzi17ta5xbxhvUT7/q0zf1yFeswZlml
         QxmOx2GII5bRFhw0lz4yHgjycrygoizt4w2vQh9+j0S1ECPCJ452p96bb3nto9qkqYb4
         2PIYyvyvec9Yf/fIIlXBSROp4mSsN2WBRXs/eyO3YYFFToPcc527cOQe8AVsoOLi+pJR
         XsgA==
X-Received: by 10.194.186.200 with SMTP id fm8mr10465132wjc.138.1424901661653;
        Wed, 25 Feb 2015 14:01:01 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id gi9sm26929419wib.21.2015.02.25.14.00.59
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 14:01:00 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: rtl8723au: remove unnecessary break after return
Date: Thu, 26 Feb 2015 00:00:17 +0200
Message-Id: <1424901617-9037-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: break is not useful after a goto or return.
return after the break value is removed unnecessary. That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c b/drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c
index 33777d2..2dc1856 100644
--- a/drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c
+++ b/drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c
@@ -148,7 +148,6 @@ u8 HalPwrSeqCmdParsing23a(struct rtw_adapter *padapter, u8 CutVersion,
 					 ("HalPwrSeqCmdParsing23a: "
 					  "PWR_CMD_END\n"));
 				return true;
-				break;
 
 			default:
 				RT_TRACE(_module_hal_init_c_, _drv_err_,
-- 
1.8.3.2



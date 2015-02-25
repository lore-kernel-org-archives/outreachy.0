X-GM-THRID: 3455056871424
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3a3ee4ed73b7a8b7
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.9.65 with SMTP id x1mr842634lba.16.1424902143215;
        Wed, 25 Feb 2015 14:09:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.42 with SMTP id g10ls854038laa.51.gmail; Wed, 25 Feb
 2015 14:09:02 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr834328lbb.11.1424902142730;
        Wed, 25 Feb 2015 14:09:02 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id r6si1227568wix.0.2015.02.25.14.09.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 14:09:02 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f172.google.com with SMTP id l15so36718833wiw.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 14:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Whf8+BYQVM1AHgb6gHgavJspGG90jnls01+tXcvUsU0=;
        b=mwofxRGD+zIKvlw6P1InSxzQwfS2HdyYVRP6PqyW7EqlHSTSd78vXQMFT5Zr2YWNVW
         LHwAyXoNmQzJJtW6E9WkzzDAbqK7+hY77N1B4KmNA6h/6itU2GUjdskz36r32rCMZysO
         68FMkR6XSD0E2fCUgmWkk8DeD7BDmnQDunpTOIU8BquCa04gpgMddtpgwx0uW5p5O+FS
         3fMvG4o+88WdAMGfAfBqzZpllaDQY/T5alx8gdpmRN3pCMrijR+yaGXfbNQqSPX1oQxn
         yfnIMgmGHLKjIPKVVdy+WZPK0EwmtnL1QAdR2xcEMKZwN4V6ZAxVa013RwQkElO/z3Nx
         9Fsg==
X-Received: by 10.181.12.105 with SMTP id ep9mr44607762wid.85.1424902142644;
        Wed, 25 Feb 2015 14:09:02 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id gm2sm27005538wib.5.2015.02.25.14.09.00
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 14:09:01 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2] Staging: rtl8723au: remove unnecessary break after return
Date: Thu, 26 Feb 2015 00:08:21 +0200
Message-Id: <1424902101-9163-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: break is not useful after a goto or return.
Remove unnecessary break after return. That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---

v2:changed commit line

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



X-GM-THRID: 6200529091432546304
X-Received: by 10.107.163.80 with SMTP id m77mr7354240ioe.0.1443673179300;
        Wed, 30 Sep 2015 21:19:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.135 with SMTP id n7ls921198qgd.99.gmail; Wed, 30 Sep
 2015 21:19:38 -0700 (PDT)
X-Received: by 10.31.148.206 with SMTP id w197mr6363028vkd.9.1443673178692;
        Wed, 30 Sep 2015 21:19:38 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si685806pbb.0.2015.09.30.21.19.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 21:19:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv12so62191279pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 21:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=wZAcG6LNWIm62TlbqApCoRNUQsnXli0lfEWImndlyNs=;
        b=SEW2FxsrJKOFCx8qcVQh0w8Tfcbsh5YopsUkGiO6R8BuThk6yEY56a6F0hKUjMD4D3
         SJkynzO9FtwlbaYXwuFqec5Qrd6yZdT0TjfhOktKd1MDskdKpnUCLjqLlM1e91EfShk3
         u6/5MvbbnfONf+DfoO1HrhIj7ZWxdaHlVX8OKyxCKXOdg3niUAxR332BDNVc8tzvWUiv
         PgkA6eq1t4/dQ/KZFGTehng2c40eeY55CxNoyxG7sIIm2vi6dF1zbl/yqcAu33Fg0fTN
         S2APJzI7jENP57LPdVSMBMo00ey94pDf4gGVB68T+ng3moNIrFhwfp/1A4xhXHo+GMJl
         MF3w==
X-Received: by 10.68.244.34 with SMTP id xd2mr9285767pbc.50.1443673178551;
        Wed, 30 Sep 2015 21:19:38 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id tz1sm3575850pbc.50.2015.09.30.21.19.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 21:19:37 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: android: Remove unneeded definition in header file
Date: Thu,  1 Oct 2015 09:49:26 +0530
Message-Id: <1443673166-12653-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560CB459.00CA,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These struct are globally defined in source file but they have been
defined as static in .h file. Remove definition in header file as
it is not needed. Also fix the compiler warning.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/android/sw_sync.h | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/android/sw_sync.h b/drivers/staging/android/sw_sync.h
index c87ae9e..a671595 100644
--- a/drivers/staging/android/sw_sync.h
+++ b/drivers/staging/android/sw_sync.h
@@ -39,21 +39,6 @@ struct sw_sync_timeline *sw_sync_timeline_create(const char *name);
 void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc);
 
 struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj, u32 value);
-#else
-static inline struct sw_sync_timeline *sw_sync_timeline_create(const char *name)
-{
-	return NULL;
-}
-
-static inline void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc)
-{
-}
-
-static inline struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj,
-						u32 value)
-{
-	return NULL;
-}
 #endif /* IS_ENABLED(CONFIG_SW_SYNC) */
 
 #endif /* _LINUX_SW_SYNC_H */
-- 
2.1.4



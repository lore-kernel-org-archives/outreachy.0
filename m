X-GM-THRID: 6208828760687378432
X-Received: by 10.107.17.8 with SMTP id z8mr65895ioi.12.1445610483601;
        Fri, 23 Oct 2015 07:28:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.250.164 with SMTP id zd4ls1007827obc.76.gmail; Fri, 23 Oct
 2015 07:28:03 -0700 (PDT)
X-Received: by 10.182.106.228 with SMTP id gx4mr17264038obb.34.1445610483044;
        Fri, 23 Oct 2015 07:28:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si2296427pbb.0.2015.10.23.07.28.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 07:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so119875828pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 07:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=zcGCFlNa4nqhqLVbMn2O7BLopQ6dU4NVEtgGTrLkJlc=;
        b=di4fxTuNFLggjg/WJGgQsaUnl4iVk2RX/THkLLUVvu+77gBaPzrNI21yDNGsBdq+8Z
         lBQOlt2D4X6ET1CDGrOHbfmq9gzMFF4pgzFLsa0AQ++R8vYnOCHIdFFF+JnT9svSfv+S
         bLB28KbTnJXErfihgKFsXauJX79s57Gazev9PUbFiBh+dyruV4XmWGoOJM5zr4PY4qf5
         41m+p4gMHnK3Z0JhNUSpEbCfMnHYJRq6VC8/E2bQ5CADiyp3fpSEkFPMOG3buJtllzj5
         mZQGe917yv7MmULoiDSi1wAKpaORYxELyxSApmGeKGNjJosfnqr7CPK0SW1uHq3kDtMz
         krQw==
X-Received: by 10.66.154.165 with SMTP id vp5mr5280875pab.90.1445610482844;
        Fri, 23 Oct 2015 07:28:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dd4sm19364097pbb.52.2015.10.23.07.27.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 07:28:02 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] Staging: rtl8723au: Use put_unaligned_le32
Date: Fri, 23 Oct 2015 19:57:52 +0530
Message-Id: <1445610472-2752-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.562A43F1.00AE,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Introduce the use of function put_unaligned_le32.

A simplified version of Coccinelle semantic patch used -

@@ identifier tmp; expression ptr; expression y,e; type T; @@

- tmp = cpu_to_le32(y);

  <+... when != tmp
- memcpy(ptr, (T)&tmp, ...);
+ put_unaligned_le32(y,ptr);
  ...+>
? tmp = e

@@ type T; identifier tmp; @@

- T tmp;
...when != tmp

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Update commit message

 drivers/staging/rtl8723au/hal/rtl8723a_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
index 9733aa6..1662c03c 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
@@ -127,8 +127,7 @@ int rtl8723a_set_raid_cmd(struct rtw_adapter *padapter, u32 mask, u8 arg)
 	u8 buf[5];
 
 	memset(buf, 0, 5);
-	mask = cpu_to_le32(mask);
-	memcpy(buf, &mask, 4);
+	put_unaligned_le32(mask, buf);
 	buf[4]  = arg;
 
 	FillH2CCmd(padapter, MACID_CONFIG_EID, 5, buf);
-- 
2.1.4



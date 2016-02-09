X-GM-THRID: 6249320811377721344
X-Received: by 10.107.136.23 with SMTP id k23mr23664126iod.23.1455033386775;
        Tue, 09 Feb 2016 07:56:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.116 with SMTP id d107ls2293558qga.20.gmail; Tue, 09 Feb
 2016 07:56:25 -0800 (PST)
X-Received: by 10.129.158.2 with SMTP id v2mr14961979ywg.42.1455033385918;
        Tue, 09 Feb 2016 07:56:25 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id u66si5340115pfa.2.2016.02.09.07.56.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:56:25 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id e127so34015075pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KCbo1N6eQsTqjjudQvvuISUwnqyY5E6L9sCnWTxYBos=;
        b=fGH5BhA1O68xRNFzOUoq/4t/XCX56o9xF5ZjUEAc6qqwKRPGvo95j0h4KMWj+PFMsH
         yNT5wAvX3mqDEllzn+YYrST871e8DAvKCMSUiMBbIx59AhpiiErIaOB4ah5pV/wxtcQH
         7vdBhFg6DtwdzL08Dkz2sP6WTUfIfr67m50nX/i2c2f3F+rU7yK1ka8OCxFLRhYuzBb+
         kzsKZEvloNDVmKfdEpUd6UmJhWs3nuS/S05bkPiXlp+c+xNHC6C9n/+bbGJNGRPy9eeT
         DvoGNNj44Y3RyYI7NKQNCuismhu7lp5AIW7KIiC7DAeSpYJ/mSZirKnxuAMznyY2bEHy
         rC7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KCbo1N6eQsTqjjudQvvuISUwnqyY5E6L9sCnWTxYBos=;
        b=WkSF97GECZmJIajwyVunERzAsLm8bov7tNZDLxv9T22fB1wQPQWWSNUirPUjG1fsTA
         8AXvKNyO+pQmQncU7b+qZDEtH/u5em50VWP34B73un181KSooqoiMto4+fPLEoAhd9xA
         BZdaZLlAZNCXul3oUgKVrLCZ64U00S+eWFHKAGfXG4joQxjLPEevRyx9i7Ke9qaPKhn9
         8FsQ48tSdjcgzicLW8n5MIqHE5HDXfKy64r3DRrJ9cY2L/W2G+0DoQbhvxfo1pnBxgnc
         P+ZJnD6zAkI/0bJWuolqOw2mqfGKBHS9APAK/VP7DJewcjsWMf//2Mb+FiVScRICvHs1
         6gfg==
X-Gm-Message-State: AG10YORtIwrpSz4wnO6zcWY8/CBPwKuSVq8M7v1vlYMvDKEqK/s0deLK0oD7lFeyPdDSsA==
X-Received: by 10.98.10.149 with SMTP id 21mr51109016pfk.75.1455033385737;
        Tue, 09 Feb 2016 07:56:25 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.148.12])
        by smtp.gmail.com with ESMTPSA id d8sm51686929pas.14.2016.02.09.07.56.21
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 07:56:25 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 09 Feb 2016 21:26:13 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: xgifb: Use shorthand operator
Date: Tue,  9 Feb 2016 21:25:33 +0530
Message-Id: <1455033333-31657-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Use shorthand operator for assignment statement to make code look cleaner.
Made a coccinelle script for this and did changes.
@@
identifier data;
constant x;
@@

(
- data = data + x
+ data += x
|
- data = data - x
+ data -= x
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index de96da1..0daa661 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -289,7 +289,7 @@ static void XGI_SetCRT1Timing_H(struct vb_device_info *pVBInfo,
 
 	if (HwDeviceExtension->jChipType >= XG20) {
 		data = xgifb_reg_get(pVBInfo->P3d4, 0x04);
-		data = data - 1;
+		data -= 1;
 		xgifb_reg_set(pVBInfo->P3d4, 0x04, data);
 		data = xgifb_reg_get(pVBInfo->P3d4, 0x05);
 		data1 = data;
@@ -302,14 +302,14 @@ static void XGI_SetCRT1Timing_H(struct vb_device_info *pVBInfo,
 			xgifb_reg_set(pVBInfo->P3c4, 0x0c, data);
 			data = pushax;
 		}
-		data = data - 1;
+		data -= 1;
 		data |= data1;
 		xgifb_reg_set(pVBInfo->P3d4, 0x05, data);
 		data = xgifb_reg_get(pVBInfo->P3c4, 0x0e);
 		data >>= 5;
-		data = data + 3;
+		data += 3;
 		if (data > 7)
-			data = data - 7;
+			data -= 7;
 		data <<= 5;
 		xgifb_reg_and_or(pVBInfo->P3c4, 0x0e, ~0xE0, data);
 	}
@@ -3394,9 +3394,9 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
 	xgifb_reg_and_or(pVBInfo->Part2Port, 0x25, 0x0F, temp);
 
 	tempbx = push2;
-	tempbx = tempbx + 8;
+	tempbx += 8;
 	if (pVBInfo->VBInfo & SetCRT2ToHiVision) {
-		tempbx = tempbx - 4;
+		tempbx -= 4;
 		tempcx = tempbx;
 	}
 
-- 
1.9.1



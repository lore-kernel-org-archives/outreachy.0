X-GM-THRID: 6209894564031889408
X-Received: by 10.194.2.146 with SMTP id 18mr3895337wju.0.1445853748055;
        Mon, 26 Oct 2015 03:02:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.234 with SMTP id u10ls43965wia.21.canary; Mon, 26 Oct
 2015 03:02:27 -0700 (PDT)
X-Received: by 10.180.89.41 with SMTP id bl9mr4023843wib.3.1445853747666;
        Mon, 26 Oct 2015 03:02:27 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id h1si127552wiy.0.2015.10.26.03.02.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 03:02:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id q8so153247445wik.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 03:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=zqccHrqE+GhihwsINCCenoKySW2U+yEVmiDx4O02XQk=;
        b=wOeFJsy6g0KL0c6wqskolp8PCriX7DV/oIxNXt1e0FfzhcCCY4ruW60JhP+sQIvX8b
         mx1MPaTpEseAfA14u8F5UAXH+iVGCfbTEZ4Bv+/ugUOeH61sLh6yCn32wzUQRefAP2p5
         q8Z9Tk1zr/aFIb1oFLTBcq85ZH2lHtDPoY1ZtYe4dsZ4cvgP5uDospq52ThxdxuL9MeU
         XNzv9GRCEGVMboo4KrwdZ/mqjL0S8yfOVIURhByrUe0O9HCB6eZiHY+3MD8/Fq0hZqjU
         Ha7rn7fxo8eKcVurnA00Mp4Y2eJdtQZF5KPorvr2efe64Tmx9AJ7YAFr1YMITZw77krI
         71qg==
X-Received: by 10.180.216.105 with SMTP id op9mr20890495wic.13.1445853747565;
        Mon, 26 Oct 2015 03:02:27 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id q1sm38066687wje.39.2015.10.26.03.02.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 03:02:27 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: xgifb:Block comments edited.
Date: Mon, 26 Oct 2015 13:02:20 +0300
Message-Id: <1445853740-8215-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Alignment of block comments should be correct.Fix checkpatch.pl
WARNING: Block comments use a trailing */ on a separate
line

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index c886dd2..f519fd2 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1997,8 +1997,10 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
 				tempbx |= (SetInSlaveMode | SetSimuScanMode);
 		}
 
-		/* LCD+TV can't support in slave mode
-		 * (Force LCDA+TV->LCDB) */
+		/* 
+		 * LCD+TV can't support in slave mode
+		 * (Force LCDA+TV->LCDB) 
+	         */
 		if ((tempbx & SetInSlaveMode) && (tempbx & XGI_SetCRT2ToLCDA)) {
 			tempbx ^= (SetCRT2ToLCD | XGI_SetCRT2ToLCDA |
 				   SetCRT2ToDualEdge);
-- 
1.9.1



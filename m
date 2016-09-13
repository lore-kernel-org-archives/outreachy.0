X-GM-THRID: 6329844985199853568
X-Received: by 10.66.73.101 with SMTP id k5mr1185825pav.9.1473781882048;
        Tue, 13 Sep 2016 08:51:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.175 with SMTP id 44ls1481162otf.31.gmail; Tue, 13 Sep
 2016 08:51:21 -0700 (PDT)
X-Received: by 10.157.16.68 with SMTP id o4mr20525875oto.32.1473781881540;
        Tue, 13 Sep 2016 08:51:21 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si3533024pab.2.2016.09.13.08.51.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 08:51:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z84so1412470pfi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 08:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Yijj7xjf+Z2jdsNHcxFyK1TkZ6GB3jnVukQLD2iuZ70=;
        b=GjdsptCBKfvpKRM/HCNJjI1cGixQ2bqZ8id1+sDkJHyavI2vEKnYyVQaqSB6YgJt07
         OoO44eFAcXkol67jAlJQcru/ngIOFpKMPPH2FwlUcXc/XBKcm6l4oPt6Pej0gEJuDhXE
         bqNM2K7iAfD/CP3WkRBZm9ihct2jnVz+GZXdly2zcuY6e4tDOdx2K0Fzoib1z0nwvalW
         FxWWWVbkfj1Aj5zE0gGzRnMaWt8s7kGHFrqA+U3kFhOFB74ueezGS8u+gYKn6jL8GcxN
         2mx1/2ppT+JswY5H4B1QbAxW/bg370MwnwAQwdENQ6SZ9Y2//VX/oCrip1x16iZ2tECV
         znwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Yijj7xjf+Z2jdsNHcxFyK1TkZ6GB3jnVukQLD2iuZ70=;
        b=eWBw3YAZxtdO4rrV47/dvndVqDGRaGNPtBhg4ucBNm3BeBStGXmJXOGc5zEXeP+yyT
         Nmh/5kWjz+AMfFOKhkvKu9jN5WyJHKKQXgO9qXmEzK12tnDSDIZ7lUpi9yQsMhNG3O44
         p96jTrL9J/1zcgzynIeSKJCx4aL1QZWizi0MXGfJawzPm8E+sfVua+5fHjIlCrh6iJQL
         dZdAwfWggheXRZiqdH5kTUjVg7OcjAn7GzLS6/BMvGfX6l492my3QkkqkNCkSrmO2e5O
         GE0cEAmBVH7QOqZwOGOiI+s+rNC/gc3vlAf0XHu6bW+rDDo7292xCks//5FDKzkdERhb
         7JxQ==
X-Gm-Message-State: AE9vXwPrdjpZQqA5ig2RTzaxroy4KASKX9CFZbTpuqDVW8Qr6H5WWNF/aK+qwW9WZurycg==
X-Received: by 10.98.202.135 with SMTP id y7mr2569388pfk.10.1473781881339;
        Tue, 13 Sep 2016 08:51:21 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id xx7sm32161255pac.3.2016.09.13.08.51.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 08:51:20 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: xgifb: move AND operator for logical continuation
Date: Tue, 13 Sep 2016 21:20:37 +0530
Message-Id: <20160913155037.12206-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Fixes the checkpatch issue Logical continuations should be on the
previous line.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 50c8ea4..ac27b2c 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1741,8 +1741,8 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
 	for (i = 0; i < 4; i++) {
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
 				(unsigned short) (0x10 * i));
-		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA))
-				&& (!(pVBInfo->VBInfo & SetInSlaveMode))) {
+		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
+				(!(pVBInfo->VBInfo & SetInSlaveMode))) {
 			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
 			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
 		} else {
-- 
2.9.2



X-GM-THRID: 6208221372561227776
X-Received: by 10.112.55.69 with SMTP id q5mr3541635lbp.24.1445516149277;
        Thu, 22 Oct 2015 05:15:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.232 with SMTP id el8ls225171wid.48.canary; Thu, 22 Oct
 2015 05:15:48 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr3606693wjb.5.1445516148943;
        Thu, 22 Oct 2015 05:15:48 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id em5si215893wib.2.2015.10.22.05.15.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:15:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id fx6so129321239wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 05:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=OViQRkafMciq46hTtyvia6hCK587zKtAl7N6Ro5v8j4=;
        b=zCQ5uvrbOJc/qrbjFL8bUZ//M6yYdxPzlTcA/U5vgCWPVz//hjT7g3W5P5oKVaFjR7
         +JCNy9QDGQHY6gDOkY5blTIVcYuIJVE+JSZwT+askW9sasezl3epARBqjqxBGBxkFbue
         u3WCOAvxq6v8Xck+Fn4YboXh+VWQdfcUz6ehVyzjbmBWTu8/Oco8bxme8e81n0p8TQ7F
         bR7/evxDsaclf0o3VkxgvyC1ArOQjO+raBmNd9mwS6Z2BusvwJc3EthEhavCJ9j1mFCv
         wmhRRSE7fSyBVNoB4wSGs+tfY5QWGWDAIc7hCUW6n2x5XZjEnaO7GhRHtrxueMPxp4Zd
         xclA==
X-Received: by 10.180.10.101 with SMTP id h5mr16212487wib.22.1445516148854;
        Thu, 22 Oct 2015 05:15:48 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id hk5sm16518653wjb.6.2015.10.22.05.15.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 05:15:48 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: vt6655: Add space around '*'
Date: Thu, 22 Oct 2015 15:15:39 +0300
Message-Id: <1445516139-3914-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '*'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '*' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 6989050..15953cf 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -286,7 +286,7 @@ bool CARDbSetPhyParameter(struct vnt_private *pDevice, u8 bb_type)
 
 		if (pDevice->bShortSlotTime) {
 			bySlot = C_SLOT_SHORT;
-			byDIFS = C_SIFS_BG + 2*C_SLOT_SHORT;
+			byDIFS = C_SIFS_BG + 2 * C_SLOT_SHORT;
 		} else {
 			bySlot = C_SLOT_LONG;
 			byDIFS = C_SIFS_BG + 2*C_SLOT_LONG;
-- 
1.9.1



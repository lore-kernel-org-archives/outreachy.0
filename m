X-GM-THRID: 6208221372561227776
X-Received: by 10.112.145.201 with SMTP id sw9mr1367474lbb.13.1445464178196;
        Wed, 21 Oct 2015 14:49:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.226 with SMTP id ch2ls500471wib.22.gmail; Wed, 21 Oct
 2015 14:49:37 -0700 (PDT)
X-Received: by 10.180.89.41 with SMTP id bl9mr2840809wib.1.1445464177835;
        Wed, 21 Oct 2015 14:49:37 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id o3si369767wiz.1.2015.10.21.14.49.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 14:49:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id p11so4196285wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 14:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=IW2PdCkkDvx5bx19wwzhZxVTe8WC4dr4vYkZoeBsl10=;
        b=WJ8xr7czpt3/nd9oIrwr83h0b8pavWPcK5gEYxpfw+rw0FcmmdEhhwLKgG2d9qcGeg
         ef2bXPwa4InPRl8fIdGSBfa8DHwDJwKCy45LqOcTmJk61EqQ/X8Yb9VSAuMKds81slzS
         +/ZIDhc7w1OToMOYDZ4U0++aARLF3qBnjFJoUk/VsZW8VUXlJalDBL2WwAmAJfaQUSCe
         EEwUZO4D5CJGcNN/eRVlzbhunV8Bp7NmKqbf2OkIEgB/uvRbywfxQufSoa8Kb2Wk+1D+
         FDlb/vlGiTbUQk++0HfSkHwk46zmgJAwNp6H5hwTAlCPfUBLeUwJE+1K51tjheU2KyT0
         1UDg==
X-Received: by 10.180.96.136 with SMTP id ds8mr14538015wib.76.1445464177712;
        Wed, 21 Oct 2015 14:49:37 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id gd10sm12852371wjb.47.2015.10.21.14.49.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 14:49:37 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: vt6655: Add space around '*'
Date: Thu, 22 Oct 2015 00:48:29 +0300
Message-Id: <1445464109-13553-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '*'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '*' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index ecbe94f..6989050 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -238,7 +238,7 @@ bool CARDbSetPhyParameter(struct vnt_private *pDevice, u8 bb_type)
 		BBbWriteEmbedded(pDevice, 0x88, 0x03);
 		bySlot = C_SLOT_SHORT;
 		bySIFS = C_SIFS_A;
-		byDIFS = C_SIFS_A + 2*C_SLOT_SHORT;
+		byDIFS = C_SIFS_A + 2 * C_SLOT_SHORT;
 		byCWMaxMin = 0xA4;
 	} else if (bb_type == BB_TYPE_11B) {
 		MACvSetBBType(pDevice->PortOffset, BB_TYPE_11B);
-- 
1.9.1



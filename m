X-GM-THRID: 3489260371968
X-Received: by 10.112.126.194 with SMTP id na2mr845278lbb.18.1424903211596;
        Wed, 25 Feb 2015 14:26:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls628807lah.23.gmail; Wed, 25 Feb
 2015 14:26:51 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr843600lbc.22.1424903211148;
        Wed, 25 Feb 2015 14:26:51 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id ta1si1224425wic.1.2015.02.25.14.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 14:26:51 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id k11so6458595wes.11
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 14:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3Ze79fRF3xJATYOSYhCTc2ZH0jl33RpUqzLaz4vqZ/w=;
        b=oFFL9NyKsyAE4I08lGa/uOl3kW68R4y42LYSP+Vkcsf23qWxwp+HpoJt2jf+swyLNU
         ySzwHBZ4QyzyP4V/YXHp/bBrUtIMH+n5CVxvNWp+/qCueLYEnD8psiHlxos5MVyJkHww
         RqcgTIDJ6r2bSVmqqirdkG0g5KsMtYZjlagX+spaHftC7lQ0elAorRF8BV7aTNRcCfYY
         W/t9MpNmuIKOBwHHU4xFIvRfvMx0WfXiNNgBK/uTtLIkMIfUgbNm9j2yvOHF8PjoApW4
         o2qXzGVpH0gFWiuGbTxDTk4/lXwOSHpN4bHmYr/vEpaH8GqwHrA29c5wiuVWIcPbu7cU
         tKGg==
X-Received: by 10.181.13.39 with SMTP id ev7mr44900560wid.3.1424903211054;
        Wed, 25 Feb 2015 14:26:51 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id v16sm27034123wib.5.2015.02.25.14.26.49
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 14:26:50 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Remove spaces at the start of a line
Date: Thu, 26 Feb 2015 00:26:08 +0200
Message-Id: <1424903168-10197-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: please, no spaces at the start of a line
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/rtl8723au/hal/odm.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/odm.c b/drivers/staging/rtl8723au/hal/odm.c
index 5269b46..a527c33 100644
--- a/drivers/staging/rtl8723au/hal/odm.c
+++ b/drivers/staging/rtl8723au/hal/odm.c
@@ -216,16 +216,16 @@ static void ODM_EdcaTurboInit23a(struct dm_odm_t *pDM_Odm);
 #define	RxDefaultAnt2		0x569a
 
 bool odm_StaDefAntSel(struct dm_odm_t *pDM_Odm,
- u32 OFDM_Ant1_Cnt,
- u32 OFDM_Ant2_Cnt,
- u32 CCK_Ant1_Cnt,
- u32 CCK_Ant2_Cnt,
- u8 *pDefAnt
+u32 OFDM_Ant1_Cnt,
+u32 OFDM_Ant2_Cnt,
+u32 CCK_Ant1_Cnt,
+u32 CCK_Ant2_Cnt,
+u8 *pDefAnt
 	);
 
 void odm_SetRxIdleAnt(struct dm_odm_t *pDM_Odm,
 	u8 Ant,
-   bool   bDualPath
+bool   bDualPath
 );
 
 /* 3 Export Interface */
-- 
1.8.3.2



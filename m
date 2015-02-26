X-GM-THRID: 3561108799488
X-Received: by 10.112.126.194 with SMTP id na2mr1048729lbb.18.1424933506676;
        Wed, 25 Feb 2015 22:51:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.6 with SMTP id iy6ls822778lac.38.gmail; Wed, 25 Feb
 2015 22:51:46 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr1029063lax.10.1424933506104;
        Wed, 25 Feb 2015 22:51:46 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id by11si1523245wib.1.2015.02.25.22.51.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 22:51:46 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id x3so8073531wes.6
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 22:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=tzmLXWFmfXQQcSGJJ4yoHyxkRvHd5LhdN9iOmLsYnEA=;
        b=Q2Df+AyBVh0mVobb/fxJovZT5mJWW8w3/MjZ8uY+vH3aijfMooUv+au7uLFDt7X8Hj
         y3f1SoqdG525Y35QyNh+WQF5XkOVlU152aZ2DtuV/1WgeeqOVT1bH+bx4GHfrf9xfiZL
         qVfwYv9JnFOt8qjnxT1HAn7MtyVlnBfKus3uT8MrrZxUn/pjxKsqP9Q+XxMiABKiuZoG
         nGG4QGKwt+tfajGIYBQwxPYpB+0UrTG8lE/oHFhAionnfbHDPgpnijHoCvGh7eC05kAl
         2WN6iHTA1t2R3erntD8BnNQwU3WbbaDaIze9lYY/H2PWqJyxnv7a07UqW+FxDsxB5cSm
         7e0w==
X-Received: by 10.194.57.199 with SMTP id k7mr13697468wjq.1.1424933506019;
        Wed, 25 Feb 2015 22:51:46 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id m4sm68086710wjb.25.2015.02.25.22.51.44
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 22:51:45 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2] Staging: rtl8723au: Tabs should be used
Date: Thu, 26 Feb 2015 08:51:03 +0200
Message-Id: <1424933463-12366-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: please, no spaces at the start of a line
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---

v2:changed the subject line, tab was used.

 drivers/staging/rtl8723au/hal/odm.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/odm.c b/drivers/staging/rtl8723au/hal/odm.c
index 5269b46..375f85d 100644
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
+	u32 OFDM_Ant1_Cnt,
+	u32 OFDM_Ant2_Cnt,
+	u32 CCK_Ant1_Cnt,
+	u32 CCK_Ant2_Cnt,
+	u8 *pDefAnt
 	);
 
 void odm_SetRxIdleAnt(struct dm_odm_t *pDM_Odm,
 	u8 Ant,
-   bool   bDualPath
+	bool   bDualPath
 );
 
 /* 3 Export Interface */
-- 
1.8.3.2



X-GM-THRID: 3070446534656
X-Received: by 10.112.9.65 with SMTP id x1mr1403195lba.16.1424724651124;
        Mon, 23 Feb 2015 12:50:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.98 with SMTP id m2ls593280lae.5.gmail; Mon, 23 Feb 2015
 12:50:50 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr1647919lbc.2.1424724650661;
        Mon, 23 Feb 2015 12:50:50 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id r6si783404wix.0.2015.02.23.12.50.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:50:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id r20so20888026wiv.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rIOm0QvK4vdGgAfBXw53/gcgtpbTNEN93hmF+pdGZrw=;
        b=Nm1EswHN5F8XrER4+ATB3jIGvJ5o28DHfKvI6cShR5tYqdMooieo06sGOrFBntw0iS
         6agJ1DDrdu6AB3swzK9ZaTcO++z/oACQmNJgq8PNEc0lSLf2hEr6UUAHaAyoYFdAthCm
         e1+iXLAT1KCgGcHGOn3PelTgkFWSiw/8BZ7fdMTtpUcgd6MuUBulpMN1R3sbySLqnyWE
         2nEk/9QRYotcpNexOYnHU3Jt1GFWIC5PNVERR/mchE9emAGSrG17oa1asOJ4CCFYqFhe
         fXAMfoV9nw5hTgOaCBsIYDeUG2v9XYE+vKTUguUxfApx/55F1B1FUvy/J3M3HWkuW+md
         dhtw==
X-Received: by 10.180.82.129 with SMTP id i1mr23696939wiy.1.1424724650554;
        Mon, 23 Feb 2015 12:50:50 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dz6sm10747035wib.0.2015.02.23.12.50.49
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 12:50:49 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Add space
Date: Mon, 23 Feb 2015 21:50:42 +0100
Message-Id: <1424724642-9022-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch adds space after struct definition. Issue found by
checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
index e283f5e..d7c718b 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
@@ -14,7 +14,7 @@ typedef enum _TR_SELECT {
 	RX_DIR = 1,
 } TR_SELECT, *PTR_SELECT;
 
-typedef struct _TS_COMMON_INFO{
+typedef struct _TS_COMMON_INFO {
 	struct list_head		List;
 	struct timer_list		SetupTimer;
 	struct timer_list		InactTimer;
@@ -25,7 +25,7 @@ typedef struct _TS_COMMON_INFO{
 	u8				TClasNum;
 } TS_COMMON_INFO, *PTS_COMMON_INFO;
 
-typedef struct _TX_TS_RECORD{
+typedef struct _TX_TS_RECORD {
 	TS_COMMON_INFO		TsCommonInfo;
 	u16				TxCurSeq;
 	BA_RECORD			TxPendingBARecord;	/* For BA Originator */
-- 
1.9.1



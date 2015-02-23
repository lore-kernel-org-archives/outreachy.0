X-GM-THRID: 3055769616384
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2e6a0e877a487b6f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.219.102 with SMTP id pn6mr976717lbc.12.1424722848886;
        Mon, 23 Feb 2015 12:20:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.42 with SMTP id g10ls576044laa.51.gmail; Mon, 23 Feb
 2015 12:20:48 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr1603813lbo.8.1424722848235;
        Mon, 23 Feb 2015 12:20:48 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id r6si778046wix.0.2015.02.23.12.20.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:20:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id r20so20710712wiv.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=tTvjP37dGbwEFf4prnOfTbM/VeKqe30gDxb7TEWdC6I=;
        b=Y2PCIlxkc0Wx6BSwIIDOqnV9hpndYjlccBXYM4lZ1F8draNIGeY1Ghu7/PdXIZh2ao
         MdmzmscM3oiNSl5grU5chNnmHcRKq2IBTSppADvoo6IInGfXWFaVHFTSnFWCw0Ax1+1B
         PzMTR0ER6cAZEojid8Z66RR9+wZvnG+EQ5RlslXNLNAVdUhBLDiEUNncSygViLxc4MV4
         KejJRBzJmpGNDwMDl+6iTARkJwH3xlG/ZTTQCTOiGk1/zPEfthyLG+JHbel08A8dPiDR
         63LYDdLi+s0ijKplkFR/Js9JG+isMsKwXdA+l6Uw2mk1yAOxMAp78S1dei1Of2dCDqVa
         elKg==
X-Received: by 10.194.178.161 with SMTP id cz1mr26360738wjc.102.1424722848132;
        Mon, 23 Feb 2015 12:20:48 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id g10sm17376979wic.7.2015.02.23.12.20.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 12:20:47 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3] Staging: rtl8192u: Fix comments in the file
Date: Mon, 23 Feb 2015 21:20:37 +0100
Message-Id: <1424722837-8732-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove commented code, no longer in use and convert comments from
C99 to C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v3: remove unused code, format comments.
v2: remove space before tab.
 drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
index 7ed7243..e283f5e 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
@@ -1,14 +1,14 @@
 #ifndef _TSTYPE_H_
 #define _TSTYPE_H_
 #include "rtl819x_Qos.h"
-#define TS_SETUP_TIMEOUT	60  // In millisecond
+#define TS_SETUP_TIMEOUT	60  /* In millisecond */
 #define TS_INACT_TIMEOUT	60
 #define TS_ADDBA_DELAY		60
 
 #define TOTAL_TS_NUM		16
 #define TCLAS_NUM		4
 
-// This define the Tx/Rx directions
+/* This define the Tx/Rx directions */
 typedef enum _TR_SELECT {
 	TX_DIR = 0,
 	RX_DIR = 1,
@@ -28,9 +28,8 @@ typedef struct _TS_COMMON_INFO{
 typedef struct _TX_TS_RECORD{
 	TS_COMMON_INFO		TsCommonInfo;
 	u16				TxCurSeq;
-	BA_RECORD			TxPendingBARecord;	// For BA Originator
-	BA_RECORD			TxAdmittedBARecord;	// For BA Originator
-//	QOS_DL_RECORD		DLRecord;
+	BA_RECORD			TxPendingBARecord;	/* For BA Originator */
+	BA_RECORD			TxAdmittedBARecord;	/* For BA Originator */
 	u8				bAddBaReqInProgress;
 	u8				bAddBaReqDelayed;
 	u8				bUsingBa;
@@ -44,11 +43,10 @@ typedef struct _RX_TS_RECORD {
 	u16				RxTimeoutIndicateSeq;
 	struct list_head		RxPendingPktList;
 	struct timer_list		RxPktPendingTimer;
-	BA_RECORD			RxAdmittedBARecord;	 // For BA Recipient
+	BA_RECORD			RxAdmittedBARecord;	 /* For BA Recipient */
 	u16				RxLastSeqNum;
 	u8				RxLastFragNum;
 	u8				num;
-//	QOS_DL_RECORD		DLRecord;
 } RX_TS_RECORD, *PRX_TS_RECORD;
 
 
-- 
1.9.1



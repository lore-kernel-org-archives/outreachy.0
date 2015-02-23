X-GM-THRID: 2063631122432
X-Received: by 10.180.105.129 with SMTP id gm1mr1543275wib.3.1424719976619;
        Mon, 23 Feb 2015 11:32:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.103 with SMTP id k7ls615806wiv.5.gmail; Mon, 23 Feb
 2015 11:32:56 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr1548504wiv.0.1424719976285;
        Mon, 23 Feb 2015 11:32:56 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id ev8si751268wib.3.2015.02.23.11.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:32:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id m14so20842428wev.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mvAypuR9WETUOp6OXvimruGmQxzWXl5mJWSKDds4aQ8=;
        b=tO+0+hCpc05dODXd35goR8kFGjqfI1+s+Oe89G5JQc9r1rW8YEsc8tggw56RNbFaW5
         cUY4gceEkzCFsz1uKSZGy0kTH1xpEmbh4g2mKtCfMPdMnKRo5yJ6Huy3wur4t3wHU7CD
         wVCm1KCSsl2va6LrrItvDIzldlQqkLxh+10Mi8OxWELLT13HXCMiMHd3v2UGrX5Vn3Sq
         cXOu84c98f8wkidtRIIbCZWhjxLcx77pKebDBgLA9deTln/V8hDUgKJu6rvjA6MSOyYt
         6MIdsghBsqTVGf1sG3MMdairfJWQTXpCK8cDZUy+emKhKTesjCndXaHCF6FoCT760Lzt
         UClg==
X-Received: by 10.180.189.35 with SMTP id gf3mr15722434wic.5.1424719976207;
        Mon, 23 Feb 2015 11:32:56 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id ch6sm56914094wjc.3.2015.02.23.11.32.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 11:32:55 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: rtl8192u: Convert comments from C99 to C89 style
Date: Mon, 23 Feb 2015 20:32:48 +0100
Message-Id: <1424719968-7895-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Kernel style for comments is C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: remove space before tab

 drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
index 7ed7243..44a9e3d 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
@@ -1,14 +1,14 @@
 #ifndef _TSTYPE_H_
 #define _TSTYPE_H_
 #include "rtl819x_Qos.h"
-#define TS_SETUP_TIMEOUT	60  // In millisecond
+#define TS_SETUP_TIMEOUT	60  /*  In millisecond */
 #define TS_INACT_TIMEOUT	60
 #define TS_ADDBA_DELAY		60
 
 #define TOTAL_TS_NUM		16
 #define TCLAS_NUM		4
 
-// This define the Tx/Rx directions
+/*  This define the Tx/Rx directions */
 typedef enum _TR_SELECT {
 	TX_DIR = 0,
 	RX_DIR = 1,
@@ -28,9 +28,9 @@ typedef struct _TS_COMMON_INFO{
 typedef struct _TX_TS_RECORD{
 	TS_COMMON_INFO		TsCommonInfo;
 	u16				TxCurSeq;
-	BA_RECORD			TxPendingBARecord;	// For BA Originator
-	BA_RECORD			TxAdmittedBARecord;	// For BA Originator
-//	QOS_DL_RECORD		DLRecord;
+	BA_RECORD			TxPendingBARecord;	/*  For BA Originator */
+	BA_RECORD			TxAdmittedBARecord;	/*  For BA Originator */
+/*	QOS_DL_RECORD		DLRecord; */
 	u8				bAddBaReqInProgress;
 	u8				bAddBaReqDelayed;
 	u8				bUsingBa;
@@ -44,11 +44,11 @@ typedef struct _RX_TS_RECORD {
 	u16				RxTimeoutIndicateSeq;
 	struct list_head		RxPendingPktList;
 	struct timer_list		RxPktPendingTimer;
-	BA_RECORD			RxAdmittedBARecord;	 // For BA Recipient
+	BA_RECORD			RxAdmittedBARecord;	 /*  For BA Recipient */
 	u16				RxLastSeqNum;
 	u8				RxLastFragNum;
 	u8				num;
-//	QOS_DL_RECORD		DLRecord;
+/*	QOS_DL_RECORD		DLRecord; */
 } RX_TS_RECORD, *PRX_TS_RECORD;
 
 
-- 
1.9.1



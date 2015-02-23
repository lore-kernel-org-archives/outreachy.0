X-GM-THRID: 2063631122432
X-Received: by 10.112.167.98 with SMTP id zn2mr1559723lbb.6.1424718957067;
        Mon, 23 Feb 2015 11:15:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls589916lac.22.gmail; Mon, 23 Feb
 2015 11:15:56 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr1584677lai.4.1424718956303;
        Mon, 23 Feb 2015 11:15:56 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id by11si983588wib.1.2015.02.23.11.15.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:15:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id m14so20753072wev.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=atwTGz1SsRfiLWWHI8dECyCuAtPaae6bg/2C5oBgTbs=;
        b=NwMGA2zzgTZmT5VjOTMKb+Y4Qt3MX3iAjL43UsZx22D79AfgtJ6PzWypBtmPbwJDD/
         fEJoGn3XYm6YQfiyycAX9EF6eRBwfkpI1jcckkk2U0inifIoeA3SIwrCXrVcEMUx02Ri
         fkJnvMNQn9YQ65YZDViOgdni6WkKOfb7pXz3aFGFuu+WsyN594ptfRrtsCqbUsvnTn/B
         g+/DS6+r/ZpMvWNPQiRN23xSTVixa2rVjHqy4QphbNF/wrTGjyske/OUsghvxN4jEqRO
         Vz5SNYLgu+J9BviNx+NOVVIHX3XryOQf5YtUlhwOOadaVmKWzFFjvBef3fku6Y0buoCU
         xJuA==
X-Received: by 10.194.5.168 with SMTP id t8mr22475696wjt.150.1424718956126;
        Mon, 23 Feb 2015 11:15:56 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id k6sm17166000wia.6.2015.02.23.11.15.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 11:15:55 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Convert comments from C99 to C89 style
Date: Mon, 23 Feb 2015 20:15:48 +0100
Message-Id: <1424718948-7299-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Kernel style for comments is C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
index 7ed7243..873969c 100644
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
+/* 	QOS_DL_RECORD		DLRecord; */
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
+/* 	QOS_DL_RECORD		DLRecord; */
 } RX_TS_RECORD, *PRX_TS_RECORD;
 
 
-- 
1.9.1



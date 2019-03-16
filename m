X-GM-THRID: 6668976439860133888
X-Received: by 2002:aa7:8d4d:: with SMTP id s13mr3354097pfe.92.1552742084216;
        Sat, 16 Mar 2019 06:14:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2ad7:: with SMTP id q206ls360063pgq.12.gmail; Sat, 16
 Mar 2019 06:14:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwkYRokcP9U+jV563tKbM19om7pjIYYbxMQCO7RKr5rbCIaKG0ehJQEQ9Am/ji4P08/1pwL
X-Received: by 2002:a63:2043:: with SMTP id r3mr3341258pgm.149.1552742083544;
        Sat, 16 Mar 2019 06:14:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742083; cv=none;
        d=google.com; s=arc-20160816;
        b=OivV/4jL0PCWrUSqtDyXEvigzD0RQtCaCFJDkdAPTfJecVei2a0r0h6iPV16gZVTU2
         Z4EA5rxXjkJjP4MMiaokd+7h158cvePR7C/RQkzk4O1Gk9LWEHWM3RQqBzOx8YQNOXB6
         P/zCH8g8yD5T59EGw3DkhczdTcOJtPwQMbQ4VG7xwV2XZIR+sUfVQ7YN0Vs+r1SEqhsE
         8kiMZ9eZRo9pwU6I7NeU0gRdztSdoJoI9CY3TYqLl5OPMm3kGYn+LPH7nVYjYpwwIMna
         +xHbHQ3DjLVstfcuJgLKRnFX6Am/61ahhf+up5cuqa/80HupNYdMQDJfyMQ+qM74eYax
         Q3Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CFrVUFFP1OtBujmqkH2Qx3/C0eRXFrkp1BSDgmfCaSs=;
        b=rR7h/tduBQp/1loJ2vfOvXxpIIbcAjxX71BXr/umQKHXTK0lIVBBtjM5BbTx3KNL1K
         JG0uKCW6CD5UL5NsRQRSb93m8xK5TK5XlgWlvZOXAi6nnDX6UVK37L2YyTl+h/OVSnhY
         VskOYYutIck5J5CPGWb64WxeeQwMoPC5VmO+qMndH8nB1KBhVw5odWlkkpAgTfIV3l2m
         fQbQFWfmlJfrx7V05LNUGTuzuLBPX6EvkaTemPh318xl6ogFs/jc87M9gH+2Ub5XyZzW
         q3WUIg6VykYtNdGxmj9p6YVF3LriWSPSuIgeoj9lzbgbH4fwfd4PmLoxuEODnQP32AKs
         8KuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LDAN5NM4;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 192si276831pgc.0.2019.03.16.06.14.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LDAN5NM4;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id e17so8337977pgd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CFrVUFFP1OtBujmqkH2Qx3/C0eRXFrkp1BSDgmfCaSs=;
        b=LDAN5NM4q+yGbFSyUerswNxJxb/AVuj4y0C395EKf8AD48pMLl48jjp0W17OZrMryq
         00fB+idaARFSW6PE4jbmqglWbgGuYrww+knUWgDoPY3VqM/vUiVGFinVkSebVHbK9/o0
         zcPokYF67mbhJdltDZmi+4Www7ZgQ/IrTC/xXs2gbdieG0s+mbvkjfH4jbkvV38bhYgq
         LHVZmizjVE+/qdToQCsN7oqjc/wO7IHzHLtmHLVPJX/My7H1y5VbnD0AX4GEEBynCObV
         NWNLXOa6q45c1GJGx4WN4szLN0Mcwjf+wj06hgfHT2RH33Hv11a5QUpxfkfdzAtj95QT
         VAyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CFrVUFFP1OtBujmqkH2Qx3/C0eRXFrkp1BSDgmfCaSs=;
        b=C6wUqg3WGDlWRUSUGyDCMv8OvtFwzlVSyk9mLb1ZgFzL7eHROQF/Nmhb28OFuWSF4f
         TMZfbtl1gPSnM4L5hopphFQIuxNSNwKqEOwpQpacTHbm7MeXTovOsnfSngM8Zk2LUXYv
         JgPnfL1wbYB1O8NA0uXN2tjJB1Muotvh5yIsLbTGE2j7glP8H60htH3aHznVtXw1vpHZ
         puWlI2zgW2u39oMNtV6r3adG791920kHo06lCs7FPcH5OfALHe95vtGbne4SxhJcRWAw
         BhExIsDsyIcIHPvNHCSPqt1awO8qjnhjwLmyqZ8kVphkG6/eBfr6Pggvok5+p5+iYu3m
         J70w==
X-Gm-Message-State: APjAAAWdXgmKkE5tZF3Fl4enIX6jH5DO8V994xh/JB3Ax6cSbKAAmGNA
	lPcMd6bc046izmeaGHff8CAmaH/7
X-Received: by 2002:a65:4549:: with SMTP id x9mr8644048pgr.3.1552742083242;
        Sat, 16 Mar 2019 06:14:43 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id k3sm17852578pfc.59.2019.03.16.06.14.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:42 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 3/4] staging: rtl8723bs: hal: Replace variable==NULL comparisions with !variable
Date: Sat, 16 Mar 2019 18:02:50 +0530
Message-Id: <20190316123251.24875-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316123251.24875-1-himadri18.07@gmail.com>
References: <20190316123251.24875-1-himadri18.07@gmail.com>

Remove comparision to NULL. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 8 ++++----
 drivers/staging/rtl8723bs/hal/hal_com.c    | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 2b43f6d3c762..8eb28f97ebcc 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -75,7 +75,7 @@ static BTCDBGINFO GLBtcDbgInfo;
 
 static void DBG_BT_INFO_INIT(PBTCDBGINFO pinfo, u8 *pbuf, u32 size)
 {
-	if (NULL == pinfo)
+	if (!pinfo)
 		return;
 
 	memset(pinfo, 0, sizeof(BTCDBGINFO));
@@ -95,7 +95,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
 
 	pinfo = &GLBtcDbgInfo;
 
-	if (NULL == pinfo->info)
+	if (!pinfo->info)
 		return;
 
 	msglen = strlen(dbgmsg);
@@ -1571,7 +1571,7 @@ void hal_btcoex_SetDBG(struct adapter *padapter, u32 *pDbgModule)
 	u32 i;
 
 
-	if (NULL == pDbgModule)
+	if (!pDbgModule)
 		return;
 
 	for (i = 0; i < BTC_MSG_MAX; i++)
@@ -1585,7 +1585,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
 	u32 leftSize;
 
 
-	if ((NULL == pStrBuf) || (0 == bufSize))
+	if (!pStrBuf || (0 == bufSize))
 		return 0;
 
 	pstr = pStrBuf;
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 7f8ec55b08f1..b97b53c34449 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -18,7 +18,7 @@ u8 rtw_hal_data_init(struct adapter *padapter)
 	if (is_primary_adapter(padapter)) {	/* if (padapter->isprimary) */
 		padapter->hal_data_sz = sizeof(struct hal_com_data);
 		padapter->HalData = vzalloc(padapter->hal_data_sz);
-		if (padapter->HalData == NULL) {
+		if (!padapter->HalData) {
 			DBG_8192C("cannot alloc memory for HAL DATA\n");
 			return _FAIL;
 		}
@@ -909,7 +909,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf)
 	int i;
 	u8 trigger;
 
-	if (buf == NULL)
+	if (!buf)
 		goto exit;
 
 	trigger = rtw_read8(adapter, REG_C2HEVT_CLEAR);
@@ -982,7 +982,7 @@ void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *pst
 	u8 i, rf_type, limit;
 	u32 tx_ra_bitmap;
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	tx_ra_bitmap = 0;
@@ -1407,7 +1407,7 @@ bool GetHexValueFromString(char *szStr, u32 *pu4bVal, u32 *pu4bMove)
 	char *szScan = szStr;
 
 	/*  Check input parameter. */
-	if (szStr == NULL || pu4bVal == NULL || pu4bMove == NULL) {
+	if (!szStr || !pu4bVal || !pu4bMove) {
 		DBG_871X("GetHexValueFromString(): Invalid input arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
 			 szStr, pu4bVal, pu4bMove);
 		return false;
-- 
2.17.1



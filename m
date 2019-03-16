X-GM-THRID: 6668944264527872000
X-Received: by 2002:a25:949:: with SMTP id u9mr3991742ybm.8.1552734592666;
        Sat, 16 Mar 2019 04:09:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls2354703ybb.4.gmail; Sat, 16 Mar
 2019 04:09:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwPMbf9VSUklPLgFcZmyRU3GmH0Nkh53QyHFG5FJ2Oq1M0hhcRu5KVBe4Gs6TUiI0PQrpkG
X-Received: by 2002:a25:37ca:: with SMTP id e193mr2246826yba.75.1552734591678;
        Sat, 16 Mar 2019 04:09:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552734591; cv=none;
        d=google.com; s=arc-20160816;
        b=ST3toqv9pOQhIT5pyPqG8Pc7q97xcW4HUPLaitmWmClh5/NxmSXfKJHDP1QDrEFx95
         y+5NywAZIkdjxwfCleOufRvOTjmGA5Uh0xB9WDkAhcprt5AMyo6J85AtDwRpftV4ihMN
         ozjXGtKV/X2XTXnCXg8c4f3uKfKHuM2kNbZEVbD0zSveqv55qxiQp6+yvAObPcEHfCHr
         L3NKdbK/FuVQM5vX+sKNzsPHHqfbp28rAUpSiS8kK3iv/QJRAkFufWj94X7EyTm/LLHl
         CKY4q+vFFa9gX+w1FwKGkkVK8IzzAvyiHvYG8esZXYgezST9Ql6dw6iVAIlVSuEtWTyq
         0zOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=D6EsBVrhFpFiwKSMMMTyoM3fVm0Lfz2uZCO8jN+dIlk=;
        b=zdjZO0d+WYTsj3UGpVlt97KrWauSJzDMEVvd+h26ehW57RA7Bw2mVx6+cQJ0Tmw6d7
         hkeQNMYDn5yB0o/8xtW8r+WsH2lWRRp5G4NDBOSwU0Qm9Ylqi6tprT32Hvd8tURqnzw8
         xJWFsRfV+clmjao7SkWvDvSmkj5K4YOLvx061JX4mu2X/6Sf6tM4jUda2BabzY846Ys9
         tod2JtZRJCP1JdG7yhFcSVsb4zCS5q0ELY5cWb/o8jbrrMqATwZG3o38WtsyVpT0Gcp1
         EBDTYYGZ5/z7m7c36zBh1uJOV1bPM23TvoEkhzxXQfvUqzVf96HoLat8rSFd4J9mifIX
         L1KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U6oQDM3V;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id t128si210026ywa.4.2019.03.16.04.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 04:09:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U6oQDM3V;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id r124so8216619pgr.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 04:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=D6EsBVrhFpFiwKSMMMTyoM3fVm0Lfz2uZCO8jN+dIlk=;
        b=U6oQDM3Vz1aQo3pcIT2VVvn+Ka2VRjIX6VqRQvDwP1K2DO0I/NqiW3WLp1g1Ol2KD9
         6+WsVvDRf6AV11PuonGLqMaJY0v+Q908ybeRnQgu3PvreskbZeCECpyEeCH0l9n2OttS
         cPJLs0zfrjdBE/vcsx2Jo9nMdbumlVXipS20ECsfxCaWsdzJF8A/4i8GVOEIlFBbvKqF
         fISCEAG7WNmHaCR/gP/24lJMtJURfu2SHxtzA50vZwzGahJs20TbGEeQmSKg5ht6/Y5L
         H0OQOB5yFpfREAW/YBrQXUUIdLpjsQWh6SvTbXTl1uB48/MjpnruE7cB7Q2ayU2GXS/T
         Rl0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=D6EsBVrhFpFiwKSMMMTyoM3fVm0Lfz2uZCO8jN+dIlk=;
        b=Cqe+pBb8gzVtLQNH8F8tC8zLXkIgCBJxvJwWCtT5zf18CJJpJPg7CUGxJS1o2P0EEI
         vXdgsFXUFpucp+oMq0IyiiyTm4jp3lXBstbfETjqi+WvnX7uKmyQDS3kj2XOp3/EQHj3
         nhfcWfxlvKTUndY/OvoxcaU14QDIDuIzWtpZHPDL5eW3f1BiflPNbV6E0JdPzc7kMr1W
         WiMv6pSA642D27z53/R2329tVFLTRX2DTfXBZJQ3yPBXVb/zdGt8RfKpZhnDjy9kFp2C
         qUU0OnfESz7a0OITWT3f5eUvi0nPhhERHInn7aH3T2QCAZo6S1gUDqWS2zx+LhS8vJ2e
         YFXQ==
X-Gm-Message-State: APjAAAVM7+OMu4HbuosEg7klea3UIXvA4PHItIOq2kKnuv4QqND2jKH6
	EI5Iemp1jvdwihiuDa9wvJ8=
X-Received: by 2002:aa7:8b12:: with SMTP id f18mr9150296pfd.240.1552734591172;
        Sat, 16 Mar 2019 04:09:51 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id d11sm12097156pfh.29.2019.03.16.04.09.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 04:09:50 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 3/3] staging: rtl8723bs: hal: Remove comparision to NULL
Date: Sat, 16 Mar 2019 15:57:59 +0530
Message-Id: <20190316102759.20272-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316102759.20272-1-himadri18.07@gmail.com>
References: <20190316102759.20272-1-himadri18.07@gmail.com>

Remove comparision to NULL. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
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



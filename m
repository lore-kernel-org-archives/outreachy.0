X-GM-THRID: 6669239463558774784
X-Received: by 2002:a5d:8c97:: with SMTP id g23mr7733457ion.0.1552803325147;
        Sat, 16 Mar 2019 23:15:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:911:: with SMTP id 17ls2550805itm.5.gmail; Sat, 16 Mar
 2019 23:15:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx5ZCX8ONsdxV9ZRWk3O6WnJuuSuvCqmTPXVM7Yl1crHeDuHom8tMVeW4p94reXmuNluBWx
X-Received: by 2002:a24:becd:: with SMTP id i196mr6572036itf.25.1552803324277;
        Sat, 16 Mar 2019 23:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803324; cv=none;
        d=google.com; s=arc-20160816;
        b=Mc8g0YGPGYg6xMV/6D9KUL3eFD/k+pvZ6DBXQDa74Mt/VNf9iV0Q9MyLjHjMoOTtv6
         T/x1pGoNqneErYDy2N55Q2uSrusLLEVjZtnb/1RSxh9eZbnxiMGrnrT3DycGI7owFCc+
         5jXYNHyq58Zuqy7VKLJwx10ZoN31GfLuEnghiDd4FderIswl5PjmzFK0Uab2P4Y4pXin
         Iw8R3ipzuFpAfSOypswdQsvtM6dktJGGsRCdNHrK5sazfAg1+jRjaMvA2uFmVnCaQsNA
         872EPgi6h07QZsRmrJBaqsJyejSnKDjf1qz/UzWr6mlGnvak/DvioFOPluno1zQPdO+a
         mYxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=klb0jJMGIluY6H9sfFqJ6+mkXU/iQ5QKEojacwGLdiw=;
        b=o/oRRBd/DV7GqIh+4NnQQ+9FKOlBzlFEOjM7xB6mJ31bD8lYXfPKynYBDJRI3PrZrH
         bkZ+P9P+b4miqjoAwcMceP0ebIpsxtrPeDubEdZkCyvSdG/JzUYZuTiWjYuBVtpNA1bs
         pO0uC9mxiaAhgOei1yjtoTw5RN6M9KsKhQffJ8cFf8qFHdj+wX5Uj9uvcXLdsetugIFx
         tcJ7jAw1ld6rTwGGHu9x27RCrzDYkCUlDN0nXkT2faktkUOzSGgXC6ogDZWPMz2WGEp/
         G66aPO4KVGfo+wLun1THRIDgpdj6yK3cl278cDaG4p90HVzZh7FhLN70EQpUJgQUpGax
         d/sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JA4N/omb";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id u1si424598itb.2.2019.03.16.23.15.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JA4N/omb";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc41.google.com with SMTP id c4so10495886ywa.11
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=klb0jJMGIluY6H9sfFqJ6+mkXU/iQ5QKEojacwGLdiw=;
        b=JA4N/ombZFDHsJ05Icbc3lA6GGE2eXj/ePt9j5OQ+DBFf2SXPPqg8zzWncXFjiKsXI
         fnm5k0MN5IwBPGvC21qzh115M0nifA6lo8l9yLzWmK/uMzeRwF7fRBL2lMUOoUeV8VSj
         bVxIQmgMXbYZEH/IS7dFHKQT6gXzgLj33N+933+Mpn9yonXxnmzNSi10XDFCbX4z8Iwo
         woIrtU7ny/Pg33pXuIISt23aKOkn+BAWkHo7oH4wLc6EdPTRRZtgaDc9sVuMgB3+NCd2
         a0QA5nwY2Hh/VBerSpgXV79sECunq67SOQJHKFXUd+qe84KQL8L1DdmwZ2j68MuQva06
         VL9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=klb0jJMGIluY6H9sfFqJ6+mkXU/iQ5QKEojacwGLdiw=;
        b=j+4SH386nXfZptdIWqEKUDERvNP5Y9eRHs/S/uqOWvitM1pU36XWv8ZDILTiywi3hj
         XzKn3lbnr5a15Gz34fRfxlqg5BigBY8wSl4ff/3lgE94rkYND8PXJURmTyPEAmnoWYVw
         H86KFJQRwGFnRVa9+eaJh9X5dD29GKrj/ES1Txq+kZLwIsIWSEvsfC5J4bkgOeUIMZwa
         rTo/y73pBmMaWmiw18YSJZPja41KvTE4DKpH896UkusOT9HN3oz16BKFH4ysu8pMOjV0
         62O8Tt+fdnH9FhzcPFTflhchrE/fNnoiZb9+h18pqrc+3eh41KI1LBApDKzCXfK+n9FU
         rEWw==
X-Gm-Message-State: APjAAAW9Phs+T0Y/v8HtMPcCC2f5OIE9HzN+q22tXY1x78/2EF6UqVsN
	LmH1Y92dbej6baUIDRRuqac=
X-Received: by 2002:a25:f201:: with SMTP id i1mr9261002ybe.155.1552803323962;
        Sat, 16 Mar 2019 23:15:23 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:23 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 03/11] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_hal_init.c
Date: Sun, 17 Mar 2019 11:44:53 +0530
Message-Id: <20190317061501.85447-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

Remove comparison to NULL in file rtl8723b_hal_init.c. Suggested by
Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 85fd12cca4ae..caa8e2f39448 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -883,7 +883,7 @@ static void hal_ReadEFuse_WiFi(
 	}
 
 	efuseTbl = rtw_malloc(EFUSE_MAX_MAP_LEN);
-	if (efuseTbl == NULL) {
+	if (!efuseTbl) {
 		DBG_8192C("%s: alloc efuseTbl fail!\n", __func__);
 		return;
 	}
@@ -1463,7 +1463,7 @@ static s32 Hal_EfusePgPacketRead(
 	s32	ret;
 
 
-	if (data == NULL)
+	if (!data)
 		return false;
 
 	EFUSE_GetEfuseDefinition(padapter, EFUSE_WIFI, TYPE_EFUSE_MAX_SECTION, &max_section, bPseudoTest);
@@ -3664,7 +3664,7 @@ s32 c2h_handler_8723b(struct adapter *padapter, u8 *buf)
 	s32 ret = _SUCCESS;
 	u8 index = 0;
 
-	if (pC2hEvent == NULL) {
+	if (!pC2hEvent) {
 		DBG_8192C("%s(): pC2hEventis NULL\n", __func__);
 		ret = _FAIL;
 		goto exit;
@@ -3714,7 +3714,7 @@ static void process_c2h_event(struct adapter *padapter, PC2H_EVT_HDR pC2hEvent,
 {
 	u8 index = 0;
 
-	if (c2hBuf == NULL) {
+	if (!c2hBuf) {
 		DBG_8192C("%s c2hbuff is NULL\n", __func__);
 		return;
 	}
-- 
2.17.1



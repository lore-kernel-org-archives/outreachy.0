X-GM-THRID: 6669239463558774784
X-Received: by 2002:a62:2084:: with SMTP id m4mr1257659pfj.57.1552803343337;
        Sat, 16 Mar 2019 23:15:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:907:: with SMTP id 7ls5142002pgj.2.gmail; Sat, 16 Mar
 2019 23:15:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyWec8FzoCPmrcssX3AA3dFWstPOZ2IseKCtJr1b7TfopIu3BviaZLyqhFpx2cPeB3tO0LQ
X-Received: by 2002:a63:2043:: with SMTP id r3mr4479245pgm.149.1552803342681;
        Sat, 16 Mar 2019 23:15:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803342; cv=none;
        d=google.com; s=arc-20160816;
        b=lsX/TKS99HbuDapeIs1em9YZbsQ9RC+Qq3a274CGaPh53Lg4kZDgOioIKdpz7iK0pS
         UNsRkeqwrLkgQt52MwAc/YmAxOL9RNg94WX0YYNcXfv4WvLsq4kydK3lt2WuRKRTWS2d
         5HGTpVawNSoS2Jz1Jltpm0sBsSMVciqVWBb8F7PbTMInjtL3B9T2YUVAAMMTTSCSjPiP
         rrPus4Y3+uFVXlaFhOZWeAghvDrgEd+2wZZoBoxM2gP+xeWsN9wFAh9OuHN8TSb4tmQt
         qQg6dlkQtQh1IFOrDUzriDXOwifOWPCbiNe1ztkMj0zOuuV/IZ/+hFhPXpPB0Ez72Q9g
         GDCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=z4K8jbDii2XPkltq2fDNZbAoujzcfSJ10xLUUNdVBo8=;
        b=Yq4zBKdAcHNGZskre40IGr8LnrtBYo+iu0S/+RPjSItKh5SBnlVHUC0Whj4Qj8gb3u
         9uAz1BpKcaoQbdxMsIaZxx1IUloGs5CIyLaljYRvp/3BLg1lfnecRao4gwv/rCFCQZOo
         bGyqxnrkHTlZ9X3mLcRWrWZp6HaeKgt7G5t7RSXryKVDy/BVTAyiXQx+7kjWK79xrfXD
         jXapM+HGzuVATLUqhL0VHRjO93IqgRSmYWrnejTVxfZWPoIQ85aOgoM/rXjQ9+xA/F9w
         0cCghD+pfK9G4Uxv6aMIeQXkptNFxPJyy+oqdlDOr03GFp0xQwDqfttG2/rY+bdgK8AR
         gEKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UvZK50jh;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id b19si244615pls.5.2019.03.16.23.15.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) client-ip=2607:f8b0:4864:20::c44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UvZK50jh;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc44.google.com with SMTP id x129so10530958ywc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=z4K8jbDii2XPkltq2fDNZbAoujzcfSJ10xLUUNdVBo8=;
        b=UvZK50jhfrvQoE50PK8Nu530fmTLWP/py80DAmGmQhcw7T3ULln8SBmMQuUZuTtJmz
         I+Kpx7oOyqj5TszFVwfSES7vy+1f+Pb/GKAMk4dS4TTFGviEYYXUPtYlU2oMpS2w/ReP
         ycdI3M7BX18pOiNM76eqdAzOo5+DOi0rAI2+XOsJosdXDOfHbzi+z19fywhtF+EXk6eP
         kTF1lVjXWxs2rI/pegLcC5FPdCqsNwXVxlblTwTJYvNm3Gv/jkSQWk3DwRkEahBPjKXz
         wncwSkwtzgDpVukUoP6UxO1fsfYW73VWCCI/ikYiah/dBruOFcEGXbBhIYoLoZOKYsKR
         PY9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=z4K8jbDii2XPkltq2fDNZbAoujzcfSJ10xLUUNdVBo8=;
        b=NaJGctA5qZWrVeR8IiS8xc1JWZ/Z8h7XzUj6jkfisNpW/zJPz99y7D8StGWzt7eGtb
         YLA8mnhUaVkZpOU4VL+gYl5EwwwOd+mKUKohS/ZwPxIRQIXUjST15ueC7KrxHgen/Qrj
         OUwSwowwr3TWOf+6nQugrRgAqTLA6gnx+lywPHz4feIYJzHXLbvAUHEWgmi1XI+N39r7
         6FT6wJxTN9iEcdXcsc+rq7xdhBSdf/KmPjHzFnEobxQYsT4NFrsVGDDYuK5xyuB7vi7X
         lD9YR1CWTCCg78yVpLPWMJaFAUjoNXeP46WkxKubtGghIvWFHBovmiHfA0sfvrykU7Tk
         bB4Q==
X-Gm-Message-State: APjAAAXF4xfusGpF2VoWr8JfNI3UY+9n7mRYitLW4LnTiUI3aa3fvKOd
	KzP95bKy4z+hrge8p6bLH5XLQDur
X-Received: by 2002:a25:2044:: with SMTP id g65mr9520105ybg.406.1552803342267;
        Sat, 16 Mar 2019 23:15:42 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:41 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 09/11] staging: rtl8723bs: hal: Remove comparison to NULL in hal_btcoex.c
Date: Sun, 17 Mar 2019 11:44:59 +0530
Message-Id: <20190317061501.85447-10-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

- Remove comparison to NULL in file hal_btcoex.c. Suggested by
Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line
	- Include modification to comparison to 0

Changes in V3:
	- Break changes into changes per file

Changes in V4:
	- Exclude modification to comparision to 0
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 2b43f6d3c762..ffc345b6e0c9 100644
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
@@ -112,8 +112,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
 /*  */
 static u8 halbtcoutsrc_IsBtCoexistAvailable(PBTC_COEXIST pBtCoexist)
 {
-	if (!pBtCoexist->bBinded ||
-		NULL == pBtCoexist->Adapter){
+	if (!pBtCoexist->bBinded || !pBtCoexist->Adapter){
 		return false;
 	}
 	return true;
@@ -1571,7 +1570,7 @@ void hal_btcoex_SetDBG(struct adapter *padapter, u32 *pDbgModule)
 	u32 i;
 
 
-	if (NULL == pDbgModule)
+	if (!pDbgModule)
 		return;
 
 	for (i = 0; i < BTC_MSG_MAX; i++)
@@ -1585,7 +1584,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
 	u32 leftSize;
 
 
-	if ((NULL == pStrBuf) || (0 == bufSize))
+	if (!pStrBuf || (0 == bufSize))
 		return 0;
 
 	pstr = pStrBuf;
-- 
2.17.1



X-GM-THRID: 6669057124685840384
X-Received: by 2002:aca:d845:: with SMTP id p66mr5992793oig.40.1552760883414;
        Sat, 16 Mar 2019 11:28:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cd4d:: with SMTP id d74ls1387977oig.8.gmail; Sat, 16 Mar
 2019 11:28:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwF4V0tKgzSM+wYkUgx3KL2dYRxLDriOxD7LdEgiwvWKRWhcvr/YneOOvQckjlQ1A79FNsA
X-Received: by 2002:aca:4303:: with SMTP id q3mr5964965oia.37.1552760882658;
        Sat, 16 Mar 2019 11:28:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760882; cv=none;
        d=google.com; s=arc-20160816;
        b=fQM8G8QBey6bX+9Sj3Oks/FvKvn8A6hKNyeM8fH9erMiH5lc99FEcQ+mLQVbjb60Vp
         aRdzOxwD08it5UzJYe8LkiIQOeeP/Pv6AxEYwKvc4WrblbqREGNESQsMSMVHKdLIz+7g
         c9tWks7d5hrIcCQwJgw5gwSxLrQQpcG35Tsa+GQTvkEaDNkgGyF4gGLf0GfZZeNariV+
         lRD9C+opqrGS9DOhy2AHXbxiTnSjaofuQEjQrOYyJ+vD4YqSJkM1zEJIMI55Ywbam+6E
         ViclENafyKpvuK22r+d7Ef1oQ9VdKbiYCDJDD+kwlLmLAVTJb1Ts06i2LlLwSekpV794
         ysEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=kyFYWuSPU4i/4cRxTlloWf163WpCzc8HNdu3rJ24iII=;
        b=E5ZdMWjN+H2hyOLgG44UWmvTZbacRg3jmtcLqy8GYVxCcVPjlctoM0P9y1YwHJyzMI
         9MnCu0Dq+yvw4OzQqSFfZXAgcfytAhs1BGTqzmuT3fXRXWcznGWHdumn2SRhKrwD+QQh
         oDlgE+c4dZ4O6mjtOyzkqTTmTxOchFP4vzKR0uqNJjtIfNbQSKtdeNg1nV5OsgEQg7t8
         /e0N6/uQe8u0iy3lUQOYnWznbX1duKsp5p3j1OFHjLI8k3q7jwdbxMTJVioUnPKs8aJ3
         tfTL/pqPD50DO/8NG4WSzWgbENLlfcqCb+a3TcX3fFDyI0XwyaSn6Oa3mgN1m4trnOSs
         vjIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZN8kT5Bx;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v129si250534oib.0.2019.03.16.11.28.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZN8kT5Bx;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i19so8542657pfd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kyFYWuSPU4i/4cRxTlloWf163WpCzc8HNdu3rJ24iII=;
        b=ZN8kT5BxLGRIQYypRyosSLFEUB9aiaj9Qgku5QQI5iwYL0sC4dnqCHevt5eGQxxFH1
         xM9uIrynHKKnSiDVS0fpM+AIXR4aBaxGcupz+/HrTRgM1xa9SxlkyL7qvIsd29YFP9dB
         NCa2VkiFfCNh+ftH7OBMKKxOgn8DgjQNR9uYcx5HwSh0r9Dl0yFU2lolbX3FyhzRd+hu
         rKwp3MXOnCVoR/lyB21TYwL0SPNKc77NTupQ3JGhh8RLHKgWFHdthDkFdQ8SVFxEUXwy
         Pbgklb062yiE08Aq0XTVInV4YtruHipwrX04Isigb/r3rW8UcAJb19zP3oC/PJ79vTdZ
         czrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kyFYWuSPU4i/4cRxTlloWf163WpCzc8HNdu3rJ24iII=;
        b=MeKnAd580jdbthORa5moluhxjsm8cBW8sJaNQ4wVC9Lv44YoPZg0eWwON9scpSjDt/
         C+6zzjZd38wgze3uca2qEGZ/uPvi/JRKjIQFxKfU7vFDJb0oT0U2FZb+lPj+CQLrsfLM
         wzft141B9L7EJyZpslK5YZZPGJQFv1DgeZ+22q60jjUXSc0H1RoPa5LwnP4ex1f+1712
         2xNRra8YMLFCaxrZcbPj+3QrdiQ77A9Jnbc3KIBTS/asgCuBUfRf7FX6PCh3Pc2phfBT
         ai++71wXTEq06OE9LmWUhrDTByo+XeYwYEn7UJg7XjWqtmkvLC+0JaDnecitjZf9My9w
         wcRQ==
X-Gm-Message-State: APjAAAV28zQIWwVZ/e+/SZZHF0Rzw7omV4xpNJiFo626sL0tcB8g3Pl/
	kzLmxCy/3AoW0jDof7xTU3uDIO58HFw=
X-Received: by 2002:a17:902:e85:: with SMTP id 5mr10989718plx.13.1552760881933;
        Sat, 16 Mar 2019 11:28:01 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:28:01 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 9/9] staging: rtl8723bs: hal: Modify comparisons in hal_btcoex.c
Date: Sat, 16 Mar 2019 23:15:43 +0530
Message-Id: <20190316174543.36254-10-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316174543.36254-1-himadri18.07@gmail.com>
References: <20190316174543.36254-1-himadri18.07@gmail.com>

- Remove comparison to NULL in file hal_btcoex.c. Suggested by
Coccinelle.
- Modify comparison to 0 in order to follow the kernel coding style of
constant appears on the right side.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line
	- Include modification to comparison to 0

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 2b43f6d3c762..6caddd7834a1 100644
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
+	if (!pStrBuf || bufSize == 0)
 		return 0;
 
 	pstr = pStrBuf;
-- 
2.17.1



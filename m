X-GM-THRID: 6332057580597149696
X-Received: by 10.129.40.4 with SMTP id o4mr14416949ywo.18.1474297052142;
        Mon, 19 Sep 2016 07:57:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.195 with SMTP id n64ls3298352ioi.36.gmail; Mon, 19 Sep
 2016 07:57:30 -0700 (PDT)
X-Received: by 10.66.13.10 with SMTP id d10mr4310345pac.116.1474297050736;
        Mon, 19 Sep 2016 07:57:30 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si6586334pfe.0.2016.09.19.07.57.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:57:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so4737179pfj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=9LnDwdz0fWNL86fmwKItyY+fp73aZnXw/TquPnpBH54=;
        b=S4ON2T5m7QG7Ck3oY5wtJEpxlacARU2vQwxxzQj684dqbuDTuAOA9pbvkq2JCysDR4
         qLy1dp6jQZYwrwVGDBFdXcFmvigvi48P/BP/JfdlsFwdB7MOLw7QEoD1pQrB8IYlCA5T
         tjfIOB0aTwLb0EXGFbHVZMwHQcNSqGsJsWVzTedS7NsEuqSvYQa7ZLjgZii4T0LRmwTm
         Wst87dPXgsEV/Cu3jDlwxDoLBRJcsOLSDTnHDafYlEmNTyAPREFL351vcl6z6X+gnql9
         eH3gTG8j0pZAUClU6w6X0BUkz+MfsmMZUaAQ9MlDkMMJ6ywpSdr5OQ1seNcECaHMaGmC
         RUzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9LnDwdz0fWNL86fmwKItyY+fp73aZnXw/TquPnpBH54=;
        b=DRWRKYZL2rmkL/c1ej7PAN5QihkCOZX3LGVJSkeKtQK8o+3yjlbBQEsgbjQHoWbu4u
         XpBBDhCofPHUGlCIx+Plm0mkeNZQDxAjCqRfXqf1lZTLDkYY/SJRuzJqMlgP64qWKqg2
         mwb0lc/4JsWkqacFMKTk99kicL82bAD7YrSAoBdNqIPoA5asoeqwtf5ZCEmGBU06jH2e
         lUeu8+rLTgCxIcjb0XtDOlB1M2Xc0LD9ifSAwGzqXzzJ899iLQCtUxRPCBebWN2d62o4
         qUUBrhEE+irZOiCroSB1Aw0AFvXKeNGJuXgWcA3YQmXswMwL8f+O8V9xyec4b6QbmXc6
         7n5w==
X-Gm-Message-State: AE9vXwMqF63UU9MdVg0M7Al6L7XEOTzGaUtNOtJcMeSUmOR7KVUsBcQY9nF9d2BTOVSRrw==
X-Received: by 10.98.3.67 with SMTP id 64mr47798525pfd.105.1474297050605;
        Mon, 19 Sep 2016 07:57:30 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id bl10sm32355910pab.46.2016.09.19.07.57.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:57:30 -0700 (PDT)
Date: Mon, 19 Sep 2016 20:27:26 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mateusz Kulikowski <mateusz.kulikowski@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/4] staging: rtl8192e: Add space around '+'
Message-ID: <2e70f816c3aa31e1b43d06f06705bcab4424cbc0.1474296026.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474296026.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add space around '+' to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 4d8fb41..24fc615 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -51,7 +51,7 @@ void dot11d_init(struct rtllib_device *ieee)
 	pDot11dInfo->State = DOT11D_STATE_NONE;
 	pDot11dInfo->CountryIeLen = 0;
 	memset(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER+1);
-	memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER+1);
+	memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	RESET_CIE_WATCHDOG(ieee);
 
 }
@@ -105,8 +105,8 @@ void Dot11d_Reset(struct rtllib_device *ieee)
 	struct rt_dot11d_info *pDot11dInfo = GET_DOT11D_INFO(ieee);
 	u32 i;
 
-	memset(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER+1);
-	memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER+1);
+	memset(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
+	memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	for (i = 1; i <= 11; i++)
 		(pDot11dInfo->channel_map)[i] = 1;
 	for (i = 12; i <= 14; i++)
@@ -123,8 +123,8 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
 	u8 i, j, NumTriples, MaxChnlNum;
 	struct chnl_txpow_triple *pTriple;
 
-	memset(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER+1);
-	memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER+1);
+	memset(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
+	memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	MaxChnlNum = 0;
 	NumTriples = (CoutryIeLen - 3) / 3;
 	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
-- 
2.7.4



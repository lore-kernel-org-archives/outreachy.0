X-GM-THRID: 6388519093491728384
X-Received: by 10.107.163.194 with SMTP id m185mr7232406ioe.23.1487610596160;
        Mon, 20 Feb 2017 09:09:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.77 with SMTP id c74ls3033549ioe.29.gmail; Mon, 20 Feb
 2017 09:09:55 -0800 (PST)
X-Received: by 10.99.126.11 with SMTP id z11mr8354953pgc.111.1487610595193;
        Mon, 20 Feb 2017 09:09:55 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id d63si403324pfe.2.2017.02.20.09.09.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 09:09:55 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id a123so10925593pgc.3
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Feb 2017 09:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XWHzFBtL7cP/gY5TBk19aWDyhN1RNKgqMUUxKTzvziI=;
        b=qXM3TWvAphxBHKrnyO6fped7wXKrb7h5F3sZahQp2wuDkxtgCT8QlpgdvBQOOOWk00
         I7uQ8U2HySw619yjvy1hsDYjQ5YQG9AmoXSM3/V8ItlmeqPd4YF5HH8OUz23CEx5LYw0
         Bc3gahEiIkiIpIFFbPmeQ6loCh/ytDJo8ZU9Pr5zWkg3w2MxgOwoDZXPunEJCVGEUT/A
         0afgdPg5Mi7xg9Qmsto/MQaGdVTmofyI5Yq3ToQQ11N6aB4nONpOENI1PAmONq7mao1D
         uShQwUcBRYmRhZUKXyMhrgw4xMaSuluvliQpX2yyNACQUBS6dYupI44X//sfhoZ3vqUs
         hU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XWHzFBtL7cP/gY5TBk19aWDyhN1RNKgqMUUxKTzvziI=;
        b=tLeZxR2+VdFgf7bdw43OcLl8H/hF6mk/mWM8hKRuj7QJvRIQpRU8B37pH2C11/bk0/
         X2O91NaiW355GGa9DEEK7Ze22Nkax19QPFxmG2dGNsTzgZOX89vFKq7hgkJJfmEsy1Vo
         9aH6TiwziDnxb6WAXoLtmiCXMEJBMRz7VSY7Hhfjm1Q9xBsPnuqlvNNqwxI9DLjCXwCb
         PMw0eckMTyWbrRQmKLaiVtSW4yJIMQprTDKLEI6v2x3IYJqMl9coOyEHa8baoEaiNdTq
         IQDW6IOJYo+WVUn/GGkYhfhOxG22xdGA20gtb+DxSSmnrUm6ZNiawZ+aKp1kuR6pnw2y
         SQ/g==
X-Gm-Message-State: AMke39nFat8cmyFXMDrMgX5QtXrDpjgfz2rTtaHxMCzAB3X/zYTfdw83wFID4Y76CU8YyA==
X-Received: by 10.98.44.10 with SMTP id s10mr27508111pfs.161.1487610594901;
        Mon, 20 Feb 2017 09:09:54 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s21sm36369760pgg.65.2017.02.20.09.09.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Feb 2017 09:09:53 -0800 (PST)
Date: Mon, 20 Feb 2017 22:41:47 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/6] staging: rtl8192e: Removed unnecessary parentheses
Message-ID: <20170220171147.GA15849@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Extra parentheses were causing checkpatch issues
and were removed.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v2:
   -Removed parentheses around argument of cast
   -Removed cast
 
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index cded0f4..0a9234e 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -297,7 +297,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 		u8	EWC11NHTCap[] = {0x00, 0x90, 0x4c, 0x33};
 
 		memcpy(posHTCap, EWC11NHTCap, sizeof(EWC11NHTCap));
-		pCapELE = (struct ht_capab_ele *)&(posHTCap[4]);
+		pCapELE = (struct ht_capab_ele *)&posHTCap[4];
 		*len = 30 + 2;
 	} else {
 		pCapELE = (struct ht_capab_ele *)posHTCap;
@@ -663,13 +663,13 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 	pHTInfo->CurrentMPDUDensity = pHTInfo->MPDU_Density;
 	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
 
-	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
+	memset(&pHTInfo->SelfHTCap, 0,
 		sizeof(pHTInfo->SelfHTCap));
-	memset((void *)(&(pHTInfo->SelfHTInfo)), 0,
+	memset(&pHTInfo->SelfHTInfo, 0,
 		sizeof(pHTInfo->SelfHTInfo));
-	memset((void *)(&(pHTInfo->PeerHTCapBuf)), 0,
+	memset(&pHTInfo->PeerHTCapBuf, 0,
 		sizeof(pHTInfo->PeerHTCapBuf));
-	memset((void *)(&(pHTInfo->PeerHTInfoBuf)), 0,
+	memset(&pHTInfo->PeerHTInfoBuf, 0,
 		sizeof(pHTInfo->PeerHTInfoBuf));
 
 	pHTInfo->bSwBwInProgress = false;
@@ -685,7 +685,7 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 	pHTInfo->IOTRaFunc = 0;
 
 	{
-		u8 *RegHTSuppRateSets = &(ieee->RegHTSuppRateSet[0]);
+		u8 *RegHTSuppRateSets = &ieee->RegHTSuppRateSet[0];
 
 		RegHTSuppRateSets[0] = 0xFF;
 		RegHTSuppRateSets[1] = 0xFF;
-- 
2.7.4



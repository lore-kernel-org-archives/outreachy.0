X-GM-THRID: 6673867872334249984
X-Received: by 2002:a63:d249:: with SMTP id t9mr591680pgi.17.1553950889364;
        Sat, 30 Mar 2019 06:01:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6a86:: with SMTP id f128ls1965990pgc.7.gmail; Sat, 30
 Mar 2019 06:01:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzG81V74MM2VYRtKjnA3t5VbS3vhZAQiIUR3UgrC41C/g6mBHJJdilAXiwPhowXVmpzq9Dt
X-Received: by 2002:a63:7408:: with SMTP id p8mr591949pgc.56.1553950888460;
        Sat, 30 Mar 2019 06:01:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553950888; cv=none;
        d=google.com; s=arc-20160816;
        b=oiweuEe3cNz3WkCTo51W5qL30MeErbRBzeWjZC4gLTSYBSaAz2BtwUv31Y5E7eTOI9
         w3vEKTfMXG6iN64p8UcWyKRrGqSBZerOOyusO57A92wwyuGkGsN5r7+4IBWTsHRqJpT6
         oD95je8T5niccpFpPgxqLs2rcjlBU6WAm1jV7boTLJH3p43ZjQQQjRyFMLPo64Tj8+ug
         haaYf9wp7EJ6frdOwaRaMjKs/D77Zco06/vHhFIlX8oSxHS0raHAMOj9TVjbWUHu+Vva
         WBymIg3sQZdKGdcWfF2YyGxVOFW6zmKJjKB//4ZUSfxAyW2TdcSio76hVxt6Yqs7JivY
         PFcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=w+H9fhhbmlK5tvRxHmOl2zR7jrxxA16HgkLStM27jsw=;
        b=ou9HAKsZzxXWbzLTghGn+gmjlnFdvbid5y7DHDuqtTNWNFalOUUQFw8yt7xGRfg9xn
         pEQdkUlETuWEZ3e0nriRz3FhH/x3aEyNWJXn3Tgr+M/nwspJ7bor+JkycDU3L40F7hPw
         aQua+azzSk5Ng62rlLD/Vvyv3ArK0pymnbpjmrDkcCSz6NdQjzP0n5Zxcx8ygsR7pkyc
         +RFCpwibrJU7Mv0TlrYiXYjQJ2+00t4oqh1KnBgMfYOrgGRrGXDlNdKrU/rCvXQ8G34F
         td0GDchf66iggCSoaf+rw6ai6ov6s6Pv88G7C6l6vsHFaHp3z0B9zvcfpNVz0ai5cqG9
         M+8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PyriqIIe;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c14si245347pfb.2.2019.03.30.06.01.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 06:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PyriqIIe;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id z5so1308003pfn.3
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 06:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=w+H9fhhbmlK5tvRxHmOl2zR7jrxxA16HgkLStM27jsw=;
        b=PyriqIIe75P3Dft4viJwGMzeY2aEj9QAJ4WZ+lIhl5uw042tqdAxcI8KjIu0J5Ga9E
         TheYkmh9uBuW28V5Z4CrPHIYxBQjAME/IVAkNTk/Py3KPdQNEOEnOIvK0LR/K6M7wwE5
         mlW3sk8G+F1//a0ugQwhfzDvKiPaegrClK2AZiNOF5Z7NFpc0qrrYq4tVBSeddL7lJm5
         NZPSDAo4B3ZwViwPhiD0WTsPPS4QfrRLbAYcsBnDQ8tX6OJaCLQR5D3uXbK1OAIx3Utx
         Yr8aXkMMEl0MQKq29T5sb9ESBVB7SLUvnOqPZdlfKBI5wDyarv81vXJ3R9GqcTyD3gZF
         IHEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=w+H9fhhbmlK5tvRxHmOl2zR7jrxxA16HgkLStM27jsw=;
        b=BxFwAsMXVN0SMkYDpTmFeDleyKniSSC+/AW453emuBp8sGJvr0reptVskCg0XHuiD1
         z/G8B/FbhpGEA7a70cpJj6Pc/nE6cqWt9tKU6/h/ZNeHe6iFrFM1rzKYiBZvX8R3Ws3C
         L50LiJpupI1fTZGaIXPOh5paMJivbi50z20bizQGjKLf+9jJt+8Sw4Q4jsv9yUepFgi2
         0RtcH3Z+J/nFLtzyXH48hePiy509sF1NUsg7jqyT+fBiIQ5WUuw/7kUZTrkFtrjIiUob
         2vZR1Yuig4zaqX9ztIOiNKddyYjOQwKtRvUjXDjTocbdvOvElgau2sEPuYhR8ER0GOCl
         Jmvw==
X-Gm-Message-State: APjAAAUf+n2pkoqUYuNp+iNmEniZYbQG0fJzOtXgpOKW6mM3lGlcbXWb
	7ZiSTFT75t6s5YTNbNJtmqshx64s
X-Received: by 2002:a62:4595:: with SMTP id n21mr7606382pfi.79.1553950887919;
        Sat, 30 Mar 2019 06:01:27 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id l88sm7454420pfb.104.2019.03.30.06.01.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 06:01:27 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: rtl8723bs: Compress two lines into one line
Date: Sat, 30 Mar 2019 18:31:11 +0530
Message-Id: <1553950871-4099-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.

Return value directly without saving it in a variable and remove that
variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 0fd7a9a..4f2ad54 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -58,7 +58,7 @@ static	u32 phy_CalculateBitShift(u32 BitMask)
 */
 u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 {
-	u32 ReturnValue = 0, OriginalValue, BitShift;
+	u32 OriginalValue, BitShift;
 
 #if (DISABLE_BB_RF == 1)
 	return 0;
@@ -68,9 +68,8 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 
 	OriginalValue = rtw_read32(Adapter, RegAddr);
 	BitShift = phy_CalculateBitShift(BitMask);
-	ReturnValue = (OriginalValue & BitMask) >> BitShift;
 
-	return ReturnValue;
+	return (OriginalValue & BitMask) >> BitShift;
 
 }
 
@@ -284,18 +283,16 @@ u32 PHY_QueryRFReg_8723B(
 	u32 BitMask
 )
 {
-	u32 Original_Value, Readback_Value, BitShift;
+	u32 Original_Value, BitShift;
 
 #if (DISABLE_BB_RF == 1)
 	return 0;
 #endif
 
 	Original_Value = phy_RFSerialRead_8723B(Adapter, eRFPath, RegAddr);
-
 	BitShift =  phy_CalculateBitShift(BitMask);
-	Readback_Value = (Original_Value & BitMask) >> BitShift;
 
-	return Readback_Value;
+	return (Original_Value & BitMask) >> BitShift;
 }
 
 /**
-- 
2.7.4



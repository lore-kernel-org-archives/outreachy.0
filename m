X-GM-THRID: 6388519093491728384
X-Received: by 10.99.163.75 with SMTP id v11mr3143550pgn.147.1487443012153;
        Sat, 18 Feb 2017 10:36:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.203 with SMTP id s11ls5546726otd.44.gmail; Sat, 18 Feb
 2017 10:36:51 -0800 (PST)
X-Received: by 10.237.61.114 with SMTP id h47mr4192523qtf.66.1487443011666;
        Sat, 18 Feb 2017 10:36:51 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si1504316pfd.3.2017.02.18.10.36.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 10:36:51 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so7803699pgj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 10:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hnqqwZqDpAYYrxraULpTAEFxIHMwMI40EmEdp5ALUiY=;
        b=uHEpOQd0pQ2E3ifVh2luM/72hqIHyn4sN/XIHuDDtDYEbU6vokDobqWZkAriRhwJBQ
         lwCoqmBaefzpPkkAS8iJSfAMBBv1/oPf7XY5akUaCRC8MO/uAWHnzsjjYoa6nE9LpqC+
         WisozOsdAgdcjAO3Ph0Nsg8Glr+kz7+43nLk3mIZ2+4rky1wLYQpv2kkqyKaSr/JLs42
         UF9+OCHtni8KtbY8NFtcfZLg1nccKx0l43Ivfivbb8QLCxIqbK+1IyssrCn6XUSSeZgq
         AWA5VamOgwVXNriy0cliH9t50mKNWya/2lGDsiYNfwVjtMe2dbPCo0ucceq1YL3Y8YeV
         lBKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hnqqwZqDpAYYrxraULpTAEFxIHMwMI40EmEdp5ALUiY=;
        b=MHlOBXrhKIKFo1aq8dgdRe5KVvEohYjOFAx9epaHol1C2hyWLHs5Gg9XzhX4DXHLVH
         roZ0+ZzADcV1HEk7fhKZ88SPsq492krMSVuCc27F/XPzCmvApHn5RQzf3Qo2prSNlg+R
         tQJH04Nnf13BFOFiRNIf+XbhQHatRz6TK0QmJuOZuK8c4/3UbHvTLnxPtAMGFpnQmVZm
         ExE2+aK9Usva4Pa9kvI3mtXOgKGENDtzTii5ALLZRHr9LxoeXZoOu+HF02aOx05JaeZt
         1UIjcbGUvX7sNW+Vo2BBJHgIlUTed5wohw+3j/ZIFehJeSjK2RcbmmiZHwFEgPCP3cfT
         EJjA==
X-Gm-Message-State: AMke39mDdlxGZjUK/OBxVaw2zkF9Pb8CVzijAx44X3mcfVBcI7qvSsc2GIgemka78CgV5w==
X-Received: by 10.84.216.93 with SMTP id f29mr20050332plj.10.1487443011394;
        Sat, 18 Feb 2017 10:36:51 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o18sm15874851pgn.36.2017.02.18.10.36.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 10:36:49 -0800 (PST)
Date: Sun, 19 Feb 2017 00:06:48 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: rtl8192e: Removed unnecessary parentheses
Message-ID: <20170218183648.GA2680@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Extra parentheses were causing checkpatch issues
and were removed.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index cded0f4..1391c91 100644
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
+	memset((void *)(&pHTInfo->SelfHTCap), 0,
 		sizeof(pHTInfo->SelfHTCap));
-	memset((void *)(&(pHTInfo->SelfHTInfo)), 0,
+	memset((void *)(&pHTInfo->SelfHTInfo), 0,
 		sizeof(pHTInfo->SelfHTInfo));
-	memset((void *)(&(pHTInfo->PeerHTCapBuf)), 0,
+	memset((void *)(&pHTInfo->PeerHTCapBuf), 0,
 		sizeof(pHTInfo->PeerHTCapBuf));
-	memset((void *)(&(pHTInfo->PeerHTInfoBuf)), 0,
+	memset((void *)(&pHTInfo->PeerHTInfoBuf), 0,
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



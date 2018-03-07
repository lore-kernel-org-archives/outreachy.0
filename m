X-GM-THRID: 6530108592701308928
X-Received: by 10.157.1.9 with SMTP id 9mr3395960otu.33.1520409386069;
        Tue, 06 Mar 2018 23:56:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.97.211 with SMTP id h19ls650996otk.19.gmail; Tue, 06 Mar
 2018 23:56:25 -0800 (PST)
X-Google-Smtp-Source: AG47ELvcXVk5uVWBWMhI5q5pG9LwedESBQLOZdHe+ZEcWQg7j/bvpB16vVtAtZQV2gIAV2yiaxqZ
X-Received: by 10.157.1.9 with SMTP id 9mr3395944otu.33.1520409385158;
        Tue, 06 Mar 2018 23:56:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520409385; cv=none;
        d=google.com; s=arc-20160816;
        b=gVa7+VWpfZuoO88Eb07S1bxMiGK9m8RTyB/11uhBszouuWSknd84xKcXppZSCj7i4P
         TH70LJTMOXyPq3mhjQy6c31Q+HfJCGeS+NPC02RSlOI4/qPFm2eeD0Ejck/V1JQlJ7Fw
         5vfds/3Yo2K2o5QaA3cSu12bUvOJPhqwTZEXznoniKkN3teNSE8ziiLPrcm/93aorNCt
         cUdN+2TgTGvnipYst6lLJSNhVJXVIBKOro50yhizgjI9eCBKSOSftctjtCQdw4HDVhyP
         JNhhmANMiBUFIxh51ETHupUY3G4Gn3Fmgo5rFmFesfuLjjIu6CH7kVOYi9pmeKDwfzTJ
         oU8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=K3QfdClsdJ1unCMmZhfeuD7kTZjrME6AnoO0aJBAUKo=;
        b=QK+LBUv2fEABB3mOngfXYel5WafqBQm41+Puvf0Y/qz4UOboLvuLewKIhmGBZ/6zOV
         qzYNWQCup3yDFHY5nBAW4xhtNSDwqTX3HvguJp0LLhGHuFF3TqsEJTE5SXYCKEule6Zj
         itKEQvUn/TpBhfdBsB2Hp2FIHGcJx0jozLJZ1DUhtjMmdzqcEtjhIktZ3fX8MeyFLE9i
         EDgyv9a6wx7FJQW0gmmvruQBWFsX9r6tak2Z3zONJ8WbmsKqQvjxyQhIwQABhMxBeoe8
         BcJneDz96ofuRx9/wxwrNwSuJfypP+M8OWEVbcJL59Smc7/kJtISvj4mmko0HDKV9No0
         E/oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZdHlaIrN;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id d131si1303005oib.3.2018.03.06.23.56.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 23:56:25 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZdHlaIrN;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id f80so634797pfa.8
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Mar 2018 23:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=K3QfdClsdJ1unCMmZhfeuD7kTZjrME6AnoO0aJBAUKo=;
        b=ZdHlaIrNV+YZxk9+P4Rn24PmGkVMcn6O0PRoNd9b3B1XsjYlvT4LC+NgJFCcEVkKCJ
         odPT5mebxiog/O00feJyrMcOsB05ckrNvweR2BiEsX18UJKQ4qaQ9kKy0aV+zWVYyKYa
         rek+4YsfVceUtcn4/P5U4pRyIOWaa9DWtXy2gzdObxmjis9/vF3hR6j0V6G8Bwh576xx
         sybiQ4Np49ChUsSssSHGVB18NBrDlWfJl2NeBZQVTKgX8wow7cbH307ndIBCga94ZUSr
         AHCRHLBaUGniplXgc0lSkbthY4ikl2kfuou4Vw4+vVpbNJ8CUTo72z5P+CCjIkAdxNC4
         G3Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=K3QfdClsdJ1unCMmZhfeuD7kTZjrME6AnoO0aJBAUKo=;
        b=Ykmo+s2+hIBNprE1z5XViBJLuWCH4IRiDu7sxOO8LgEQH7V9/ptMSCosv76vtT1fIH
         toGFmG95r4n3gD4LG9YoC6nupYz5GtxPOImfgWCKfoPI0FX8hZ6adxv65uKQgGBZw8Fg
         uXwa/ESstNeKVUX0Kgv0SKSrC6MVHChBwtcQQsUaCTrcz/6riOEfsNjYUsFDdpJ/0GYa
         pkK9ct5FJHZLMf0e924rOBGxaTQ9bDvtsJDLBgmfrxBdd+Mmxiy2OQIsxkJ+mPSEOf1X
         phwx+WDb8TDkcbIRULYhe0uq5t+Ho28TX8pCNrvyMSGki/6eYcHMJvb2n0Eu6pSkaE+g
         YTxw==
X-Gm-Message-State: APf1xPBzcJclIKAvkLUQqGcgXLZwYxsUmlKpfv9IWrHIePDZUg/JDGq1
	2O33mSpESUO4pek9uomoXAw=
X-Received: by 10.101.90.75 with SMTP id z11mr17135177pgs.29.1520409384787;
        Tue, 06 Mar 2018 23:56:24 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id w23sm39829664pfk.10.2018.03.06.23.56.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Mar 2018 23:56:24 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: rtl8188eu: fix typo in comment
Date: Tue,  6 Mar 2018 23:55:50 -0800
Message-Id: <1520409350-61347-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix typo in the words 'transmitted' and 'failure' in the comment. Issue
found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index bf0ccd3..8d49e30 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -897,7 +897,7 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 		 * Commented by Albert 2012/07/21
 		 * When doing the WPS, the wps_ie_len won't equal to 0
 		 * And the Wi-Fi driver shouldn't allow the data
-		 * packet to be tramsmitted.
+		 * packet to be transmitted.
 		 */
 		if (padapter->securitypriv.wps_ie_len != 0) {
 			psta->ieee8021x_blocked = true;
@@ -1371,7 +1371,7 @@ void _rtw_join_timeout_handler (struct timer_list *t)
 }
 
 /*
- * rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
+ * rtw_scan_timeout_handler - Timeout/Failure handler for CMD SiteSurvey
  * @adapter: pointer to struct adapter structure
  */
 void rtw_scan_timeout_handler (struct timer_list *t)
-- 
2.7.4



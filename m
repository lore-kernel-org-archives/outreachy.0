X-GM-THRID: 6329968789142110208
X-Received: by 10.129.156.65 with SMTP id t62mr2872541ywg.16.1473810720482;
        Tue, 13 Sep 2016 16:52:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.112 with SMTP id 103ls2376318oti.11.gmail; Tue, 13 Sep
 2016 16:52:00 -0700 (PDT)
X-Received: by 10.200.56.115 with SMTP id r48mr2889630qtb.28.1473810720158;
        Tue, 13 Sep 2016 16:52:00 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z4si278997pam.0.2016.09.13.16.52.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 16:52:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id z84so217023pfi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 16:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=l4vmCsYw/YbdBroqiyG0QdqrSkc37oUDCgqW4fu+9MM=;
        b=bItwVVSJ9J3NRlpCNMwrwsug0olGXOG0lO7QOQ779nHGsiuLduvAUeOsppzK5yvmDG
         P+kD8TJJe+AnLGjimOU4NzO8Z+ZX84ya7vToUWuHQa3DIsGi9KUGzKarzaUc3xi0YrCF
         RuL6BeN13UsVc3rEreN4vyrK3WDKic/avJEBNF4TS2RWdunb/DHtxndHbzC49GeYg+Bi
         qLZY+pLXlr26tao/mNSYOjRN2zXnVqNoO/luMfo/sfcSLscxE9wEr6ITNSZKKwyV246h
         GbuPJYcI3x9/g/xYm266U/iz3oHRkOwovHs4vmt4Zdc7ZFYe4kkcj1j8yMfnvT24akT6
         w80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=l4vmCsYw/YbdBroqiyG0QdqrSkc37oUDCgqW4fu+9MM=;
        b=OvVqFxtHJ6f9I9e+3dCGjJYomsm4CWKxYI+lsOwjbSvfIKB+K9UAzIolmvcsXGEBKj
         XckWmlNaYe76TjRS2kR0M6htqMgnzM1ZDfN71+ABhgAbep/jmATb9xkbxKRmxSFX5z3i
         uRl95P8jZFPOxIQR8Ucmc16t/LpND7WMWhK/Ub4TnkZj5QwEpGoeaP9B6cTwks+y4NdU
         HKIk1HPfjZ9op6eQhtnpzQIEhkA+kl0x/CZI+1BGmc+kj+3r+MrCGnUcTw5DmIfyVWkA
         epSQbbn8cbrwV3JlnCq7IIA2MvNuIIIgPrklgI12ldRu8pNW4xAfVJ/3RUglp2UMCbHI
         uCsw==
X-Gm-Message-State: AE9vXwOqJatDF+FV0WqMefVNy07d9KrAbSfb+X5VbceyMm9NGjIrhBm5AJsPqom9Bog00A==
X-Received: by 10.98.82.194 with SMTP id g185mr5911637pfb.157.1473810719941;
        Tue, 13 Sep 2016 16:51:59 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d5sm33439090pfa.44.2016.09.13.16.51.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 16:51:59 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 6/6] staging: xgifb: fix alignment for if arguments
Date: Wed, 14 Sep 2016 05:21:05 +0530
Message-Id: <97cf53983f2ba686aaef71701f345b06b31be508.1473809551.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>

Fixing alignment of arguments inside if clause for better readability.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 8488612..068f422 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1740,7 +1740,7 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
 				(unsigned short) (0x10 * i));
 		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
-				!(pVBInfo->VBInfo & SetInSlaveMode)) {
+			!(pVBInfo->VBInfo & SetInSlaveMode)) {
 			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
 			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
 		} else {
@@ -4132,8 +4132,7 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 					| TVSetHiVision))) {
 				temp |= 0x0001;
 				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
-						!(pVBInfo->TVInfo
-								& TVSimuMode))
+					!(pVBInfo->TVInfo & TVSimuMode))
 					temp &= (~0x0001);
 			}
 		}
-- 
2.9.2



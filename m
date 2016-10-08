X-GM-THRID: 6339158437300011008
X-Received: by 10.28.70.129 with SMTP id t123mr187566wma.12.1475950339491;
        Sat, 08 Oct 2016 11:12:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.206 with SMTP id 197ls168394ljf.35.gmail; Sat, 08 Oct
 2016 11:12:18 -0700 (PDT)
X-Received: by 10.25.32.195 with SMTP id g186mr60333lfg.23.1475950338681;
        Sat, 08 Oct 2016 11:12:18 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id u64si571776wmf.0.2016.10.08.11.12.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:12:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b201so7730261wmb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=OdPpSZNVhWsSeDqGP1RS8e+qlMwp1hqJetn48FFHZMQ=;
        b=JTQb5NaQiSXb31t6tcfRlDPZA83c1p0LbFd/dWTYAf+1BNeQDWA+3DKiut4HE9afoy
         MJKUsprOOY3t+YspnTOqNoyUR3Ey1d+W5HgoaS/xuWcuWkiad+bbCYQ0280khzow/YR1
         uK2eadXHhvGP8KaWNe+wIv2V1Y4d08hagcGOoGyJSPj0zl7orH7cWcKCi7oSHJYLcvM0
         oWiLShdMRo5olddR2RfGcgjxYFdMpXF6j7j6l/KbKC18WteovXFeeaBDZccBr+ak6W44
         vwsojPArEQsUmBLaJJHQygOn0oHoU6KzWgPFKi8k4tdPKODcU2W0bLPdkxLPMonV+ywH
         033g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OdPpSZNVhWsSeDqGP1RS8e+qlMwp1hqJetn48FFHZMQ=;
        b=QZkDVoO6uJjDryhkTax+v/poupPP8ZzoPJq+gAT2XJD1FtIaU2qb8G89wF7BImw0B3
         QPh3swTJ/yF5soctaQ/B00ivx/Um82ng/f36tn5cHgoLoK4clnD/MVufnbE8Iozygexz
         JDUeTzlqgRTeorYM7cK06UbdtzTTgQvqSB57Kz/4B1m0B/waTaRnx/K4LfUPlxENygk1
         hF+TuV8KqvDLnlGBnXPtx2AJGn4rHE7FA30Vmi10D4jooev5RSs4bc9OD4Klnu77KbIy
         u2wPC3t6zpUqXzULAyCJoclR7V+nIC+leqf8CoBC5zCVc4bYq9W0EszQ7CcLZPDmo8pQ
         r6qg==
X-Gm-Message-State: AA6/9RnWhtx09d9QMtE2bJawrruV2kZ85fjzSGE3Jq20HzvecUACn90+BnW+o0XwuJC8RQ==
X-Received: by 10.28.20.82 with SMTP id 79mr3409613wmu.36.1475950338297;
        Sat, 08 Oct 2016 11:12:18 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.15.158.39])
        by smtp.gmail.com with ESMTPSA id w3sm9360992wmd.13.2016.10.08.11.12.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 11:12:17 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: vt6655: Add space around '%'
Date: Sat,  8 Oct 2016 21:12:07 +0300
Message-Id: <1475950327-21998-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '%'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '%' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index dbcea44..944ebcf 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -915,7 +915,7 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
 	u64 qwTSFOffset = 0;
 	unsigned short wRxBcnTSFOffst;
 
-	wRxBcnTSFOffst = cwRXBCNTSFOff[byRxRate%MAX_RATE];
+	wRxBcnTSFOffst = cwRXBCNTSFOff[byRxRate % MAX_RATE];
 
 	qwTSF2 += (u64)wRxBcnTSFOffst;
 
-- 
1.9.1



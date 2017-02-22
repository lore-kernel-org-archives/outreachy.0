X-GM-THRID: 6389638055287848960
X-Received: by 10.176.85.94 with SMTP id u30mr8621994uaa.1.1487775864578;
        Wed, 22 Feb 2017 07:04:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls1219255otg.39.gmail; Wed, 22 Feb
 2017 07:04:24 -0800 (PST)
X-Received: by 10.13.210.69 with SMTP id u66mr11491939ywd.127.1487775864004;
        Wed, 22 Feb 2017 07:04:24 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s64si309603pfk.0.2017.02.22.07.04.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 07:04:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 5so770020pgj.0
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 07:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DZY6aQ7sxafPkUSAQNJmTFsbsWKqljwjrDXNCTcFfGI=;
        b=l86QV5HXr6b4JzqWMMZw7meNpkOuh24BA6iVj3mlQrJUZTMZ6Vp5F7NEoaFXeWALiY
         ASUi4C55RkMGQkqjUqMCdHP1Y/tIZ0mZFr134eHZRQZWx9JrZ0FNvIQEh6dpsaHg1iCZ
         7jhh7Y81Uyn3zz2WnbnLVC3y7WL2ORJFyykoSupFhJccFaq4a4cStAPCmuL7x4ZAOl05
         ufBYS+Mi3gXenknCZjzGQmWIccGRFNYHhRHfroDYcB4P+7ieSuSQAqJ1L2Qh0Mzr4gEy
         jZL50JQuiaEOv9s/pkehIinyT1uccHY39vveUrjw6vjw+xrIrTOkyP5gl9QB76PGbKd6
         +nDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DZY6aQ7sxafPkUSAQNJmTFsbsWKqljwjrDXNCTcFfGI=;
        b=CDRr5u4fAhw+q6lcDvBnbNXmaaqJBXAK1HvjZ0K3VniM/rGyYsLGZocar1akDJTlqv
         yEsxhXdzgXjq3jKgarWO4PGSP0t4o9umT0XIWKzyVxM6B256h3BCsiDqdBUU1CPQvybk
         DCrFnLuwV4qIBFnl2qqgt4v7kU8hPZ7hRbsXA0BCS6aKnNvrx+XX2XGGRaUpTkWLRGKW
         b8SK5fwWIiRk6EppqpUCmYpWUQ9/AwggT7w9RZ2kYR4PxHVNYBlxYErtIM9tibT8HhWs
         tHYLa959Jbpe8Oa3HXEMKiNlyfTT/jor9AzUlBvGQlEXWzZI/KFf/+uc3Nc9h5H81jMu
         4Weg==
X-Gm-Message-State: AMke39kXf3eeClL18SP2nBrjPyDUffH7xx78NA1DXJVpTHF56iBwPQRCA4+oHU8C+E+XDQ==
X-Received: by 10.99.39.195 with SMTP id n186mr29344781pgn.178.1487775863736;
        Wed, 22 Feb 2017 07:04:23 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id 64sm4308094pfq.112.2017.02.22.07.04.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 07:04:23 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: rtl8192e: Remove useless parentheses
Date: Wed, 22 Feb 2017 20:32:12 +0530
Message-Id: <1487775732-5472-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Parentheses are not needed on the right side of assignment.

Additionally added space around '+'and '*' to remove
checkpatch issue, space required around '+' and '*'.

Parentheses Removed using the coccinelle script:
@@
binary operator bop = {+,-,>>,<<};
expression e, e1, e2;
@@

e =
-(
        e1 bop e2
-)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
	- Add spaces around '*' as well.
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index 9bc2848..b61e90b 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -886,7 +886,7 @@ static void _rtl92e_dm_tx_power_tracking_cb_thermal(struct net_device *dev)
 		if (tmpCCK40Mindex >= CCK_Table_length)
 			tmpCCK40Mindex = CCK_Table_length-1;
 	} else {
-		tmpval = ((u8)tmpRegA - priv->ThermalMeter[0]);
+		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
 		if (tmpval >= 6)
 			tmpOFDMindex = tmpCCK20Mindex = 0;
 		else
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index cded0f4..4ae1d38 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -489,7 +489,7 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
 				if ((bitMap%2) != 0) {
 					if (HTMcsToDataRate(ieee, (8*i+j)) >
 					    HTMcsToDataRate(ieee, mcsRate))
-						mcsRate = (8*i+j);
+						mcsRate = 8 * i + j;
 				}
 				bitMap >>= 1;
 			}
-- 
2.7.4



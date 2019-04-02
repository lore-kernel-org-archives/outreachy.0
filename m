X-GM-THRID: 6675310795442618368
X-Received: by 2002:a81:6184:: with SMTP id v126mr7824085ywb.17.1554216909741;
        Tue, 02 Apr 2019 07:55:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:887:: with SMTP id e7ls1006194ybq.2.gmail; Tue, 02 Apr
 2019 07:55:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyeqmiEgvZgGGyokHKlV3+ZbwrZX/1PnK4VLQPEjKDDaBfQABfBeyXZ+v5dSDKsD4+Vuqfx
X-Received: by 2002:a25:a2c1:: with SMTP id c1mr6774493ybn.85.1554216908972;
        Tue, 02 Apr 2019 07:55:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554216908; cv=none;
        d=google.com; s=arc-20160816;
        b=TqnVZM8cWyZNZk1/LNa0mJIDltcER7UocCG83yWSElp9wAzxpZa1XTNXHrWhf4QbEY
         QwB2jnBgOW47/z+AcwevOfEtEzdaPAKTT5kwkG2muYkHAABM6KBPDv15Nbte4YKSA0GA
         ckJ+AQ9qnZjec+0Z9SMFYrFkf4toRoihU8QQnbtX6bRbdfrb2hHo6S0ITFax8mFw6Zjw
         7t83nI8C0n1xukTSDAskxJMutbBtvFqb8YzSeQZcgjiUos4p197LiXsDvcg7+y8jDHAe
         hOKOaYJ2CEuxJV+F7Q4xfcldO3IyOKA3tr271DYII8GcTlBg/R0IH7Vrd5F65YqdKcDO
         woeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KIzHuoQ+kaDnhJkbHMaJLnOrbhn/7V9VjFS+TSxesOw=;
        b=Z8F/ivHjxmlPvtGOlPcJHU2QNndfxUgOnuUQNfDqm1ggtrSP5clPKJgCRPqgZIuS/C
         aqmy5euWgnBq4v3bix0TrM3HJFNvIEVIicvyEPqu86emDxb7QXFJYQBhrrptCO4hR+wu
         st6qb6Q47OsvBJum+5cucBmMVIWcsFB4rYhG3WP+/nkeytbVYM0yH3ooXdq/rmpJgU9A
         wT/Ggjs1V3ZE+p9gmpQb6r2+e1xK5/xVD4sVc0q6rMi2CPqpSQ2veYai0Or5B0N6jvSS
         dwTS7Ex8maRD6YH8UCpfuAXLB14L7Wj9lFLxnyd/Ii3LFVzSVKS3NiCNYkwoJlzb6HpO
         aTvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MT8QySMr;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 127si424617ybe.2.2019.04.02.07.55.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:55:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MT8QySMr;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id z5so5491401pfn.3
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KIzHuoQ+kaDnhJkbHMaJLnOrbhn/7V9VjFS+TSxesOw=;
        b=MT8QySMr0JNYdBiXuJnZvoh0jSdLF/pIsXV6+qg6xVlM3j/EoOhwloiOQQa0/bdTl9
         GJJOaeFAlfWaH5uRoCQ+jEWZ0xFC3eaQpEGYDJlSQjuRXEPnuRk7N0lksiliKaX2CPzb
         XwbiETGTY/scD6DGuQkux5v5jKaz1jIhOAx1g3usK+RudCLq/iy4BTSPjHM14riCC5zT
         WpSzp4dVKB15+qszzGS3uOh/bIEpGd6GQPcs3fLYisn4LUDvPuoyazNOUTqtvp+G9UDg
         lIJS0q/v8397hbADqKSAVOBckOKV7+c4ZzdYW0T4S9wLG1rK3m0LJL6pZxUVOX8ctMrF
         V4SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KIzHuoQ+kaDnhJkbHMaJLnOrbhn/7V9VjFS+TSxesOw=;
        b=nkraisST4qVOmKfq6SDhPI/XlJI93UQ42QaH7NPqDdGA/DRabswigoS/SXM3u56FSi
         vY2dnD4CtM2ZZJDGzpTifjGEs/PSlh55mBQqBfRPE3ByrZKaUaB4xf5EnQI/W8zvAflB
         Kh+GtmwqFRjaK4hvu/DxgQ2VS5dS8SM+sMKrU1rmnfpzG4wL+XrezPLGTpCntZGICn0a
         zRWH0dzIbk1zjMhF/9sc4L9rF6Vp5C+NaSirv/JcShran/HpZHL7sWo8G4aNpuZgehnM
         ynnbv8LtWXbBAIyWNZJIjfC8wGcTkBhp7sGnB5zJcv/9/8471EN8BTjVB+akYb0HhCHb
         dD0Q==
X-Gm-Message-State: APjAAAUq+tpBLiet7RMcu61PelnSfbnUpDv0QrnFV36FjdouLQkTcIbP
	OOJVjvo95GAkUyh8bgnngmdhvw4b
X-Received: by 2002:a63:751d:: with SMTP id q29mr31272188pgc.215.1554216907771;
        Tue, 02 Apr 2019 07:55:07 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id g5sm21680542pfo.53.2019.04.02.07.55.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 07:55:07 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: emxx_udc: emxx_udc.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 20:24:54 +0530
Message-Id: <1554216894-10694-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 743a519..297c9ba 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -1495,10 +1495,10 @@ static int std_req_get_status(struct nbu2ss_udc *udc)
 	case USB_RECIP_DEVICE:
 		if (udc->ctrl.wIndex == 0x0000) {
 			if (udc->gadget.is_selfpowered)
-				status_data |= (1 << USB_DEVICE_SELF_POWERED);
+				status_data |= BIT(USB_DEVICE_SELF_POWERED);
 
 			if (udc->remote_wakeup)
-				status_data |= (1 << USB_DEVICE_REMOTE_WAKEUP);
+				status_data |= BIT(USB_DEVICE_REMOTE_WAKEUP);
 
 			result = 0;
 		}
@@ -1510,7 +1510,7 @@ static int std_req_get_status(struct nbu2ss_udc *udc)
 			result = _nbu2ss_get_ep_stall(udc, ep_adrs);
 
 			if (result > 0)
-				status_data |= (1 << USB_ENDPOINT_HALT);
+				status_data |= BIT(USB_ENDPOINT_HALT);
 		}
 		break;
 
-- 
2.7.4



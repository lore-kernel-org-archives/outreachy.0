X-GM-THRID: 6673442126229929984
X-Received: by 2002:a1f:a007:: with SMTP id j7mr4115158vke.2.1553922806092;
        Fri, 29 Mar 2019 22:13:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7c4a:: with SMTP id x71ls947772vsc.0.gmail; Fri, 29 Mar
 2019 22:13:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz+SmR1kdd5ovTpN0cLpTFTz1B2Hgm9qPGNiP78KUTQdWDFvSDXLEy5UimD9+/z9DT85+yC
X-Received: by 2002:a67:7c41:: with SMTP id x62mr5032806vsc.45.1553922805287;
        Fri, 29 Mar 2019 22:13:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553922805; cv=none;
        d=google.com; s=arc-20160816;
        b=Lq2NkMZ5OPO3XyIXfKwxLPRlmMssD979xH+2WMSBPGJKEbvFmGDu8Uie5eshptZTH1
         PJhhuqoDwJm9KfnbygsCgBejEiTScTXu+sKXvDzHB3gxY1Ro14i/KswGhrqMqmvBKeKW
         TPZGw9kOvOnSuP5SV89eNnOjZciYFlHQxKw04maLsvHrbHnZ8VhstsAxnywxIOvA1KDu
         /PRzx70ilBxqUWiuApahu2csG0s3pC1XGTSuWMuwjehU44VX9aIOHNuUeAV1RcuEKseW
         4jNtzIQOJjzYg7JW3fVPKVrv3aKsUeV9N+jepAtG+NN9G2hDdQkD4DHYWzsk03qLmL2z
         pBIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=L+Zadr6dbBq4znITJYaV1+zqKMjyXS/DMe5Hirfb+7g=;
        b=vbyIhJJO3Ve/T+0zP6Tz5LTuotrXk8BgkKAAhiTIFCjH8JhQZ7cplrvXR5qeKItLmo
         QMmqP/8KUlrFZrLzD8B8hMbchu5G03+Hq8SJkqiICgV6g5NEAP70SVwxQogTyG0X8IO9
         3MWGx57ZI1/DNf4Mf5+YDWk4Hy8+2swuCwr/gI7OFxPh28dmm1nu0Ce/3m4OtETG/7vG
         7jQ5qQToNiSszmtpU3TgSqFA/ySMErq+bDdW0XDq/e+M5VBmYt6y6YFxrgh/vD2Aw96W
         ldrA9daVmJJ1lckTBWep8f3t3TWjJQJU7VaG8KJC0eC9bDf+9WOtd9Xm52jGHQMkgkI8
         g2VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=onUWc0CH;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id k68si266485vkg.5.2019.03.29.22.13.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:13:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=onUWc0CH;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62a.google.com with SMTP id q6so1964713pll.4
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=L+Zadr6dbBq4znITJYaV1+zqKMjyXS/DMe5Hirfb+7g=;
        b=onUWc0CHf8cANBzUYbba2CCnUbMByf4IUH0bUjquEcVEE3Xbl7o0gHtSnijJSE8qeX
         wKSHaC3FKanMVuSttzH1CtPctv0Po47BUZAzFrRfFyxq8jh0o14OljQfmzvtv2UnZ8cO
         y1zdW1F9VYYS9i+CFoO3iZFZOplE/0ODYY1LhZgZZpavvWliKCpmkWcxV2T6b4XMdg7T
         8AXfU4VafrV/awG6aKVmb05NQboVRtG5Dj8/AL04ldssqBaB8hxtiObVOtkyGwDRjt0A
         bnhLDTeLtwVLtbVgM1DDnpkknBbDpu0IVGpvp5Dx4xxDUiCn2Zv1T352rCglZqZkdxKA
         Zv5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=L+Zadr6dbBq4znITJYaV1+zqKMjyXS/DMe5Hirfb+7g=;
        b=Pk63HkLxP5ylhmL0BQDVLZLLvwTVXT0roSOTXAApc3fBmRw5mGYh93sUB40vP7ZKDT
         Qhg8sAjcvB1wBJ4DiWPXZIaBtqzbnDlbt6EYRbnmxYc2JtvGuWvIZFeoEzZsU5M8nHoC
         JG/dtYhQc4dlJoRhaBqvhYP029zqGPmc4vr3GKnDyjCiY/Ord86aBQuoLrkbKEqaKiXN
         GVHSlElUPAUp91nN78C1cManOI/AseZPGM3QxNBr8pUmgPVoZ1/s44eDgBKUPnT/7t6F
         A5eAk65rkiPGw1PrPqPAfuL3mKOzpr+Z8ZAw4mVezkkaQPqQFg9ilheAAFFjlOv2NFMn
         RY2Q==
X-Gm-Message-State: APjAAAU5glz3Kv3NpZddydTNXKzjnL8/1wHKRH/1dqxC8L/Ft745TGXj
	+gmWABRhyLOanGqXP43ODt/T0Crf
X-Received: by 2002:a17:902:801:: with SMTP id 1mr20709050plk.299.1553922804695;
        Fri, 29 Mar 2019 22:13:24 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id o2sm4864557pgq.29.2019.03.29.22.13.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:13:24 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 4/8] staging: rtl8723bs: hal: odm_HWConfig.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 10:42:43 +0530
Message-Id: <1763d980f8c5922d710e7c2da7a26c0c4a6091e3.1553921776.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around an expression, add spaces around
operator and remove trailing space.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index ee2c293..d802a1f 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -19,7 +19,7 @@ static u8 odm_QueryRxPwrPercentage(s8 AntPower)
 	else if (AntPower >= 0)
 		return	100;
 	else
-		return	(100+AntPower);
+		return 100 + AntPower;
 
 }
 
-- 
2.7.4



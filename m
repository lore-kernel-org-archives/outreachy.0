X-GM-THRID: 6254220636972908544
X-Received: by 10.28.45.151 with SMTP id t145mr1476281wmt.6.1456174216573;
        Mon, 22 Feb 2016 12:50:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.145 with SMTP id w139ls489054wmw.29.gmail; Mon, 22 Feb
 2016 12:50:16 -0800 (PST)
X-Received: by 10.194.84.40 with SMTP id v8mr3700433wjy.2.1456174216018;
        Mon, 22 Feb 2016 12:50:16 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id v197si886930wmv.1.2016.02.22.12.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 12:50:16 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id g62so192358151wme.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 12:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rJHp+/F9XSFICrNSR9P2td/T+gCx4qWvY57RK+Ild1s=;
        b=DENuyE4oDEn0ldsLc8SQJBvVJfx7DEqZosXUYQaSdF85GEVqxu3DNAIlTGdazNMqe3
         dpDSeCYPzx+r0aEIE56ru8f6D1mnGka2iuu7NyEEQ3xWH157LK2QdxwN3t8tC/szlHy3
         eF8kTWILo0yWZSqLOYKfivccWGowJtyVlpBD4ACHneXk1OompX9iNiU1lwGzUl2iauyi
         Cj+XEGhut6dMlcMrpEnT4m5O3q/DxGfusfk4Cqye9z6nNEVJphVjSpKRPKou6bUAyPQK
         ll6Abfz6e6xO36ROrQTzWwYZqC+agqqaL+OL55sMnVa2HG5DRocq7bQ7H1IR6DFqpRdv
         xOOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rJHp+/F9XSFICrNSR9P2td/T+gCx4qWvY57RK+Ild1s=;
        b=A9kan2HODBxvJ4DYN3YY+ghvEjb9S0JzgDFapSpa95E+eWxhG4FbHPT6fKrRToqEHd
         qb20dC4G6gas1VlTNhxR8GhHF6aOpJrKcF0wbX2O8YnjKKHs8aNtYkD7fkdNleWrbI4C
         Kt5X8Pg28ghgWCd8+aZLtqw3UiNs1Ia174dRdxCWdWjWgTucxylWGrveSut2akffkQkU
         hcF92tqP0y62ixN9AC6gmHdMrIHM1M6/Emt0qu8bi79sh/lWP77257KPR52/XMDjmFSr
         xikbY6vGfabVhSSFq6bc31XPevK/tTmSF0cq3NEBJAkU3gnC6K8OeRh3M5qQi4bCYbi5
         tYnA==
X-Gm-Message-State: AG10YORtsnuqw9bxWGVLCBlS4y7MgboEEEb6v8/K46OkmgRQlu1Lm8WOUEBYevYNfBefAQ==
X-Received: by 10.28.92.195 with SMTP id q186mr13845220wmb.37.1456174215888;
        Mon, 22 Feb 2016 12:50:15 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.228.232])
        by smtp.gmail.com with ESMTPSA id ko2sm26309610wjc.9.2016.02.22.12.50.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 12:50:15 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: goldfish: Add space around '+'
Date: Mon, 22 Feb 2016 22:50:08 +0200
Message-Id: <1456174208-5179-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '+'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/goldfish/goldfish_audio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
index b0927e4..f1e1838 100644
--- a/drivers/staging/goldfish/goldfish_audio.c
+++ b/drivers/staging/goldfish/goldfish_audio.c
@@ -63,7 +63,7 @@ struct goldfish_audio {
 #define AUDIO_READ(data, addr)		(readl(data->reg_base + addr))
 #define AUDIO_WRITE(data, addr, x)	(writel(x, data->reg_base + addr))
 #define AUDIO_WRITE64(data, addr, addr2, x)	\
-	(gf_write_dma_addr((x), data->reg_base + addr, data->reg_base+addr2))
+	(gf_write_dma_addr((x), data->reg_base + addr, data->reg_base + addr2))
 
 /*
  *  temporary variable used between goldfish_audio_probe() and
-- 
1.9.1



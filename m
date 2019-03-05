X-GM-THRID: 6664861839759769600
X-Received: by 2002:a17:906:1d16:: with SMTP id n22mr36344ejh.14.1551790218608;
        Tue, 05 Mar 2019 04:50:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls5684945edf.1.gmail; Tue, 05 Mar
 2019 04:50:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqz7GlWSth4W/6npHsRUE++KjKQZU41Esf4BjmnUxn7fP5XuLHS/TiuYe+wLBZwHc+aY2xFB
X-Received: by 2002:a50:aa70:: with SMTP id p45mr3316109edc.6.1551790217828;
        Tue, 05 Mar 2019 04:50:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551790217; cv=none;
        d=google.com; s=arc-20160816;
        b=PJh2zJEgt94e27hDGA2CM7aM3kFAGY7U83YgS0CHPlQRGTZIFDm8KKFVj+a9jm5+Bi
         +mwANUosk5vnBJy/t9j/3/fLwjkvPOeHpz1ORU+T6cm1zF+ykl5a9LBnHy10qyHS5LWO
         29Wz7tl1KKXC7bFJMzojUV0ftZuHXx3zV4LLpjzNjdx5nPeutXI42fGUNxaOFWaDouPV
         NKaPb/VDj7vQX2kdBuiZc1CBqedHlYicsGiVBtfNvS9zk+dJ2m9E6rH+aZOUs0kUpYKv
         nTMaiYPuAh4hHPn6Qz0JwnT876/XQMB2IxcQH67dydULOUcK6xhnO1LFayga/hSC9FKO
         gPqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Pn7AJkecks8QqaxJI449lTNiatbK1/SGz5DgS6D7oF0=;
        b=rFpVcCMho0fND9XQbjQ67GJJu1T3ejAgKBLnHDD3yi2OVZVTyu75C13fHe7nYCkAoz
         4R/8j+bZCkYG69iovqi3ojm0GVnK5cJGFyoZuIN69L5jLrTEysJnqell2E05IMjLuIZX
         heNBvbu55IESMuwydtJRvpGh2ll3dw3wRMYElEPqJSOYn+zxM3j/Dw5vr8KWROzBVGQc
         2bgVYjdi421qNlM3q5OAxjx5SdC9rU1703xwGOZ8nrrijeCJ+c58oF7RoWK/kz24eOkA
         UjudN7o59JgtCVZ6ecb7eK/B4d95cWeDlVybM+M5tbPMouhenx/IKTAAzUEN1qbHpk6C
         EolA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GBG0oEB2;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id h5si426386ejq.0.2019.03.05.04.50.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 04:50:17 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GBG0oEB2;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x329.google.com with SMTP id a188so2414435wmf.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 04:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Pn7AJkecks8QqaxJI449lTNiatbK1/SGz5DgS6D7oF0=;
        b=GBG0oEB2Q+xyqVF2ze5RpACn11HfMwQxqFKoLTCOQ+qpLSg55WkPWni3hIEg6ezA/Y
         RCwDNvojilwk89+I+Zvd45ofr5N+H0cZqq9vyurTpXO6Al7UZND7tIFweSW5d9iHC9Rb
         6piS1b0r8NR/vQC2Hafnfy4Q8i/wuuRGIGi6lyuSpKf9/VoyTnfDWS4iu6Z+Irmqtg0B
         vnabbwqkloI9LwSFPgeJCEab/Kl3DQGrewxTIhcNV/VA9d7smlTzRC7R+9SJ9wPrdaQl
         rPplb61XLSP0ot5cQZC+725tZp97Wd4D+6ORqazf+2EEdGN+nmMmOrY8D2F/4WEXYMWy
         q9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Pn7AJkecks8QqaxJI449lTNiatbK1/SGz5DgS6D7oF0=;
        b=RYLq0zMhngwlzRhIeAhoHAOQDNY3UyjPzIHCRO+DwakJtRWLO0BvAhvJfT9htxlHxE
         wQ9UT5xSzSryLFzB9vByJvNceKmruzecXkO+shuHqxD2cIiboaLfcx6FDaIeYgS66U6U
         rQO18/uJQTxHVKTBu4DrhEDbPLxl0z2iHL9I8E1NeSP8B5mr4D7UGuafY6L/7tbuolm3
         Zw0nFQupSD4mEqnrhYX3M7ukbsHIV0CRwbFblV4ISilSeEbZrvmK/BRd1ty2HD4tFq9I
         YUNPX9KkhHDWrf5Z+upfmktWL61FWSMAaT4SPJ0/gnyn+hCCz1Ag5UKnhQYtjvZs2xe3
         CLIQ==
X-Gm-Message-State: APjAAAWOzGwuksJeiwDvYkFQLDItTYWQ3tAegLNuC+UjmiKVRXPAqhc3
	awo7OKaiLxpi8T9EH6ENynDlRQN+
X-Received: by 2002:a1c:67c2:: with SMTP id b185mr2687006wmc.68.1551790217538;
        Tue, 05 Mar 2019 04:50:17 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id a204sm9311307wmf.12.2019.03.05.04.50.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 04:50:17 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v2 1/4] staging: ralink-gdma: Avoid unnecessary line continuations in string
Date: Tue,  5 Mar 2019 14:50:06 +0200
Message-Id: <1551790206-19347-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>

Fix split string in multiple lines

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
Changes in v2:
-make these a patch series

 drivers/staging/ralink-gdma/ralink-gdma.c | 39 +++++++++++++++----------------
 1 file changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index 7dada05..a43d9b8 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -268,14 +268,14 @@ static int gdma_dma_terminate_all(struct dma_chan *c)
 
 static void rt305x_dump_reg(struct gdma_dma_dev *dma_dev, int id)
 {
-	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, " \
-			"ctr1 %08x, intr %08x, signal %08x\n", id,
-			gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
-			gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
-			gdma_dma_read(dma_dev, GDMA_REG_CTRL0(id)),
-			gdma_dma_read(dma_dev, GDMA_REG_CTRL1(id)),
-			gdma_dma_read(dma_dev, GDMA_RT305X_STATUS_INT),
-			gdma_dma_read(dma_dev, GDMA_RT305X_STATUS_SIGNAL));
+	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, ctr1 %08x, intr %08x, signal %08x\n",
+		id,
+		gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
+		gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
+		gdma_dma_read(dma_dev, GDMA_REG_CTRL0(id)),
+		gdma_dma_read(dma_dev, GDMA_REG_CTRL1(id)),
+		gdma_dma_read(dma_dev, GDMA_RT305X_STATUS_INT),
+		gdma_dma_read(dma_dev, GDMA_RT305X_STATUS_SIGNAL));
 }
 
 static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
@@ -342,18 +342,17 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 
 static void rt3883_dump_reg(struct gdma_dma_dev *dma_dev, int id)
 {
-	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, " \
-			"ctr1 %08x, unmask %08x, done %08x, " \
-			"req %08x, ack %08x, fin %08x\n", id,
-			gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
-			gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
-			gdma_dma_read(dma_dev, GDMA_REG_CTRL0(id)),
-			gdma_dma_read(dma_dev, GDMA_REG_CTRL1(id)),
-			gdma_dma_read(dma_dev, GDMA_REG_UNMASK_INT),
-			gdma_dma_read(dma_dev, GDMA_REG_DONE_INT),
-			gdma_dma_read(dma_dev, GDMA_REG_REQSTS),
-			gdma_dma_read(dma_dev, GDMA_REG_ACKSTS),
-			gdma_dma_read(dma_dev, GDMA_REG_FINSTS));
+	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, ctr1 %08x, unmask %08x, done %08x, req %08x, ack %08x, fin %08x\n",
+		id,
+		gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
+		gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
+		gdma_dma_read(dma_dev, GDMA_REG_CTRL0(id)),
+		gdma_dma_read(dma_dev, GDMA_REG_CTRL1(id)),
+		gdma_dma_read(dma_dev, GDMA_REG_UNMASK_INT),
+		gdma_dma_read(dma_dev, GDMA_REG_DONE_INT),
+		gdma_dma_read(dma_dev, GDMA_REG_REQSTS),
+		gdma_dma_read(dma_dev, GDMA_REG_ACKSTS),
+		gdma_dma_read(dma_dev, GDMA_REG_FINSTS));
 }
 
 static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
-- 
2.7.4



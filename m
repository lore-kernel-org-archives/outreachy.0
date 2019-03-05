X-GM-THRID: 6664864545484308480
X-Received: by 2002:adf:822f:: with SMTP id 44mr1289258wrb.2.1551784701724;
        Tue, 05 Mar 2019 03:18:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:400e:: with SMTP id n14ls2151276wrp.16.gmail; Tue, 05
 Mar 2019 03:18:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqzMzB/Y4juRWvQe1frPkIUEH6Vv3wsVLR2aO7rCACVmrRDv/eOb5XFgpD3p3kOdr6qGJ1sK
X-Received: by 2002:adf:ee01:: with SMTP id y1mr1287274wrn.10.1551784700959;
        Tue, 05 Mar 2019 03:18:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551784700; cv=none;
        d=google.com; s=arc-20160816;
        b=BDeL4updnpJ0ZKolUU5ZvpoKiyYA8fVB5+maSdtHMA42OekxyfAkUkwPCHT8ycX0Y3
         8B8BIHCWoNdEPshQnsrzt/c7PINLulImXmpbWUbMi/gsKAXQh/Bih3WYknoqqvGBAky3
         2QQkRln8YFxyoQ4+u0OY44uHK0L1Hrz3CslWnj2/emiKVTsSVseWahvk1i7zXIKUwmDO
         8IasOlnznqOuRx9Mwkp3eM0Kud5JirFKpO0Otwy+qfrAjE6xVZ3XgJe+OYz/XOxPSfa9
         NDN9V9tsL0ZHb9Wgqojw3B2jtGHnOuU+c1EW7vUQGEfvWMr8ehi0Eo/Ah/x57odlI0Gm
         z5Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=kIQhEfJeRhyQF8uWOQdcuT9T5nTru9fGcGPs3w8OsL0=;
        b=fqLqSYcpKSRjpz4qkHVA3BYHkjxZb8HFs3ydztNpi+wZUipMqX7DQr8MMT7kLPtqs5
         Yw9WukYSdaO2saNbizpyAZUyODPCK/MYdEyf3BHPVhFDtk7/v4ck+Disjxsgyen15+yK
         uXb7Wk1hAoNi4q9C60Hwjm85zbw/jQ2ivaNjXf3yVhdL+nBFdzmLvEFOa+XKqNnd+ig6
         eUITloT/U2oejBVi8ETQa2jNrcU4e/AEGuTUp6pKScx/fw1BI1rthMv97arUZgQq5LIz
         IMaLy0/rdabvk3cZbXB1Uv2mVIT+Z8ca0s6RX7RaLkx6tx8PY/vyV8JGMN8l1TywgYPR
         cuDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q+6cp5oW;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 60si295267wra.3.2019.03.05.03.18.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 03:18:20 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q+6cp5oW;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id q1so9016995wrp.7
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 03:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kIQhEfJeRhyQF8uWOQdcuT9T5nTru9fGcGPs3w8OsL0=;
        b=Q+6cp5oWx3+R8wrEecd1OHNj8VxYckCrrdu9BUd8Orp/oxZ6i0d7bbwyleYPyOSaXz
         ZvMVn+qJXic5ixATnAErBS00cKXkeJPTmiM0GQVVuZkaNyuvJYnyhPsnB74/sh5ZNvGG
         is+eLIpkVHoZlud9AUvPbIlYM6yXIrKUz4QGRZtUiE9lyyA+zRLefL8EVsLKioLa2e/V
         LoGPNzeKwnomH5VzeBEeAwqkI5lAOlVT9vWCN5NmGxfbREEqwb23V15zjt3Ngi7Ka/dI
         8w8tmI37RKcbb4PAAvSO/PoYSYl3azrDrECItpR8mZo4fry+SVU/+WYbxWDo1jJzL26m
         gMUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kIQhEfJeRhyQF8uWOQdcuT9T5nTru9fGcGPs3w8OsL0=;
        b=Qe1sLLlAsuIJSyq+rcisrxGOM5ypyX+ah7yCxv+XRSkKdFpzmauDvWlIZvrJeWBbFD
         60T5oWpwfKBVN66pynxtlxIuR5RgTfIhcbf129hsI44nrQszyNwgKBHzqlHK5LADzShL
         R8/G3NCEeSyQt6JKdfZkn9yxQKbT+7jAY7cPrp/pvSkqcEwXTdeWW5aeff8PL0dXcHRH
         Mtv8uSeVRo+9nYTrTmWznELKD3FUA1OivIZ7DW23DmUO/RCwzzSP56fiE9zCAbUt0MPK
         6pWVk2NLc3EtGqZBLHe3H8o5UiK81WjOMTBPGzEcsIvwL6WcP54FtrBbSCf32JxYqM7b
         DfOQ==
X-Gm-Message-State: APjAAAWJn9whFujEhODj8ZQPpChishPuK+Q8B6Gyniko6d/Y9ddts/FR
	i9OeoISKHM9dYfm0V6sXbDdLSk0u
X-Received: by 2002:a5d:620f:: with SMTP id y15mr15072332wru.101.1551784700347;
        Tue, 05 Mar 2019 03:18:20 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id d2sm9939849wrq.94.2019.03.05.03.18.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 03:18:19 -0800 (PST)
Date: Tue, 5 Mar 2019 13:18:18 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ralink-gdma: Avoid unnecessary line continuations
 in string
Message-ID: <20190305111818.GA16216@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix split string in multiple lines

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
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



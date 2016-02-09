X-GM-THRID: 6249238680974655488
X-Received: by 10.112.137.102 with SMTP id qh6mr4068811lbb.9.1455021683613;
        Tue, 09 Feb 2016 04:41:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.212 with SMTP id r203ls583643wmb.30.canary; Tue, 09 Feb
 2016 04:41:23 -0800 (PST)
X-Received: by 10.194.178.129 with SMTP id cy1mr3990135wjc.2.1455021683189;
        Tue, 09 Feb 2016 04:41:23 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id 5si661138wmm.2.2016.02.09.04.41.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:41:23 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id g62so3198631wme.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 04:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=p/6sr3ldLrIOrikm3AVwwjRMmP77HDiJTaTEKDc0cb0=;
        b=kGQzeBIITEQ1qb0pbheyn2QZPUWw5gc19cyIOuttjVjMskLoyKEne1q5HWCIH45/jb
         1GNjJ1gS8rzB/8ses5yg8Op1zFwaz8t0hE0Hr30v17FkIAKy1QfMMDu5+642CAuL1xyx
         2WelFKT0pI8GTC3gDF2wK6VB2cUyW1I6LXutaKfnJr14CyoE8YLwSq436kceSO0IScpL
         kplWQGirtrhqCk/cw511a5MDZE2emaalObYibSO60QJCc7QDKUy4vi31VXb4kp5e7Mew
         D7aM8i93XJ2w/gNI62L+KVP6uG1hEhuwa/SYa8QHL+sa8+zsdJGX6KrPK+vJMQfAfaRV
         35sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=p/6sr3ldLrIOrikm3AVwwjRMmP77HDiJTaTEKDc0cb0=;
        b=Cm5D1xvnkQ03VtSIsUOPhQK2jPAVSYNqyJdUsycNGZ1zZFqhfo0IrOoZo2cETxsOXN
         W77ej1tN5YpJMImfG9tY72Ocbl9HqtkmQ4fqdOie2YpWLexDrLwmUKJMgFp3MFd6/0F5
         ARuv5T0JeDsc8bOXx3cMvYlZJFiEIjEa1AjFrH5PiG8yM7MWYY0Zl6pVKO6WO1sJRni7
         czNUfIskAbCZnazTBt7tTH1wLt3x13rtv/4PhQjX+LCQxlS7dCAodpvNZddvHFc8WPUt
         OlHEE/atI20jZ6ESIV5l4u39eIYO7dPTiLT7dFYZp8QR5NOR2t0nJSn4/MF5vNSHSgvY
         /hVw==
X-Gm-Message-State: AG10YOSa76fd2fKiZfCFKLyvW71luBd4jCpDl6G8+4FxM0wFkdh0GQmH3+/uWKqt0EMi7A==
X-Received: by 10.28.21.14 with SMTP id 14mr4492280wmv.39.1455021683070;
        Tue, 09 Feb 2016 04:41:23 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneenVB ([109.171.130.212])
        by smtp.gmail.com with ESMTPSA id q129sm17514625wmd.14.2016.02.09.04.41.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 04:41:22 -0800 (PST)
Date: Tue, 9 Feb 2016 14:59:23 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] Staging: rts5208: fix check for dma mapping error
Message-ID: <20160209115923.GA28277@haneenVB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

use dma_mapping_error() instead of comapring the returned address with
zero after dma_map_single().

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index f27491e..0c9549b 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -653,7 +653,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 		return -ENXIO;
 
 	addr = dma_map_single(&(rtsx->pci->dev), buf, len, dma_dir);
-	if (!addr)
+	if (dma_mapping_error(&rtsx->pci->dev, addr))
 		return -ENOMEM;
 
 	if (card == SD_CARD)
-- 
1.9.1



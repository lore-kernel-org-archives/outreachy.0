X-GM-THRID: 6262296437961261056
X-Received: by 10.140.150.210 with SMTP id 201mr22760574qhw.28.1458054510941;
        Tue, 15 Mar 2016 08:08:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.227 with SMTP id e90ls295525qga.74.gmail; Tue, 15 Mar
 2016 08:08:30 -0700 (PDT)
X-Received: by 10.13.223.211 with SMTP id i202mr23289699ywe.4.1458054510119;
        Tue, 15 Mar 2016 08:08:30 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id y20si4026733pfa.2.2016.03.15.08.08.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 08:08:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id 124so32459513pfg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 08:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HqxFBlx3rA29Ny6ZLodRRB1Y7Enhh9ygzEY5J4wE8vA=;
        b=J0S6rAWBS4KuK8tmMjgIMyRcYgPd7ybAYn8R9khUez87LN2mTkZsXkDtCWjpVuKe61
         5mIS9t6w8TlCvLszfyDjJemRxbFRTWXVSzOh52gveIfSWY0t3Y1AqA+1pVYWaf/AmIoV
         EW+/yONGlAybCKnUA3QRu4n7ACFat2Mrf7dVBE99w6VNYibh978qVoFuPnchdaZlL3rM
         bkJdVjPjBIwc2clE8F6ErTaFWiY6N1b00UTs+7ZPvY9CxMeU31hLTsmNfxY1i1TNu1DK
         lzZsbVeXu5E6hpYxLkEjbx8gvs6s+EfPmOKo9squEaMv/WaroxPx8M97iZUSxZFN+XFD
         p9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HqxFBlx3rA29Ny6ZLodRRB1Y7Enhh9ygzEY5J4wE8vA=;
        b=emGLebi75vCzCYI1oY8a4hWqhpGdBLhROXu62iONqlqGHkywMt7drSJmBFTvMiK2CE
         ZqLF4liX/Btm9u5WkgLf2fK/Z5sUPHKSgXJwnVf8M/qW0OiYKGVV+9bZIvhq3bUhg8EI
         6lGkPYRHyRNbkpCwDraEo+CNE47gp2WnD13HBVkupKwY4agHLZlLCmgo2FJvmPSGr1M8
         TbSTldAWxHteXDHtKsjnBrd7hW5hAWW1fn1c3ERBdM3gEpj+8mFp0SxYpyunS9IVnrQk
         Fegj7u0uxusPn1j6ZpUvxL3UbIGpQatX9x7XwikHrmuJ+3COYLqOb5FHEvQ2p9B+zs8Q
         DZ5Q==
X-Gm-Message-State: AD7BkJJi2fncIkyKaAdnKeVVjGoutYAI/tbuwYnDyOutxd+TH7UbhvfQ513+5n+a8Y9shA==
X-Received: by 10.66.66.108 with SMTP id e12mr47016471pat.33.1458054509879;
        Tue, 15 Mar 2016 08:08:29 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.9.248])
        by smtp.gmail.com with ESMTPSA id xn8sm40479393pab.15.2016.03.15.08.08.28
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 08:08:29 -0700 (PDT)
Date: Tue, 15 Mar 2016 20:38:24 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] can: mcp251x: Replace create_freezable_workqueue with
 alloc_workqueue
Message-ID: <20160315150824.GA2858@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace scheduled to be removed create_freezable_workqueue with
alloc_workqueue.

priv->wq should be explicitly set as freezable to ensure it is frozen
in the suspend sequence and work items are drained so that no new work
item starts execution until thawed. Thus, use of WQ_FREEZABLE flag here 
is required.

The order of execution is not important so set @max_active as 0.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/net/can/spi/mcp251x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/can/spi/mcp251x.c b/drivers/net/can/spi/mcp251x.c
index 575790e..58b6e41 100644
--- a/drivers/net/can/spi/mcp251x.c
+++ b/drivers/net/can/spi/mcp251x.c
@@ -961,7 +961,7 @@ static int mcp251x_open(struct net_device *net)
 		goto open_unlock;
 	}
 
-	priv->wq = create_freezable_workqueue("mcp251x_wq");
+	priv->wq = alloc_workqueue("mcp251x_wq", WQ_FREEZABLE, 0);
 	INIT_WORK(&priv->tx_work, mcp251x_tx_work_handler);
 	INIT_WORK(&priv->restart_work, mcp251x_restart_work_handler);
 
-- 
1.9.1



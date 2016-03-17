X-GM-THRID: 6262296437961261056
X-Received: by 10.129.79.81 with SMTP id d78mr7065599ywb.23.1458224206094;
        Thu, 17 Mar 2016 07:16:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.99 with SMTP id i90ls1732022qgf.46.gmail; Thu, 17 Mar
 2016 07:16:45 -0700 (PDT)
X-Received: by 10.129.55.16 with SMTP id e16mr7380414ywa.44.1458224205536;
        Thu, 17 Mar 2016 07:16:45 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y20si1338895pfa.2.2016.03.17.07.16.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 07:16:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x3so11299835pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 07:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rwHYfw9lfuO7Ud7auvS8wNzjoT8UXySCmuDipE5EJVw=;
        b=SY8blLgm+NRF2Q87s++OPap/XrxBKLEdLJ6IPDaNMpr9WndZXLKM7WjUZ+0F7og2px
         HyyEcERMkQg+MDQYorawap36dP4jIwmRxaoHJeYGito9J6uLXK97VamsUJMb+CBKKqnN
         WL2Ac92yjo7XtT9pv5JZAF0njVuFs13suI77rBCB7h/ax7i9WvDn35toChh0AfmXRjy9
         Xs5CdGiuUsCO3RPk+c37IA6d6JJNV14rwZVV6eRc7W4dREjKrxFIViqEJAg17fdIDHy1
         +MFV9NbYYyjHY0rJaTSSC79PLtnfJYJPdXJfL2QXk+6bpOze8exNYa6Peigb7sO902JN
         ln6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rwHYfw9lfuO7Ud7auvS8wNzjoT8UXySCmuDipE5EJVw=;
        b=dy846gdy5fZnjaTyixKAkqsQ5bX9A8yEOfPtIJMf8PHQi/m/wB6i2ukzuYTdQnMcwR
         ziEVHub7YoeZu1eKiBpDfHZ2tqF4cFjc2790B5zCMihRJH2U4JJ++A5dsucSvY/qccCo
         z4I4RlIQNXRSGsEE2WP2XTnxvbq+sYWPiCoTAKUw9wAj+NuM9Qr4HmMOpE1pmJYDLVHv
         1TpbyFuQ9lX00DdZAjjQZaU4xXcPaDIYAYU1qXbdLWV69q3ySxvNCjL1136YiMKpfTtc
         tAqU9G8C7/WcyZ+yRgJGKHRR3IdqP7IJVtLWvLoanSzGcMmAaO4pCRCLFxrne5k+fkUz
         EIbw==
X-Gm-Message-State: AD7BkJJA4kNWZOqeiPFM/5IP3+GDcCsPxI/VV3LdBwLdAH4TheZggEiQ1nG4GCgeDbFbKw==
X-Received: by 10.66.66.198 with SMTP id h6mr15112152pat.112.1458224205282;
        Thu, 17 Mar 2016 07:16:45 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.162.14])
        by smtp.gmail.com with ESMTPSA id ko9sm13832197pab.37.2016.03.17.07.16.43
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 07:16:44 -0700 (PDT)
Date: Thu, 17 Mar 2016 19:46:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH v2] can: mcp251x: Replace create_freezable_workqueue with
 alloc_workqueue
Message-ID: <20160317141641.GA5080@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace scheduled to be removed create_freezable_workqueue with
alloc_workqueue.

priv->wq should be explicitly set as freezable to ensure it is frozen
in the suspend sequence and work items are drained so that no new work
item starts execution until thawed. Thus, use of WQ_FREEZABLE flag
here is required.

WQ_MEM_RECLAIM flag has not been set here since this driver doesn't
seem to sit in the memory reclaim path.

The order of execution is not important so set @max_active as 0.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Updated commit message

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



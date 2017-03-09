X-GM-THRID: 6395532861007462400
X-Received: by 10.107.164.151 with SMTP id d23mr4209065ioj.39.1489076032275;
        Thu, 09 Mar 2017 08:13:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.140 with SMTP id s12ls1887700ioi.15.gmail; Thu, 09 Mar
 2017 08:13:51 -0800 (PST)
X-Received: by 10.99.119.78 with SMTP id s75mr6529499pgc.124.1489076031281;
        Thu, 09 Mar 2017 08:13:51 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u12si1281251pfd.3.2017.03.09.08.13.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:13:51 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id v190so7752569pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 08:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Utd5QWHA7+6+4g3RD0Y8lpPk6bY0tQiTFGhm0ji1Xwc=;
        b=K0gNCUT5Y4B04Y1m9B8OGRUFej8SwQdVSzYDkQkMBkKg24Qw2OgAKrpz+YnfPGF8BO
         N8uYpRxH7q5BQwVcnTZsrIv+n02L2SMdb4cZqwtQf5xxDFAU62XafgzRNKxvUOa7dS7X
         TPfYBdGn91SogLkLhjRW401V2FUcpGwStahNyx7PhR8k5/bW55mvg8tB6N5WqD9KBICt
         lgCLAxl5VuRt8GL0+anwSsalsPp7huriu60JxYtNBIpjQtRKPRPewdKbbGo1FROp8Qn5
         hsOpkBoHzhSunpnmdSZm/m7xM65JpdCMoDExMKqSSbXCVdCbuo6a767NCqBSVXRMV4Gc
         Xfww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Utd5QWHA7+6+4g3RD0Y8lpPk6bY0tQiTFGhm0ji1Xwc=;
        b=SzTtHQEhPXgfhCWZzEHvsZDf81Dq7LRZAuBImJdA9kY8nzg3nTUQoZu+f03qw09wsk
         EDq8UfrJ7WLbSwNQrDA/xTSB7qLASKqEAnVtv0OX9nH8jeUKmd9KizIIvpKJxs3ZHnLd
         dH38tOvNlzrQFh92Xn3X3IVIQiQgL3JdiKkyFIa6RcLR26m5pJKFCJaImzCgnaF8EGcr
         2OZXDHLuZzeChh407bv0wjtC5iPQ3CVvne2WtCMS5ZoZmWnWfvRcjMxxW9+rOJqQGIyH
         WSX2lR9Vrh2b6LbdgssJka/OoONB0+MTzeD7VcxEB2EyIDByKnTdJEb5zZiQYxPYU0gP
         hIEw==
X-Gm-Message-State: AMke39mLNgdGxE6rt3KiK2HhlJP4Ed65k4sAZyG08vuZ1yKbIWjnQEWn1w3VXytagXw0zQ==
X-Received: by 10.84.176.100 with SMTP id u91mr18560890plb.112.1489076030631;
        Thu, 09 Mar 2017 08:13:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 80sm13493605pgd.39.2017.03.09.08.13.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 08:13:49 -0800 (PST)
Date: Thu, 9 Mar 2017 21:43:46 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ks7010: removed code in comments.
Message-ID: <20170309161346.GA18978@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Commenting Code Is a Bad Idea.
Comments are their to explain the code and how the code achieves its
goal and as codes in the comments  does not explain what the code is
doing so there is no use of commenting them.
So in this patch codes in the comments are removed.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 14580cb4c755..df90c20fcb69 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -478,8 +478,6 @@ static void ks7010_rw_function(struct work_struct *work)
 	/* wiat after WAKEUP */
 	while (time_after(priv->last_wakeup + ((30 * HZ) / 1000), jiffies)) {
 		DPRINTK(4, "wait after WAKEUP\n");
-/*		queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,&priv->ks_wlan_hw.rw_wq,
-		(priv->last_wakeup + ((30*HZ)/1000) - jiffies));*/
 		dev_info(&priv->ks_wlan_hw.sdio_card->func->dev,
 			 "wake: %lu %lu\n",
 			 priv->last_wakeup + (30 * HZ) / 1000,
-- 
2.11.0



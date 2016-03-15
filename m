X-GM-THRID: 6262288829369024512
X-Received: by 10.182.24.41 with SMTP id r9mr22436063obf.25.1458052738668;
        Tue, 15 Mar 2016 07:38:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.47.71 with SMTP id b7ls165860ign.21.gmail; Tue, 15 Mar 2016
 07:38:58 -0700 (PDT)
X-Received: by 10.66.236.199 with SMTP id uw7mr22657014pac.47.1458052737968;
        Tue, 15 Mar 2016 07:38:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id y20si3993356pfa.2.2016.03.15.07.38.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 07:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id u190so30998663pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 07:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7M1eJ+kK1oaRXGwgZujCINOfw3rST1rhLlw+aRH4aEg=;
        b=HN3DbEhkWzyZiCuOdfoBGl49+lkrsYZVyxbpT6+6gLYbFQsT6he1qNzY7nak9d+cMm
         i58qGX6cKethdJ3+PENxb/ADmCHkRj+u/Ag3hzG+V7v9e2spXBZgnm+hAdegRo/eeADb
         3j8lnm06y85lCJ5v8Mv2FgIG8BkkAeD55TJu+QJxGmbqo4pzfj48wFUN0zXj+kri4iMj
         /uQSJ96eNRKV1na+/BHCdRmQYTcjmLlzD612qOuOEt1EXUvkghbdaEywYJJVtXVfbNgN
         H1yl9tmtVzKCGwnSJpwLdwz6Ebp4qo26lxR91feMSwud7TaIz+xS4LGIfYvGpCdOs4oC
         v1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7M1eJ+kK1oaRXGwgZujCINOfw3rST1rhLlw+aRH4aEg=;
        b=ioeug1h0Gz0M5IukO0jRBgrC90H6WpzN7NsdF07uKhHKglVQ7b0eVxLydhsLSoi4yr
         z8hu+4HBJuvEjGIAFwhL9o7kBQe9QZaRnzIU1sei1fbGOCt0tyOvya+ZQXPAczTGf0wA
         gxcotcAKpLFPmgkthl9s5kgKm1bgh/n5SG5gNWmGmhA8FWvHaJ5vLwY8tQj0tHcitNYR
         iY9QRi2TXyiINwJ6r/frpoFtvbDLOMgXA5De04hM8+sJcXH7pX/ieRqgp9Z12y/+9bwN
         hneRww6e1j8DYSNYo/W4yy/2oz+rQt4AAiNdV2o9UUypC5P3uisw82OCjxA4x4zanl/5
         UDIw==
X-Gm-Message-State: AD7BkJLvIKBzgQFiKajaPkjnGiX3ZP4West9Rj/vMt74r7BIBfmzOY7fYaw3W6EMT55aDg==
X-Received: by 10.66.237.1 with SMTP id uy1mr47785243pac.114.1458052737189;
        Tue, 15 Mar 2016 07:38:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.9.248])
        by smtp.gmail.com with ESMTPSA id 23sm40229454pfs.34.2016.03.15.07.38.55
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 07:38:56 -0700 (PDT)
Date: Tue, 15 Mar 2016 20:08:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] qlge: Replace create_singlethread_workqueue with
 alloc_ordered_workqueue
Message-ID: <20160315143852.GA381@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace deprecated create_singlethread_workqueue with
alloc_ordered_workqueue.

Use alloc_ordered_workqueue for work like getting tx/rx frame sizes,
resetting MPI processor,setting asic recovery bit as only one work
item should be in queue/executing at any given time.

WQ_MEM_RECLAIM flag has been set to ensure execution context
regardless of memory pressure since qdev->workqueue might be used in
memory reclaim path.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/net/ethernet/qlogic/qlge/qlge_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/qlogic/qlge/qlge_main.c b/drivers/net/ethernet/qlogic/qlge/qlge_main.c
index 9979764..089a9cb 100644
--- a/drivers/net/ethernet/qlogic/qlge/qlge_main.c
+++ b/drivers/net/ethernet/qlogic/qlge/qlge_main.c
@@ -4676,7 +4676,7 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
 	/*
 	 * Set up the operating parameters.
 	 */
-	qdev->workqueue = create_singlethread_workqueue(ndev->name);
+	qdev->workqueue = alloc_ordered_workqueue(ndev->name, WQ_MEM_RECLAIM);
 	INIT_DELAYED_WORK(&qdev->asic_reset_work, ql_asic_reset_work);
 	INIT_DELAYED_WORK(&qdev->mpi_reset_work, ql_mpi_reset_work);
 	INIT_DELAYED_WORK(&qdev->mpi_work, ql_mpi_work);
-- 
1.9.1



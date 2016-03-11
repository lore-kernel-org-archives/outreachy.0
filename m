X-GM-THRID: 6260799618552954880
X-Received: by 10.129.89.198 with SMTP id n189mr7109111ywb.10.1457706004738;
        Fri, 11 Mar 2016 06:20:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls2351938qgd.27.gmail; Fri, 11 Mar
 2016 06:20:04 -0800 (PST)
X-Received: by 10.13.217.204 with SMTP id b195mr7112086ywe.26.1457706004161;
        Fri, 11 Mar 2016 06:20:04 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id h69si280566pfj.0.2016.03.11.06.20.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 06:20:04 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fl4so98910324pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 06:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2Zyz+1uBckRsahZNaqe1aKeQhhUmhEy22Ese+1F/fl8=;
        b=JTijo1c+PmSw/o/E4QAP44sRZHX/ziESISQ+C7oz7/7y06Dc1XGMFhUQOv1ky53rWP
         8+a0gWz1tUgfEIqf6wl4vHcvOcN+4bVcJFPmJ0ssom363L9q5nS/8y7PZLep8ZzROIMj
         6NdaZZmTwy1PiP6J6dIsw1G4d/epSLmj8Byh2RzNInSbD35zAM541u9N9OWgVmNf+c/J
         oa0Z6/jjhcP9Tbzck9a92h86T6SQqoU/X2YhorcxbgxDmLNkOafgJyIWVSJpCb+vHg71
         bSXRn9M4TUxFumoBO5s6q9KcXXB2uDYMG4I+5Jl0fnm0Q/cWKcpETCKTzn2a7BfU++cl
         WaIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2Zyz+1uBckRsahZNaqe1aKeQhhUmhEy22Ese+1F/fl8=;
        b=NElJAhAdJ2HsfbRj2NOXs4bn79DNf2KDNNjzyJHpcOkwFLFCiEitRxwrgIHZpjZLB0
         FytdlZMNM8NQysTqsZBuuMpuvpbaIKb6j8yzJPnb+pXgBchIUNcYUGSrdIGbvOsKbA7F
         f6RWhmVZdqwiwRl3FK7+C/alCpWLtlK5LwcEAWxtM7yXuEDsCZr6lqnAqGzIWc0nGbTy
         k+v3w4coCtZPuY3dJxiNMt88AhEYPmesz+2o+qoKyshQMwtqqItfYQsAEcfBG4OEf/RY
         a7EtBemPbLslhYRM8vraTBMnLX3p6V5aQNd3GP6es4TOpMuFTfZIazVWiDoiiW5qHs9g
         69uw==
X-Gm-Message-State: AD7BkJK5tQWGXhYHWXNfjcb7gGj27fzaHHOpuU/k6LNw1MmII14xopoSRc5QkOyCuCJzrg==
X-Received: by 10.66.122.100 with SMTP id lr4mr15166483pab.99.1457706003901;
        Fri, 11 Mar 2016 06:20:03 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id z68sm13419719pfi.19.2016.03.11.06.20.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 06:20:03 -0800 (PST)
Date: Fri, 11 Mar 2016 19:49:50 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Possible unnecessary 'out of memory'
 message
Message-ID: <20160311141942.GA5599@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnnecessary debug message.
Problem detected by checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index a670cb7..fd938fb 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -320,10 +320,8 @@ static int wilc_wlan_txq_add_cfg_pkt(struct wilc_vif *vif, u8 *buffer,
 	}
 
 	tqe = kmalloc(sizeof(*tqe), GFP_ATOMIC);
-	if (!tqe) {
-		netdev_err(vif->ndev, "Failed to allocate memory\n");
+	if (!tqe)
 		return 0;
-	}
 
 	tqe->type = WILC_CFG_PKT;
 	tqe->buffer = buffer;
-- 
1.9.1



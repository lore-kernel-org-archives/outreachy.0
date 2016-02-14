X-GM-THRID: 6251168080852942848
X-Received: by 10.194.84.40 with SMTP id v8mr1262226wjy.2.1455463487624;
        Sun, 14 Feb 2016 07:24:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.111.193 with SMTP id c62ls429419wmi.36.gmail; Sun, 14 Feb
 2016 07:24:47 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr664512wmg.6.1455463487042;
        Sun, 14 Feb 2016 07:24:47 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id 141si499090wmy.2.2016.02.14.07.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:24:47 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id b205so38509226wmb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=pbRAez6hOwbRDjQnXgfpjBQVG7lo8Hq7SKgHHAqyHgM=;
        b=zIz9Q3BHPN718WmLZmz/zYYrUvTq3rif3nykCkKd7VFXBicUGf6pE6dspgyhv5ZuYt
         YMWhazQfLsGfIpKhKfTbP+hJgxyc9QNqnaLbQQsIN8GH5ANFQofFPiuBKdkkIXhXQ7Zc
         BFi4OkSIIRigxBO8jdTqk/jL+D7xo7FhabOOfSQX9sLN6p2KwD7cXiaPLuQUtW3KjMUG
         8yy2zO3S6HtfLJ5n7pLmssxgc9Ya6lTST5hg2a7xoTA8/jUTpSEU88ilSTyNcWcdDD4d
         n6gkgONjVrTZSVv9FLUWISW7eI5WpTJCL0jQ5UTILY3bCGtpjRZCWrZweeuxnWcdGPoU
         SrpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=pbRAez6hOwbRDjQnXgfpjBQVG7lo8Hq7SKgHHAqyHgM=;
        b=EMWLSRslpocggygBA90YRVFEnwadWAG8DTFCEivubWOGVmSZ9xOIcFPvU4XMRmLFqz
         O4/y0+RV7+ZWhduiVclxrnDL389vl7fL0Nn/XkZzUF6FbMiRWqgjBAs9wn+5bxSvyFj/
         G7CrDLziYZQ9KXbg92aTzKcunYHk8DMA1oKPhM6WF3x780T9JeLkQqTWAoya0RFCpy4z
         MKNxXkD/Tn9y011UarJkOyIBA9VZeSXTJ5D7eFInX6WAEEpkDZXx5C8RKBaCdDDxCvtj
         r952zXFPgfWv//Ho8gTGqsfcPZdOXXAvTXUah92qqKxTh1e2YMn9tojTbiCGx3Xc6274
         JJ6A==
X-Gm-Message-State: AG10YOTDjVwI1Kl57jr4zZJwdTyha77ctvvDndGJRpKMpa9Jri6FhmHPmwyk0a5I1yT47Q==
X-Received: by 10.194.2.175 with SMTP id 15mr10887290wjv.84.1455463486933;
        Sun, 14 Feb 2016 07:24:46 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id x65sm11334308wmg.4.2016.02.14.07.24.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 07:24:45 -0800 (PST)
Date: Sun, 14 Feb 2016 16:24:44 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: netlogic: Fix parenthesis alignment
Message-ID: <20160214152440.GA27776@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Parameter lines are aligned with the open parenthesis. Checkpatch found this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index 74e154f..0182eff 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -122,8 +122,8 @@ static struct platform_device *gmac_controller2_init(void *gmac0_addr)
 		ndata1.phy_addr[mac] = mac + 4 + 0x10;
 
 		xlr_resource_init(&xlr_net1_res[mac * 2],
-				xlr_gmac_offsets[mac + 4],
-				xlr_gmac_irqs[mac + 4]);
+				  xlr_gmac_offsets[mac + 4],
+				  xlr_gmac_irqs[mac + 4]);
 	}
 	xlr_net_dev1.num_resources = 8;
 
-- 
2.7.0



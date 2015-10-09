X-GM-THRID: 6203671464357396480
X-Received: by 10.50.55.71 with SMTP id q7mr8413987igp.7.1444404827548;
        Fri, 09 Oct 2015 08:33:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.163 with SMTP id ij3ls536023igb.38.gmail; Fri, 09 Oct
 2015 08:33:47 -0700 (PDT)
X-Received: by 10.50.55.71 with SMTP id q7mr8413971igp.7.1444404827273;
        Fri, 09 Oct 2015 08:33:47 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si181713pbb.2.2015.10.09.08.33.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 08:33:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ex6so89987497pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 08:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=beG6nOe8lap4B7pjV1eto/a90aOPvR0nRUmJiZ2etyA=;
        b=MdKlk4GszVOEKeeWGkafCLszY1rd2wZS83urhxyF+hSG1HIq4lFOcAsbzVjpW9mrWu
         vi12vjyy1fLQUuby0Fn8IQkmDqxVVwMJMgrlmyuWAPQV2g0PhO6pGk6D+3ZJQWrCgljl
         w1Reii7Hu5o5xK5y3fCI23Ry3MieyxmXYLXk2LW89fvBtvHt6wpoDEBd9Uy+hEyevHmN
         nzCpN32TevslAJezcGPywuqxUX0G+1XCNDyucPSjOUdBaVBmeUfrCKD1CDCvjbrpe+UQ
         Hg/2mKMfeZF0xvRCXnKJdJ9uviN5iCQQmjQ/CO2mIw6t3lBvNGGK0PqVdqLVFvrPQ47B
         SvjA==
X-Received: by 10.66.232.40 with SMTP id tl8mr15528836pac.45.1444404827160;
        Fri, 09 Oct 2015 08:33:47 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yg2sm3072675pbb.79.2015.10.09.08.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 08:33:46 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/4] Staging: unisys: Use kcalloc instead of kzalloc to allocate array
Date: Fri,  9 Oct 2015 21:03:28 +0530
Message-Id: <1444404809-22880-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444404809-22880-1-git-send-email-shraddha.6596@gmail.com>
References: <1444404809-22880-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5617DE59.0157,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The advantage of kcalloc is, that will prevent integer overflows which
could result from the multiplication of number of elements and size and
it is also a bit nicer to read.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/unisys/visornic/visornic_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
index 85c9fec..6db74de 100644
--- a/drivers/staging/unisys/visornic/visornic_main.c
+++ b/drivers/staging/unisys/visornic/visornic_main.c
@@ -1797,8 +1797,8 @@ static int visornic_probe(struct visor_device *dev)
 		goto cleanup_netdev;
 	}
 
-	devdata->rcvbuf = kzalloc(sizeof(struct sk_buff *) *
-				  devdata->num_rcv_bufs, GFP_KERNEL);
+	devdata->rcvbuf = kcalloc(devdata->num_rcv_bufs,
+				  sizeof(struct sk_buff *), GFP_KERNEL);
 	if (!devdata->rcvbuf) {
 		err = -ENOMEM;
 		goto cleanup_rcvbuf;
-- 
2.1.4



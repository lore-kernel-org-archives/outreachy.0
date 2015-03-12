X-GM-THRID: 7858872647680
X-Received: by 10.52.122.75 with SMTP id lq11mr42427937vdb.4.1426161541575;
        Thu, 12 Mar 2015 04:59:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.73 with SMTP id xu9ls447737obc.42.gmail; Thu, 12 Mar
 2015 04:59:01 -0700 (PDT)
X-Received: by 10.182.181.105 with SMTP id dv9mr30025936obc.16.1426161541349;
        Thu, 12 Mar 2015 04:59:01 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id gb13si1264609pac.2.2015.03.12.04.59.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 04:59:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id ft15so19618682pdb.6
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 04:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nSRwvGVI5x0uNa2STuvnpVYfZXLaYYsgebXNt4vOojQ=;
        b=vx2MElJLRj33P2uLCSkPJgu8ntObcNtDOBwVFvgScZQWM7WPLJjglkiVQLu9H3Lk64
         15oF8sCfrf/Gvbmkzt+psQnNwxFLIBJHKd3vZKLvTrSH2yf6mJfHmbTuCTWRUh3vrPTW
         RSlyN/E21Y7QEm8qqBv71FeTc14nV1GhAQwRO83szcacKDYPxg2d0BlR66i0Q/L0xtP5
         FKpPE656GM5dqixE4XneXCjxMhH0eCzYXMB3/QhPC0Tv5CNNoZxCIpGWeZcNssrF6lvd
         bNlPUT1FiHT5+eNaSdMk3OJkmBL1WkzeQjUQw3Mgs2SKrOVLrlKlKQ8pPuZs6SL07/VM
         OpLw==
X-Received: by 10.66.101.35 with SMTP id fd3mr91050475pab.50.1426161541160;
        Thu, 12 Mar 2015 04:59:01 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.243])
        by mx.google.com with ESMTPSA id qa3sm10786105pab.16.2015.03.12.04.58.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 04:59:00 -0700 (PDT)
Date: Thu, 12 Mar 2015 17:28:54 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: ft1000: Use module_pcmcia_driver
Message-ID: <20150312115854.GA6099@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Macro module_pcmcia_driver is used for drivers whose init
and exit paths does only register and unregister to pcmcia
API. So, here remove some boilerplate code by using
module_pcmcia_driver.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes since v1:
	- Put semicolon after module_pcmcia_driver

 drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c
index 922478e..e5cc5be 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c
@@ -155,15 +155,4 @@ static struct pcmcia_driver ft1000_cs_driver = {
 	.resume		= ft1000_resume,
 };
 
-static int __init init_ft1000_cs(void)
-{
-	return pcmcia_register_driver(&ft1000_cs_driver);
-}
-
-static void __exit exit_ft1000_cs(void)
-{
-	pcmcia_unregister_driver(&ft1000_cs_driver);
-}
-
-module_init(init_ft1000_cs);
-module_exit(exit_ft1000_cs);
+module_pcmcia_driver(ft1000_cs_driver);
-- 
1.9.1



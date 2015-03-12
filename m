X-GM-THRID: 7858872647680
X-Received: by 10.236.11.196 with SMTP id 44mr42677756yhx.31.1426160583431;
        Thu, 12 Mar 2015 04:43:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.68.103 with SMTP id v7ls470033obt.57.gmail; Thu, 12 Mar
 2015 04:43:03 -0700 (PDT)
X-Received: by 10.183.3.75 with SMTP id bu11mr16842530obd.12.1426160583235;
        Thu, 12 Mar 2015 04:43:03 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ri9si1285012pdb.1.2015.03.12.04.43.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 04:43:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablj1 with SMTP id lj1so19871904pab.10
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 04:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mX50qcynAi939A/fTgr50/fLusQbHvNWn+MHzAf3XcY=;
        b=tMfGrvrIM4SwJG4Lki+N15i3kylkJUU+0PJWYaqrgUiRpZtqAesSUScq0sK9m2TRUe
         LksZofBRuzZDsXhIsCNMs8GNQUGEz2NIJFAaBjIXKJqpOpIN4mQ1y/Oyc0bW6KaZCSYT
         NHVDPLqem3zVArlmvVR2TFJxCdlk1rRZYeJj8ZTun8ydgwzK45spwicqv1xdWXIaWV2O
         C1kqGLy8BFktrF91b/AbNLEuuRe+ZsVesCdPwqqVh4NeyDPp3sinchOArXAIa0fpvNbk
         caewlODBJUgIV3JxY1DObbF5Nmz+jNaMjWbPYz3Ejwrt9L/MK8lQ1Fj6B9AWyv+MPNTd
         EJww==
X-Received: by 10.66.97.37 with SMTP id dx5mr40813497pab.69.1426160583112;
        Thu, 12 Mar 2015 04:43:03 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.243])
        by mx.google.com with ESMTPSA id rk5sm10644380pab.37.2015.03.12.04.43.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 04:43:02 -0700 (PDT)
Date: Thu, 12 Mar 2015 17:12:57 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ft1000: Use module_pcmcia_driver
Message-ID: <20150312114257.GA4387@vaishali-Ideapad-Z570>
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
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c
index 922478e..c36f549 100644
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
+module_pcmcia_driver(ft1000_cs_driver)
-- 
1.9.1



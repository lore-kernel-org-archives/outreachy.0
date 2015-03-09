X-GM-THRID: 7174525812736
X-Received: by 10.66.97.10 with SMTP id dw10mr25347633pab.48.1425878235675;
        Sun, 08 Mar 2015 22:17:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.48.3 with SMTP id n3ls1278847qga.30.gmail; Sun, 08 Mar
 2015 22:17:15 -0700 (PDT)
X-Received: by 10.236.4.134 with SMTP id 6mr25135000yhj.35.1425878235384;
        Sun, 08 Mar 2015 22:17:15 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x232.google.com (mail-pd0-x232.google.com. [2607:f8b0:400e:c02::232])
        by gmr-mx.google.com with ESMTPS id pc4si2404835pac.0.2015.03.08.22.17.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 22:17:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) client-ip=2607:f8b0:400e:c02::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x232.google.com with SMTP id y10so22413598pdj.12
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 22:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HDmElGKOPYeG6AOmGgl0WOgpKLL6LNLTB691tNIgoRM=;
        b=iX6kmlyNq97WM8wtUnnrYRn13k4jcLN2LrflGLHTZlO0Cf8M3sZ27mDoEEeOV3PY+g
         fF+Qvu2oEb4HyZe3EkUvR6fcnGL9GyDnMQl0/ur6KRgmvxm6C+uzVbozPHNiNo9IJ83W
         kCv+sMzcF1w20swGnfNv/dz+cbeFGzoDqoaYq0FgVfRYBD/9PhYkL+yYhLF/SL4gOmFv
         tDuTeUDgtwdeDJXLbgVPa7zU0lDHa9lvZOAYd93CXGEwi4r8FkksL57QiZVKwiWm0wUi
         VPWf2yvg/s/aavU883xXMUZt8w3wskGBIETJ1/IJZAd97BJREWRk8MzSiuqyV1fu6aZX
         s1Dw==
X-Received: by 10.70.33.175 with SMTP id s15mr48960504pdi.166.1425878235216;
        Sun, 08 Mar 2015 22:17:15 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.67])
        by mx.google.com with ESMTPSA id b12sm8967254pdl.62.2015.03.08.22.17.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 22:17:14 -0700 (PDT)
Date: Mon, 9 Mar 2015 10:47:08 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rts5208: Use module_pci_driver
Message-ID: <20150309051708.GA4116@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Macro module_pci_driver is used for drivers whose init
and exit paths does only register and unregister to pci
API. So, here remove some boilerplate code by using
module_pci_driver.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index c74f1b8..7f3f16a 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -1048,21 +1048,4 @@ static struct pci_driver driver = {
 	.shutdown = rtsx_shutdown,
 };
 
-static int __init rtsx_init(void)
-{
-	pr_info("Initializing Realtek PCIE storage driver...\n");
-
-	return pci_register_driver(&driver);
-}
-
-static void __exit rtsx_exit(void)
-{
-	pr_info("rtsx_exit() called\n");
-
-	pci_unregister_driver(&driver);
-
-	pr_info("%s module exit\n", CR_DRIVER_NAME);
-}
-
-module_init(rtsx_init)
-module_exit(rtsx_exit)
+module_pci_driver(driver);
-- 
1.9.1



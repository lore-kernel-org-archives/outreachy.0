X-GM-THRID: 7174525812736
X-Received: by 10.182.91.79 with SMTP id cc15mr42531430obb.20.1426130110875;
        Wed, 11 Mar 2015 20:15:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.119 with SMTP id k110ls1009601qgf.56.gmail; Wed, 11
 Mar 2015 20:15:10 -0700 (PDT)
X-Received: by 10.236.70.100 with SMTP id o64mr45804539yhd.9.1426130110618;
        Wed, 11 Mar 2015 20:15:10 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id l3si307798pdo.0.2015.03.11.20.15.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 20:15:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id fl12so16351907pdb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 20:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=vEp7fPia5fL+Hc37GdtJRqMg2VPCwEd7UVosKxqwyFI=;
        b=WT0+xHaYxxf2Yhc90vLBWBspHhC6qQ+d7EyQjLiK59JVbFdLGR3xKK9p4Pti4ngSeU
         vKZZc8QlRaDK/tJM+6Hv6jULVQJPowNVaWkgdiaMf5bBRE5MesVjBmx2Z33Rh1AEC3Xl
         oeo0UUGr4fvA3pJlo21L55MpMHunzfqEJoR7oYV5/I82yWc3e/g/TNFjHJnseyQurWFJ
         6HKJtxLXdYYX029WTlcT13/F5SsdX/KY4MsoP38IX3TrZdLwabWSLZJw7lJewlS/ngKz
         BfDGPHt8wgIAZINFr63VDYmCrRbjAaTQiGSyoiVEKLUQCVo0OJhAhOZV2c8JTqFNIdyA
         IkhA==
X-Received: by 10.66.233.35 with SMTP id tt3mr12201044pac.36.1426130110502;
        Wed, 11 Mar 2015 20:15:10 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.18])
        by mx.google.com with ESMTPSA id g3sm8238036pdg.39.2015.03.11.20.15.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 20:15:09 -0700 (PDT)
Date: Thu, 12 Mar 2015 08:45:05 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rts5208: Use module_pci_driver
Message-ID: <20150312031505.GA4500@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Macro module_pci_driver is used for drivers whose init
and exit paths does only register and unregister to pci
API. So, here remove some boilerplate code by using
module_pci_driver. Also, change driver->rtsx_driver to
fix the build warnings.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes since v1:
	- Change commit log
	- Fix build warnings

 drivers/staging/rts5208/rtsx.c | 21 ++-------------------
 1 file changed, 2 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 7f2c0c3..3fbc4ab 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -1036,7 +1036,7 @@ static const struct pci_device_id rtsx_ids[] = {
 MODULE_DEVICE_TABLE(pci, rtsx_ids);
 
 /* pci_driver definition */
-static struct pci_driver driver = {
+static struct pci_driver rtsx_driver = {
 	.name = CR_DRIVER_NAME,
 	.id_table = rtsx_ids,
 	.probe = rtsx_probe,
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
+module_pci_driver(rtsx_driver)
-- 
1.9.1



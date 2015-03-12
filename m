X-GM-THRID: 7174525812736
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,81deab53fa1b567f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.33.134 with SMTP id i6mr36724975icd.22.1426161980696;
        Thu, 12 Mar 2015 05:06:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.3 with SMTP id l3ls763867iod.94.gmail; Thu, 12 Mar
 2015 05:06:20 -0700 (PDT)
X-Received: by 10.66.157.194 with SMTP id wo2mr42429461pab.17.1426161980495;
        Thu, 12 Mar 2015 05:06:20 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id pc4si1290321pac.0.2015.03.12.05.06.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 05:06:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbnh10 with SMTP id nh10so19688828pdb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 05:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AhMyRziNkqRNL640F/UDkfkGpp+f/tVxttH34Q1b3po=;
        b=EN/z5fYyawbSZFtuRdxzkKlvEqZSFjl4sfh4ibOC12x7zHkoY3i/1PWNbeABWNkUp6
         M6q6KLfajIKjU9SDpPAJ3L2VyyMgEnwJL85FIzPohlHkNpLwXN7IKSAanBmzm9mxuDQR
         0WqQQ5u1ro3NzoXPGPOGcSqZtNwU/wCHevsmTmwFv3G6iKjccgdg5lp0MCNCs8XMorNC
         X6Y14M2a92vYX42YGJkH7oXC5XHW0MseypTYSatwD2UtfdMButakmxYMVpGa8LiDoyuj
         hsk6pj/0dpfR+YxfRO1KvTjBX6nkd+N+UyBfq/US26cBXK0CxW2vszO5SWchS6dWZOnb
         0slA==
X-Received: by 10.66.149.106 with SMTP id tz10mr90270135pab.90.1426161980410;
        Thu, 12 Mar 2015 05:06:20 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.243])
        by mx.google.com with ESMTPSA id se2sm10750803pac.38.2015.03.12.05.06.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 05:06:19 -0700 (PDT)
Date: Thu, 12 Mar 2015 17:36:15 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] Staging: rts5208: Use module_pci_driver
Message-ID: <20150312120615.GA6130@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Macro module_pci_driver is used for drivers whose init
and exit paths does only register and unregister to pci
API. So, here remove some boilerplate code by using
module_pci_driver. Also, change driver to rtsx_driver,
to avoid implicitly redefining driver_init.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes since v1:
        - Change commit log
        - Fix build warnings
Changes since v2:
        - Make commit log more clear
Changes since v3:
	- Put semicolon after module_pci_driver

 drivers/staging/rts5208/rtsx.c | 21 ++-------------------
 1 file changed, 2 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 7f2c0c3..c482a6a 100644
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
+module_pci_driver(rtsx_driver);
-- 
1.9.1



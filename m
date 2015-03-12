X-GM-THRID: 7174525812736
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,81deab53fa1b567f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.17.168 with SMTP id j28mr43389777yhj.0.1426160213066;
        Thu, 12 Mar 2015 04:36:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.134 with SMTP id z6ls1172126qgd.97.gmail; Thu, 12 Mar
 2015 04:36:52 -0700 (PDT)
X-Received: by 10.236.63.230 with SMTP id a66mr44498282yhd.51.1426160212883;
        Thu, 12 Mar 2015 04:36:52 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id ni4si1265992pdb.2.2015.03.12.04.36.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 04:36:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbft15 with SMTP id ft15so19493485pdb.6
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 04:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4JaaPhd1LT5xErEjP0j/Vh4SY4DMzOT6D8YkIIhnPns=;
        b=dnPkFQVyRZBwTL7uTP4sC2tkfQXd4hEIlwb0Foi6V4QRXqsdZ3sIrvAqTaei5rBBfa
         HusWVoa04JRUEzV/3JSo5kmBmsp61ZGgOMgyrv1bPmyIIYcNZg+x27XsRunMgUtEr1pG
         eJOFdLJiXyYVhHP3D3Qja+1gUPE5mJnE1eeZWeXHwWK9MvcewUtPo5E49q74i6hl4Au7
         MaWFo8ADYIUtAgVaoERf74kt4UidWDuC4YqmKxdARPSnbXxP+HUPKCsdP+aUpY6VtxlG
         MXcopifPs7rcJhi1o3N/xRYkjSfiHFFRfkQhYBBE6CcH93Ub+ov2xxc/cAOs2S19MV2l
         UFaQ==
X-Received: by 10.70.37.134 with SMTP id y6mr90562401pdj.13.1426160212707;
        Thu, 12 Mar 2015 04:36:52 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.243])
        by mx.google.com with ESMTPSA id om6sm10609284pdb.40.2015.03.12.04.36.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 04:36:51 -0700 (PDT)
Date: Thu, 12 Mar 2015 17:06:47 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: rts5208: Use module_pci_driver
Message-ID: <20150312113612.GA3562@vaishali-Ideapad-Z570>
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



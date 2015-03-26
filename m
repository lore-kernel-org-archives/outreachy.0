X-GM-THRID: 9903208923136
X-Received: by 10.182.158.37 with SMTP id wr5mr12353565obb.1.1427328610940;
        Wed, 25 Mar 2015 17:10:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.33 with SMTP id c33ls502732iod.44.gmail; Wed, 25 Mar
 2015 17:10:10 -0700 (PDT)
X-Received: by 10.42.153.135 with SMTP id m7mr33991415icw.4.1427328610789;
        Wed, 25 Mar 2015 17:10:10 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id kt5si512711qcb.3.2015.03.25.17.10.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 17:10:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id 60so55739237qgf.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 17:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RW8vsnLR+puXdr2gixFXEpa/ay1YtHdIQHhOzKpt2cs=;
        b=DXYVsKKapmqy6Pr8NTGa8bNz8LL7d+Prx5LgjlTwDCLkOCyfeFqyy38BSXiJDXlqlq
         ggiK+L5/nRSm02bkvXpmPfkGeoBS/Kinp0by21di+hn2dpLV9lpo1kLljVgOLSnLhf0b
         G3HTr9FdvvhczURNHYweHoNu4H89pwll4551Oxmcl//GlM7MiJUQy4ZE7oAtVPrGMA/Q
         dHm9ZVIfi9V/90I/KYHpQrhkr2Xxfkx/0H/fZC6DdiRKbY1XVhnXWlafWCJM4eiYy8mA
         hd3VjIUDJIPCPZ3K4OxJX5SoVihYcmonMqT5U6tt57uoeiWd1X8eptK5SEsAWLoXfAc4
         HwZw==
X-Received: by 10.55.18.8 with SMTP id c8mr24405025qkh.25.1427328610697;
        Wed, 25 Mar 2015 17:10:10 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id w68sm1273609qha.32.2015.03.25.17.10.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 17:10:10 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] Staging: dgnc: Replace printk with pr_err
Date: Wed, 25 Mar 2015 21:09:53 -0300
Message-Id: <1427328593-6576-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following checkpatch.pl warning:

WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev, ... then dev_err(dev, ... then pr_err(...  to printk(KERN_ERR ...
+               printk(KERN_ERR "DGNC: sysfs driver_create_file failed!\n");

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/dgnc/dgnc_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
index 2df889e..65551d1 100644
--- a/drivers/staging/dgnc/dgnc_sysfs.c
+++ b/drivers/staging/dgnc/dgnc_sysfs.c
@@ -75,7 +75,7 @@ void dgnc_create_driver_sysfiles(struct pci_driver *dgnc_driver)
 	rc |= driver_create_file(driverfs, &driver_attr_maxboards);
 	rc |= driver_create_file(driverfs, &driver_attr_pollrate);
 	if (rc)
-		printk(KERN_ERR "DGNC: sysfs driver_create_file failed!\n");
+		pr_err("DGNC: sysfs driver_create_file failed!\n");
 }
 
 
-- 
1.9.1



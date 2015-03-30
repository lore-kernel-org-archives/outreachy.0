X-GM-THRID: 10424448712704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b5be1ea9d2b637f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.9.228 with SMTP id d4mr47832wib.1.1427758185634;
        Mon, 30 Mar 2015 16:29:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.228 with SMTP id w4ls63609lag.29.gmail; Mon, 30 Mar
 2015 16:29:44 -0700 (PDT)
X-Received: by 10.112.159.135 with SMTP id xc7mr544430lbb.0.1427758184915;
        Mon, 30 Mar 2015 16:29:44 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id a14si417093wib.3.2015.03.30.16.29.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2015 16:29:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id a2so4409743wia.0
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2015 16:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/lpbXN6HX8dkUY1QFTLPZ2IQRwMQxMwji57yaZ8UqIs=;
        b=DiYES9q9K8qd/eXNfVXfk0ErOgrCasTiPp8OOThtkAmp4C0FyaChAs1rnSNTmTgTGV
         IXSaDzI8a3BfF5cM5k1ORDQaiC0M2J6k0GLpvtZcnDKPTrjOWfS7dnoZxgrkqoysBP7v
         F5ZSuLGdg6oIgMrpIq86lZ2qoqoqYSUbG331I61dQvERltrauCsZwB+LE+HiWiHMl716
         RkRfBtp3nCZ3QRzK/Yfw1dbkveRhLBjJIZ/dZABnSvKd9PwrOGE4/vfdnX+Q67Si4veO
         V6ydniZQz5eLwbL5hmcQPMJmX9TWrwkdPRVUe5EZcCsRgXRtoEIlG/rKjhB3cdugahv8
         Vngw==
X-Received: by 10.180.74.135 with SMTP id t7mr313723wiv.72.1427758184813;
        Mon, 30 Mar 2015 16:29:44 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id hw7sm17771853wjb.24.2015.03.30.16.29.42
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 30 Mar 2015 16:29:43 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: dgnc_sysfs: Replace printk(KERN_ERR ) with pr_err()
Date: Tue, 31 Mar 2015 02:29:35 +0300
Message-Id: <1427758175-22003-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix the following checkpatch warning:
WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev, ... 
then dev_err(dev, ... then pr_err(...  to printk(KERN_ERR ...


Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
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



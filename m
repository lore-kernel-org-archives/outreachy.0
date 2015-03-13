X-GM-THRID: 8110844411904
X-Received: by 10.236.203.196 with SMTP id f44mr31861101yho.15.1426267465494;
        Fri, 13 Mar 2015 10:24:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.172 with SMTP id w41ls1664075qge.55.gmail; Fri, 13 Mar
 2015 10:24:25 -0700 (PDT)
X-Received: by 10.236.105.137 with SMTP id k9mr48961423yhg.14.1426267465345;
        Fri, 13 Mar 2015 10:24:25 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id ri9si485516pdb.1.2015.03.13.10.24.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 10:24:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id nh10so30354222pdb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 10:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=cyyO8KRLNYBwNJM/sDjgAuGT0uWBqRnRdhrNy7vZffo=;
        b=NezAbOKmMvq6S6yyv5NtRBzBtUBX6yPZVYWEUvZG113V1T/VceMVlIiWHWCLWi6RZC
         U9/cjM/I87YFVWW0px7LdoLJFyFz4Ctv7nfBDxo+LHvl726v0aK0QFSEweEGhojHXpKU
         e3kMDV2QRKKW31DNv3eC/Bp7RHIB3/YFV6Hy+wSZGHQxe7SbW4KVU+eHliE+kGdw2NT4
         oODorywJNwsJm7XlWlGqaAvBrYUI2ig7/aGD++KXFsk2viK78D9uboseCAYqzRdOUtyR
         x89sx/0iPBAfu4B2A1dWCQmR103u2ooqA8lnMNXcWu8w7Y59KaMATOFYgDIlnR37K0pd
         YyIw==
X-Received: by 10.66.154.17 with SMTP id vk17mr103560596pab.5.1426267465163;
        Fri, 13 Mar 2015 10:24:25 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.44.252])
        by mx.google.com with ESMTPSA id hk6sm4443215pdb.83.2015.03.13.10.24.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 10:24:24 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 1/2] Staging: i2o: Move assignment out of if statement
Date: Fri, 13 Mar 2015 22:53:11 +0530
Message-Id: <1426267392-27533-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

Checkpatch.pl suggest to avoid assignment in if statement.

This patch moves assignments out of the if statement and place
it before the if statement. This is done using following coccinelle
script.

@@
expression E1;
identifier p;
statement S;
@@
- if ((p = E1))
+ p = E1;
+ if (p)
	S

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/i2o/bus-osm.c |  3 ++-
 drivers/staging/i2o/iop.c     | 24 ++++++++++++++++--------
 drivers/staging/i2o/pci.c     |  9 ++++++---
 3 files changed, 24 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/i2o/bus-osm.c b/drivers/staging/i2o/bus-osm.c
index 7aa0339..43e357e 100644
--- a/drivers/staging/i2o/bus-osm.c
+++ b/drivers/staging/i2o/bus-osm.c
@@ -69,7 +69,8 @@ static ssize_t i2o_bus_store_scan(struct device *d,
 	struct i2o_device *i2o_dev = to_i2o_device(d);
 	int rc;
 
-	if ((rc = i2o_bus_scan(i2o_dev)))
+	rc = i2o_bus_scan(i2o_dev);
+	if (rc)
 		osm_warn("bus scan failed %d\n", rc);
 
 	return count;
diff --git a/drivers/staging/i2o/iop.c b/drivers/staging/i2o/iop.c
index 52334fc..d4a7b91 100644
--- a/drivers/staging/i2o/iop.c
+++ b/drivers/staging/i2o/iop.c
@@ -1096,7 +1096,8 @@ int i2o_iop_add(struct i2o_controller *c)
 {
 	int rc;
 
-	if ((rc = device_add(&c->device))) {
+	rc = device_add(&c->device);
+	if (rc) {
 		osm_err("%s: could not add controller\n", c->name);
 		goto iop_reset;
 	}
@@ -1105,24 +1106,28 @@ int i2o_iop_add(struct i2o_controller *c)
 	osm_info("%s: This may take a few minutes if there are many devices\n",
 		 c->name);
 
-	if ((rc = i2o_iop_activate(c))) {
+	rc = i2o_iop_activate(c);
+	if (rc) {
 		osm_err("%s: could not activate controller\n", c->name);
 		goto device_del;
 	}
 
 	osm_debug("%s: building sys table...\n", c->name);
 
-	if ((rc = i2o_systab_build()))
+	rc = i2o_systab_build();
+	if (rc)
 		goto device_del;
 
 	osm_debug("%s: online controller...\n", c->name);
 
-	if ((rc = i2o_iop_online(c)))
+	rc = i2o_iop_online(c);
+	if (rc)
 		goto device_del;
 
 	osm_debug("%s: getting LCT...\n", c->name);
 
-	if ((rc = i2o_exec_lct_get(c)))
+	rc = i2o_exec_lct_get(c);
+	if (rc)
 		goto device_del;
 
 	list_add(&c->list, &i2o_controllers);
@@ -1192,13 +1197,16 @@ static int __init i2o_iop_init(void)
 
 	printk(KERN_INFO OSM_DESCRIPTION " v" OSM_VERSION "\n");
 
-	if ((rc = i2o_driver_init()))
+	rc = i2o_driver_init();
+	if (rc)
 		goto exit;
 
-	if ((rc = i2o_exec_init()))
+	rc = i2o_exec_init();
+	if (rc)
 		goto driver_exit;
 
-	if ((rc = i2o_pci_init()))
+	rc = i2o_pci_init();
+	if (rc)
 		goto exec_exit;
 
 	return 0;
diff --git a/drivers/staging/i2o/pci.c b/drivers/staging/i2o/pci.c
index b3b8a61..49804c9 100644
--- a/drivers/staging/i2o/pci.c
+++ b/drivers/staging/i2o/pci.c
@@ -329,7 +329,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		return -ENODEV;
 	}
 
-	if ((rc = pci_enable_device(pdev))) {
+	rc = pci_enable_device(pdev);
+	if (rc) {
 		printk(KERN_WARNING "i2o: couldn't enable device %s\n",
 		       pci_name(pdev));
 		return rc;
@@ -410,7 +411,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 #endif
 	}
 
-	if ((rc = i2o_pci_alloc(c))) {
+	rc = i2o_pci_alloc(c);
+	if (rc) {
 		printk(KERN_ERR "%s: DMA / IO allocation for I2O controller "
 		       "failed\n", c->name);
 		goto free_controller;
@@ -422,7 +424,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		goto free_pci;
 	}
 
-	if ((rc = i2o_iop_add(c)))
+	rc = i2o_iop_add(c);
+	if (rc)
 		goto uninstall;
 
 	if (i960)
-- 
1.9.1



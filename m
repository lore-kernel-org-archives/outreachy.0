X-GM-THRID: 6393347982886961152
X-Received: by 10.98.252.205 with SMTP id e196mr554480pfh.26.1488567329050;
        Fri, 03 Mar 2017 10:55:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls9956484otb.17.gmail; Fri, 03 Mar
 2017 10:55:28 -0800 (PST)
X-Received: by 10.129.56.136 with SMTP id f130mr1746119ywa.150.1488567328670;
        Fri, 03 Mar 2017 10:55:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g82si201059pfb.5.2017.03.03.10.55.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:55:28 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so13429375pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OY3hzy02xIla2UugqalzC51E1sRPKMtO2botmqLBr0c=;
        b=DHM9fTHW206lsM/Z9HLaz5CaQzAaDuLVX/M2Vb/9SolsJWXz3CynBRGHz3acGh8Cl/
         VHiAzc22VmzJqSSv5G8Q21Ku4MHY783FpYc2wA5hkoqOFbymguCGHF0W+p66wc+Mwvw3
         GHT77fSgZMK0oB3eP3y55BCqaSVsoKWYCJ7wXsAXU2Sg1wq2dVaNzZkGY9MxeVjCUGE5
         3f6Rrvm2bZEPHtoEBlvEw1Bt5GK8WvJfbW9Tfk4jImOeKfTY0pzTNO246vNyHah2pHPe
         FsLjQIpbNHe2cyOmjsZbeL964/k2wbZ4sKhceuxNKXNKmeUoeDWA1s4HjuIIk/b+jXDi
         tfFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OY3hzy02xIla2UugqalzC51E1sRPKMtO2botmqLBr0c=;
        b=ZhGFQbH9p8AkQYDg7Et/puj2mSKEeQ4oeVXL0udgGFGwrEbI5nn5Z4H0ZYXvMyoqb3
         3k8gg7yHQw6YuSnWysvBSu8fqZ6zvV3HbQd1HZ/WOwg/j+kjRm9Ikl9ObwWhEBRN8Nbc
         xrKkua94rywlsV0xU76yGtvOOl3KLL3kz/rENs/6HoruYq5bkgMe8Fys03viEbn+vwhQ
         VX0TLr3iW0zqFTissp0NniwUvmdsZukM9kRdDET23tdcUe1Jn5ggAXjddfE4D4PeoYSN
         KQe5Ofp2bQxkD0I230p77JIDW/a+0NOpabuR4hWVeATXof4CXgopU80TxoDLGR28ypgu
         xr5w==
X-Gm-Message-State: AMke39lw9rPv8Ms9dfF4t9r5YXg2dkTXoRpqPo7AOSvvTMujEXQd6u5h/R9LwPz+DeAorw==
X-Received: by 10.84.137.106 with SMTP id 97mr6422966plm.68.1488567328412;
        Fri, 03 Mar 2017 10:55:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g29sm9900419pfg.37.2017.03.03.10.55.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 10:55:27 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: media: Clean up tests if NULL returned on failure
Date: Sat,  4 Mar 2017 00:25:18 +0530
Message-Id: <1488567319-25989-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488567319-25989-1-git-send-email-singhalsimran0@gmail.com>
References: <1488567319-25989-1-git-send-email-singhalsimran0@gmail.com>

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:
@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c | 2 +-
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c      | 4 ++--
 drivers/staging/media/lirc/lirc_zilog.c                   | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c
index 20e581e..e5a7407 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c
@@ -1100,7 +1100,7 @@ int atomisp_videobuf_mmap_mapper(struct videobuf_queue *q,
 			continue;
 
 		map = kzalloc(sizeof(struct videobuf_mapping), GFP_KERNEL);
-		if (map == NULL) {
+		if (!map) {
 			mutex_unlock(&q->vb_lock);
 			return -ENOMEM;
 		}
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index 32109cd..bffe215 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -228,7 +228,7 @@ static int vpfe_enable_clock(struct vpfe_device *vpfe_dev)
 
 	vpfe_dev->clks = kcalloc(vpfe_cfg->num_clocks,
 				 sizeof(*vpfe_dev->clks), GFP_KERNEL);
-	if (vpfe_dev->clks == NULL)
+	if (!vpfe_dev->clks)
 		return -ENOMEM;
 
 	for (i = 0; i < vpfe_cfg->num_clocks; i++) {
@@ -348,7 +348,7 @@ static int register_i2c_devices(struct vpfe_device *vpfe_dev)
 	vpfe_dev->sd =
 		  kcalloc(num_subdevs, sizeof(struct v4l2_subdev *),
 			  GFP_KERNEL);
-	if (vpfe_dev->sd == NULL)
+	if (!vpfe_dev->sd)
 		return -ENOMEM;
 
 	for (i = 0, k = 0; i < num_subdevs; i++) {
diff --git a/drivers/staging/media/lirc/lirc_zilog.c b/drivers/staging/media/lirc/lirc_zilog.c
index 34aac3e..4836182 100644
--- a/drivers/staging/media/lirc/lirc_zilog.c
+++ b/drivers/staging/media/lirc/lirc_zilog.c
@@ -1475,7 +1475,7 @@ static int ir_probe(struct i2c_client *client, const struct i2c_device_id *id)
 	ir = get_ir_device_by_adapter(adap);
 	if (ir == NULL) {
 		ir = kzalloc(sizeof(struct IR), GFP_KERNEL);
-		if (ir == NULL) {
+		if (!ir) {
 			ret = -ENOMEM;
 			goto out_no_ir;
 		}
@@ -1515,7 +1515,7 @@ static int ir_probe(struct i2c_client *client, const struct i2c_device_id *id)
 
 		/* Set up a struct IR_tx instance */
 		tx = kzalloc(sizeof(struct IR_tx), GFP_KERNEL);
-		if (tx == NULL) {
+		if (!tx) {
 			ret = -ENOMEM;
 			goto out_put_xx;
 		}
@@ -1559,7 +1559,7 @@ static int ir_probe(struct i2c_client *client, const struct i2c_device_id *id)
 
 		/* Set up a struct IR_rx instance */
 		rx = kzalloc(sizeof(struct IR_rx), GFP_KERNEL);
-		if (rx == NULL) {
+		if (!rx) {
 			ret = -ENOMEM;
 			goto out_put_xx;
 		}
-- 
2.7.4



X-GM-THRID: 6261584556721176576
X-Received: by 10.140.42.43 with SMTP id b40mr15338352qga.9.1457888804175;
        Sun, 13 Mar 2016 10:06:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.32 with SMTP id w32ls1700654ioi.38.gmail; Sun, 13 Mar
 2016 10:06:43 -0700 (PDT)
X-Received: by 10.66.141.102 with SMTP id rn6mr15334046pab.26.1457888803769;
        Sun, 13 Mar 2016 10:06:43 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id i133si1012251ywe.7.2016.03.13.10.06.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:06:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id q184so5388046qkb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RM+wEORc3yCkjyvuAty2XecPZgbiZUfWdtUqRF7F8fg=;
        b=dqJ2R52EKWLnxQW0C7phgox1XQaXxgEH4xtaslB7s9WrFSzF8bt2msWGT4sy4J7BZJ
         Ux9w089WSX5GKr0RzkRqtjwM0lYm+ykJ2JrmpAOL+7Cw5h9NW/NRj26Jlwhz6G2d3QxY
         NeB1Cp0vhOdbmZ4o8M63X3XyTObSLIJt85EN6k/Zv2vRspYvh+c+TLFI0PLjWioWAzC0
         ZVTlboc+EC4j9rhSLW/15PSqFAUAB0+XRlO9RU03gsfPLZ04idmVitBsFQqLvXixey8Z
         TvCQG01eqBe1NjG4Xts6LqZkBMnrFjHoUAnypTCpUB4wW82WvpBh9Kn2wHY3Toxt1yjU
         rnyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RM+wEORc3yCkjyvuAty2XecPZgbiZUfWdtUqRF7F8fg=;
        b=L1Qja5tQRxSwoyCeM5iBoG6r9u4tXcSNQH3aoEcNl5+BDnNs2ty1B3XB9CDlaGyrVV
         6LPpJVdMafhS+FHMT9tq4uZTShybXl/C4q3MToRhxFnqx0MiPvz8PTrS6MTSIV7EeJVS
         Q0U/z9uL9me+VZ+nX88H7P4cZrjRDJWjMK36Y78jFHaG+zMuJU3TcECQAD3EVwhBfOFW
         2nHUrD550MU+dTXnrdWuQGDWjNlVNqR955dAGJwBgInqaKsc06YEx7Nn7c/0ZZ9ODo8s
         OAuEGt0WMKRXBwHl0onVSRNh8VdoEH1c4G8r5+YerH1NK8s75ETqXOPWQG3rL/uyiXMo
         Fw5g==
X-Gm-Message-State: AD7BkJLB2805YWKa+Ud1R+hrELEASxedj/pzcAxpI+y5HcGoW1MOx1m8h/4FZPW+PZDSgQ==
X-Received: by 10.55.26.86 with SMTP id a83mr24421107qka.79.1457888803382;
        Sun, 13 Mar 2016 10:06:43 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id o67sm8455178qho.12.2016.03.13.10.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:06:42 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:06:39 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/8] staging: dgnc: renamed SerialDriver to avoid camelcase
Message-ID: <481038d6779439551739ac3e5db6e56ddaeb5756.1457888423.git.juliana.orod@gmail.com>
References: <cover.1457888423.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457888423.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch renames SerialDriver variable in
dgnc_driver.h and its calls in dgnc_tty.c
that were causing CamelCase checkpatch issues.

CHECK: Avoid CamelCase: <SerialDriver>
+       struct tty_driver       SerialDriver;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h |  2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 62 +++++++++++++++++++-------------------
 2 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index ce7cd9b..483d1d9 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -205,7 +205,7 @@ struct dgnc_board {
 						 * to our channels.
 						 */
 
-	struct tty_driver	SerialDriver;
+	struct tty_driver	serial_driver;
 	char		SerialName[200];
 	struct tty_driver	PrintDriver;
 	char		PrintName[200];
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index b79eab0..bad4f61 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -178,20 +178,20 @@ int dgnc_tty_register(struct dgnc_board *brd)
 {
 	int rc = 0;
 
-	brd->SerialDriver.magic = TTY_DRIVER_MAGIC;
+	brd->serial_driver.magic = TTY_DRIVER_MAGIC;
 
 	snprintf(brd->SerialName, MAXTTYNAMELEN, "tty_dgnc_%d_", brd->boardnum);
 
-	brd->SerialDriver.name = brd->SerialName;
-	brd->SerialDriver.name_base = 0;
-	brd->SerialDriver.major = 0;
-	brd->SerialDriver.minor_start = 0;
-	brd->SerialDriver.num = brd->maxports;
-	brd->SerialDriver.type = TTY_DRIVER_TYPE_SERIAL;
-	brd->SerialDriver.subtype = SERIAL_TYPE_NORMAL;
-	brd->SerialDriver.init_termios = DgncDefaultTermios;
-	brd->SerialDriver.driver_name = DRVSTR;
-	brd->SerialDriver.flags = (TTY_DRIVER_REAL_RAW |
+	brd->serial_driver.name = brd->SerialName;
+	brd->serial_driver.name_base = 0;
+	brd->serial_driver.major = 0;
+	brd->serial_driver.minor_start = 0;
+	brd->serial_driver.num = brd->maxports;
+	brd->serial_driver.type = TTY_DRIVER_TYPE_SERIAL;
+	brd->serial_driver.subtype = SERIAL_TYPE_NORMAL;
+	brd->serial_driver.init_termios = DgncDefaultTermios;
+	brd->serial_driver.driver_name = DRVSTR;
+	brd->serial_driver.flags = (TTY_DRIVER_REAL_RAW |
 				   TTY_DRIVER_DYNAMIC_DEV |
 				   TTY_DRIVER_HARDWARE_BREAK);
 
@@ -199,28 +199,28 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	 * The kernel wants space to store pointers to
 	 * tty_struct's and termios's.
 	 */
-	brd->SerialDriver.ttys = kcalloc(brd->maxports,
-					 sizeof(*brd->SerialDriver.ttys),
+	brd->serial_driver.ttys = kcalloc(brd->maxports,
+					 sizeof(*brd->serial_driver.ttys),
 					 GFP_KERNEL);
-	if (!brd->SerialDriver.ttys)
+	if (!brd->serial_driver.ttys)
 		return -ENOMEM;
 
-	kref_init(&brd->SerialDriver.kref);
-	brd->SerialDriver.termios = kcalloc(brd->maxports,
-					    sizeof(*brd->SerialDriver.termios),
+	kref_init(&brd->serial_driver.kref);
+	brd->serial_driver.termios = kcalloc(brd->maxports,
+					    sizeof(*brd->serial_driver.termios),
 					    GFP_KERNEL);
-	if (!brd->SerialDriver.termios)
+	if (!brd->serial_driver.termios)
 		return -ENOMEM;
 
 	/*
 	 * Entry points for driver.  Called by the kernel from
 	 * tty_io.c and n_tty.c.
 	 */
-	tty_set_operations(&brd->SerialDriver, &dgnc_tty_ops);
+	tty_set_operations(&brd->serial_driver, &dgnc_tty_ops);
 
 	if (!brd->dgnc_Major_Serial_Registered) {
 		/* Register tty devices */
-		rc = tty_register_driver(&brd->SerialDriver);
+		rc = tty_register_driver(&brd->serial_driver);
 		if (rc < 0) {
 			dev_dbg(&brd->pdev->dev,
 				"Can't register tty device (%d)\n", rc);
@@ -239,7 +239,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 
 	brd->PrintDriver.name = brd->PrintName;
 	brd->PrintDriver.name_base = 0;
-	brd->PrintDriver.major = brd->SerialDriver.major;
+	brd->PrintDriver.major = brd->serial_driver.major;
 	brd->PrintDriver.minor_start = 0x80;
 	brd->PrintDriver.num = brd->maxports;
 	brd->PrintDriver.type = TTY_DRIVER_TYPE_SERIAL;
@@ -285,8 +285,8 @@ int dgnc_tty_register(struct dgnc_board *brd)
 		brd->dgnc_Major_TransparentPrint_Registered = true;
 	}
 
-	dgnc_BoardsByMajor[brd->SerialDriver.major] = brd;
-	brd->dgnc_Serial_Major = brd->SerialDriver.major;
+	dgnc_BoardsByMajor[brd->serial_driver.major] = brd;
+	brd->dgnc_Serial_Major = brd->serial_driver.major;
 	brd->dgnc_TransparentPrint_Major = brd->PrintDriver.major;
 
 	return rc;
@@ -364,7 +364,7 @@ int dgnc_tty_init(struct dgnc_board *brd)
 		{
 			struct device *classp;
 
-			classp = tty_register_device(&brd->SerialDriver, i,
+			classp = tty_register_device(&brd->serial_driver, i,
 						     &ch->ch_bd->pdev->dev);
 			ch->ch_tun.un_sysfs = classp;
 			dgnc_create_tty_sysfs(&ch->ch_tun, classp);
@@ -408,15 +408,15 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 	int i = 0;
 
 	if (brd->dgnc_Major_Serial_Registered) {
-		dgnc_BoardsByMajor[brd->SerialDriver.major] = NULL;
+		dgnc_BoardsByMajor[brd->serial_driver.major] = NULL;
 		brd->dgnc_Serial_Major = 0;
 		for (i = 0; i < brd->nasync; i++) {
 			if (brd->channels[i])
 				dgnc_remove_tty_sysfs(brd->channels[i]->
 						      ch_tun.un_sysfs);
-			tty_unregister_device(&brd->SerialDriver, i);
+			tty_unregister_device(&brd->serial_driver, i);
 		}
-		tty_unregister_driver(&brd->SerialDriver);
+		tty_unregister_driver(&brd->serial_driver);
 		brd->dgnc_Major_Serial_Registered = false;
 	}
 
@@ -433,10 +433,10 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 		brd->dgnc_Major_TransparentPrint_Registered = false;
 	}
 
-	kfree(brd->SerialDriver.ttys);
-	brd->SerialDriver.ttys = NULL;
-	kfree(brd->SerialDriver.termios);
-	brd->SerialDriver.termios = NULL;
+	kfree(brd->serial_driver.ttys);
+	brd->serial_driver.ttys = NULL;
+	kfree(brd->serial_driver.termios);
+	brd->serial_driver.termios = NULL;
 	kfree(brd->PrintDriver.ttys);
 	brd->PrintDriver.ttys = NULL;
 	kfree(brd->PrintDriver.termios);
-- 
2.7.2



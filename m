X-GM-THRID: 6261584556721176576
X-Received: by 10.31.153.75 with SMTP id b72mr15202515vke.0.1457890974488;
        Sun, 13 Mar 2016 10:42:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.104 with SMTP id x8ls632489igr.18.gmail; Sun, 13 Mar
 2016 10:42:54 -0700 (PDT)
X-Received: by 10.107.16.34 with SMTP id y34mr15318419ioi.4.1457890974245;
        Sun, 13 Mar 2016 10:42:54 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id y131si1160767ywc.0.2016.03.13.10.42.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:42:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id t4so10776894qge.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V5FviZ1GYdIm5MxfxpF7vbIAu1kQr3pu4hqy624u+js=;
        b=gLUqeSFBuL8aPDxCNJ0UiZnSipR2lTdwL127FjhmOXpjjyQmpuKgLTO9HmRcQ+VTOQ
         TemEdM1dS9UkXOgxEvbC15TbneUGIm8aDFxC6n+iSiMNnkDcfGjg7DahYfdpSti+Vh4r
         yl+7LtK9qWdub8mU0KH4mXwBUWKQrgzfjS+pAaPGk2pYhWbeAQWOduDyeCBulxfvBdE4
         1nANq3dMoasBHLBiWnmTBlxYaijeVp9C8A+MYnc/APn9S6AVBybq1cmM5VbeVOX047Nv
         5mPrUJ6Gv3NwMn6Bvq+2gWW8UeJDNYshuPXFQkSTFtlvnZwdJzzl43kx9fuszFUlkDxX
         kp+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V5FviZ1GYdIm5MxfxpF7vbIAu1kQr3pu4hqy624u+js=;
        b=iRfkhN8Fv2VTw9++DZiufKlW4eYtjUD+JzN6Yl645PNw9DbRvSIjakXrYpMwkysGmN
         2wm5oWS53AytEhcZTQGFBaERjl0JkUTGT4p+6Anc4BCElOnNbvKX6D8v4UGEodrRBcO1
         8rZ4jTazHS1o6bUruwgxKOmq03S+rbZZfAl3idMJzx38GOfrz2BZtFniUFGQvRHfERcA
         jJEuJn/iEnL+EL21YZTzTGdt9Eldvzechy/1FFrVIHyhGGy0lJqxRTTUg7Ec+H9zJ9eA
         h/Ts4oKfEU/WK4I0zXEWf2a6gOKAZQqFpU6lmCgPj0uGYpXskTfe0Gcl4KbB0Np/uoQB
         9URA==
X-Gm-Message-State: AD7BkJJrNGSOy3zGT+1ev+5cTcWNSnXrv0oNM7FKRy3D+fEvUwuVd0qZI7r4GOHGWULNIw==
X-Received: by 10.140.239.66 with SMTP id k63mr26940419qhc.11.1457890973939;
        Sun, 13 Mar 2016 10:42:53 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id r16sm8502094qha.8.2016.03.13.10.42.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:42:53 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:42:51 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/8] staging: dgnc: renames PrintDriver variable to avoid
 camelcase
Message-ID: <2d3b5060f39a1ba72989ba586c5abc1378c71253.1457890698.git.juliana.orod@gmail.com>
References: <cover.1457890698.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457890698.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes checkpatch issues by renaming
PrintDriver variable to avoid camelcase.

CHECK: Avoid CamelCase: <PrintDriver>
+       struct tty_driver       PrintDriver;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h |  2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 58 +++++++++++++++++++-------------------
 2 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 513a5ac..5bb69da 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -207,7 +207,7 @@ struct dgnc_board {
 
 	struct tty_driver	serial_driver;
 	char		serial_name[200];
-	struct tty_driver	PrintDriver;
+	struct tty_driver	print_driver;
 	char		print_name[200];
 
 	bool		dgnc_Major_Serial_Registered;
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 8a68fd8..b79566a 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -235,19 +235,19 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	 * again, separately so we don't get the LD confused about what major
 	 * we are when we get into the dgnc_tty_open() routine.
 	 */
-	brd->PrintDriver.magic = TTY_DRIVER_MAGIC;
+	brd->print_driver.magic = TTY_DRIVER_MAGIC;
 	snprintf(brd->print_name, MAXTTYNAMELEN, "pr_dgnc_%d_", brd->boardnum);
 
-	brd->PrintDriver.name = brd->print_name;
-	brd->PrintDriver.name_base = 0;
-	brd->PrintDriver.major = brd->serial_driver.major;
-	brd->PrintDriver.minor_start = 0x80;
-	brd->PrintDriver.num = brd->maxports;
-	brd->PrintDriver.type = TTY_DRIVER_TYPE_SERIAL;
-	brd->PrintDriver.subtype = SERIAL_TYPE_NORMAL;
-	brd->PrintDriver.init_termios = DgncDefaultTermios;
-	brd->PrintDriver.driver_name = DRVSTR;
-	brd->PrintDriver.flags = (TTY_DRIVER_REAL_RAW |
+	brd->print_driver.name = brd->print_name;
+	brd->print_driver.name_base = 0;
+	brd->print_driver.major = brd->serial_driver.major;
+	brd->print_driver.minor_start = 0x80;
+	brd->print_driver.num = brd->maxports;
+	brd->print_driver.type = TTY_DRIVER_TYPE_SERIAL;
+	brd->print_driver.subtype = SERIAL_TYPE_NORMAL;
+	brd->print_driver.init_termios = DgncDefaultTermios;
+	brd->print_driver.driver_name = DRVSTR;
+	brd->print_driver.flags = (TTY_DRIVER_REAL_RAW |
 				  TTY_DRIVER_DYNAMIC_DEV |
 				  TTY_DRIVER_HARDWARE_BREAK);
 
@@ -256,27 +256,27 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	 * tty_struct's and termios's.  Must be separated from
 	 * the Serial Driver so we don't get confused
 	 */
-	brd->PrintDriver.ttys = kcalloc(brd->maxports,
-					sizeof(*brd->PrintDriver.ttys),
+	brd->print_driver.ttys = kcalloc(brd->maxports,
+					sizeof(*brd->print_driver.ttys),
 					GFP_KERNEL);
-	if (!brd->PrintDriver.ttys)
+	if (!brd->print_driver.ttys)
 		return -ENOMEM;
-	kref_init(&brd->PrintDriver.kref);
-	brd->PrintDriver.termios = kcalloc(brd->maxports,
-					   sizeof(*brd->PrintDriver.termios),
+	kref_init(&brd->print_driver.kref);
+	brd->print_driver.termios = kcalloc(brd->maxports,
+					   sizeof(*brd->print_driver.termios),
 					   GFP_KERNEL);
-	if (!brd->PrintDriver.termios)
+	if (!brd->print_driver.termios)
 		return -ENOMEM;
 
 	/*
 	 * Entry points for driver.  Called by the kernel from
 	 * tty_io.c and n_tty.c.
 	 */
-	tty_set_operations(&brd->PrintDriver, &dgnc_tty_ops);
+	tty_set_operations(&brd->print_driver, &dgnc_tty_ops);
 
 	if (!brd->dgnc_Major_TransparentPrint_Registered) {
 		/* Register Transparent Print devices */
-		rc = tty_register_driver(&brd->PrintDriver);
+		rc = tty_register_driver(&brd->print_driver);
 		if (rc < 0) {
 			dev_dbg(&brd->pdev->dev,
 				"Can't register Transparent Print device(%d)\n",
@@ -288,7 +288,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 
 	dgnc_BoardsByMajor[brd->serial_driver.major] = brd;
 	brd->dgnc_Serial_Major = brd->serial_driver.major;
-	brd->dgnc_TransparentPrint_Major = brd->PrintDriver.major;
+	brd->dgnc_TransparentPrint_Major = brd->print_driver.major;
 
 	return rc;
 }
@@ -370,7 +370,7 @@ int dgnc_tty_init(struct dgnc_board *brd)
 			ch->ch_tun.un_sysfs = classp;
 			dgnc_create_tty_sysfs(&ch->ch_tun, classp);
 
-			classp = tty_register_device(&brd->PrintDriver, i,
+			classp = tty_register_device(&brd->print_driver, i,
 						     &ch->ch_bd->pdev->dev);
 			ch->ch_pun.un_sysfs = classp;
 			dgnc_create_tty_sysfs(&ch->ch_pun, classp);
@@ -422,15 +422,15 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 	}
 
 	if (brd->dgnc_Major_TransparentPrint_Registered) {
-		dgnc_BoardsByMajor[brd->PrintDriver.major] = NULL;
+		dgnc_BoardsByMajor[brd->print_driver.major] = NULL;
 		brd->dgnc_TransparentPrint_Major = 0;
 		for (i = 0; i < brd->nasync; i++) {
 			if (brd->channels[i])
 				dgnc_remove_tty_sysfs(brd->channels[i]->
 						      ch_pun.un_sysfs);
-			tty_unregister_device(&brd->PrintDriver, i);
+			tty_unregister_device(&brd->print_driver, i);
 		}
-		tty_unregister_driver(&brd->PrintDriver);
+		tty_unregister_driver(&brd->print_driver);
 		brd->dgnc_Major_TransparentPrint_Registered = false;
 	}
 
@@ -438,10 +438,10 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 	brd->serial_driver.ttys = NULL;
 	kfree(brd->serial_driver.termios);
 	brd->serial_driver.termios = NULL;
-	kfree(brd->PrintDriver.ttys);
-	brd->PrintDriver.ttys = NULL;
-	kfree(brd->PrintDriver.termios);
-	brd->PrintDriver.termios = NULL;
+	kfree(brd->print_driver.ttys);
+	brd->print_driver.ttys = NULL;
+	kfree(brd->print_driver.termios);
+	brd->print_driver.termios = NULL;
 }
 
 /*=======================================================================
-- 
2.7.2



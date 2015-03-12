X-GM-THRID: 8004958158848
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5487500d72398ce3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.221.65 with SMTP id qc1mr6694410wjc.7.1426193391489;
        Thu, 12 Mar 2015 13:49:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.129 with SMTP id r1ls21093wia.43.canary; Thu, 12 Mar
 2015 13:49:51 -0700 (PDT)
X-Received: by 10.194.11.70 with SMTP id o6mr6704826wjb.6.1426193391146;
        Thu, 12 Mar 2015 13:49:51 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bz6si985837wib.3.2015.03.12.13.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 13:49:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwl15 with SMTP id l15so980342wiw.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 13:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yst1Rd1WXyFDW76GQfDsFpnaPBOWC+A5vD20nj7FyN0=;
        b=E8yvwIDETNGsnnSJlbVX2Bhrd1Y52JjuSIrOGfITYGBNPTrZx3d1Md3ccUlnMh4Vld
         dUsbK2eU9lEeQ3H7OS0uP9ukczeFBRKp5qXNhkP2+igdi3Tch9j+CpUpi0kkMZ8zBgX3
         Q87BDDUCsX1uEF4mvzaZmH9GjFYYpP7wf+OTWaOKhruju9ZUkM2h8RprEICxU8jALgBd
         4v6S50SQRv+YzHhuvl+BhQr3QPag5AC7/ziIT8c2cKVvXjazv0fi7OCEu+tMdnCwMZ0/
         9BVcq8DVk70AtPM+1NwDKG4WS7UriRrX5PC+w5aJUBJJ3VHgyOsYW7lO8Y9HyA9hMiFg
         qU1A==
X-Received: by 10.194.59.199 with SMTP id b7mr91979758wjr.26.1426193391045;
        Thu, 12 Mar 2015 13:49:51 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id cn10sm12309840wib.15.2015.03.12.13.49.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 13:49:50 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: media: Compile driver as a module
Date: Thu, 12 Mar 2015 21:49:41 +0100
Message-Id: <1426193381-9039-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch changes Kconfig file so that driver could be compiled as
a module. Changes have also been made in TODO list by removing this
task.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/media/omap4iss/Kconfig | 2 +-
 drivers/staging/media/omap4iss/TODO    | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/omap4iss/Kconfig b/drivers/staging/media/omap4iss/Kconfig
index b78643f..32403cc 100644
--- a/drivers/staging/media/omap4iss/Kconfig
+++ b/drivers/staging/media/omap4iss/Kconfig
@@ -1,5 +1,5 @@
 config VIDEO_OMAP4
-	bool "OMAP 4 Camera support"
+	tristate "OMAP 4 Camera support"
 	depends on VIDEO_V4L2=y && VIDEO_V4L2_SUBDEV_API && I2C=y && ARCH_OMAP4
 	depends on HAS_DMA
 	select VIDEOBUF2_DMA_CONTIG
diff --git a/drivers/staging/media/omap4iss/TODO b/drivers/staging/media/omap4iss/TODO
index fcde888..4d220ef 100644
--- a/drivers/staging/media/omap4iss/TODO
+++ b/drivers/staging/media/omap4iss/TODO
@@ -1,4 +1,3 @@
-* Make the driver compile as a module
 * Fix FIFO/buffer overflows and underflows
 * Replace dummy resizer code with a real implementation
 * Fix checkpatch errors and warnings
-- 
1.9.1



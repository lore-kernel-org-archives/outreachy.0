X-GM-THRID: 4266871750656
X-Received: by 10.180.182.44 with SMTP id eb12mr65504wic.4.1424995171572;
        Thu, 26 Feb 2015 15:59:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.131 with SMTP id fo3ls11902wib.39.canary; Thu, 26 Feb
 2015 15:59:31 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr64640wid.1.1424995171231;
        Thu, 26 Feb 2015 15:59:31 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id i7si19577wif.0.2015.02.26.15.59.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:59:31 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id l61so15898879wev.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 15:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xfL/Clnl1Le3hvDWl3ATe43rbispW2t6OLYXWHB0p/s=;
        b=dyaPFnLV35qthAawi7O2/qvRYkdWbghCNO7axuYzZfGeGPfLQ9uhkCScFKrPqM24Pf
         pjZKlmA15WiQqDjF68letcotTabWN1v+F2afTnQdX+8Vhug1IAlun3F9yiWc4wJ5/gK/
         XefPU7lKr5tWhQ+XFxoADUAQkhwT3QP0qJFi3cYhWlww2MXiqZGHbmc6A3c1ubzvTTQy
         v1Ohamv7cL2lS04JRnQ8SI1UE787zcUhAxNU++030TuhQPZq0wQ56FRi9jMrkp3TgUES
         MHyujh8lstn6XVrUX5hSE7SNAyLsCvth/kFB49S1szmMnwkkt872KnruvhDrsY8M0Q7l
         RipQ==
X-Received: by 10.194.61.65 with SMTP id n1mr22149237wjr.53.1424995171137;
        Thu, 26 Feb 2015 15:59:31 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id lu13sm420626wic.10.2015.02.26.15.59.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:59:30 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 350146337D; Fri, 27 Feb 2015 02:59:26 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [RESEND PATCH] Staging: nvec: Add paragraph to describe kconfig symbol
Date: Fri, 27 Feb 2015 02:59:23 +0300
Message-Id: <1424995163-1276-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch updates kconfig with paragraphs that describe config symbol
fully. Issue addressed by checkpatch.pl warning.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/nvec/Kconfig | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/staging/nvec/Kconfig b/drivers/staging/nvec/Kconfig
index 9475e20..e3a89fb 100644
--- a/drivers/staging/nvec/Kconfig
+++ b/drivers/staging/nvec/Kconfig
@@ -6,6 +6,9 @@ config MFD_NVEC
 	    Say Y here to enable support for a nVidia compliant embedded
 	    controller.
 
+	    To compile this driver as a module, say M here: the module will be
+            called mfd-nvec
+
 config KEYBOARD_NVEC
 	tristate "Keyboard on nVidia compliant EC"
 	depends on MFD_NVEC && INPUT
@@ -13,6 +16,9 @@ config KEYBOARD_NVEC
 	  Say Y here to enable support for a keyboard connected to
 	  a nVidia compliant embedded controller.
 
+	  To compile this driver as a module, say M here: the module will be
+          called keyboard-nvec
+
 config SERIO_NVEC_PS2
 	tristate "PS2 on nVidia EC"
 	depends on MFD_NVEC && SERIO
@@ -20,6 +26,10 @@ config SERIO_NVEC_PS2
 	  Say Y here to enable support for a Touchpad / Mouse connected
 	  to a nVidia compliant embedded controller.
 
+	  To compile this driver as a module, say M here: the module will be
+          called serio-nvec-ps2
+
+
 config NVEC_POWER
 	tristate "NVEC charger and battery"
 	depends on MFD_NVEC && POWER_SUPPLY
@@ -27,9 +37,17 @@ config NVEC_POWER
 	  Say Y to enable support for battery and charger interface for
 	  nVidia compliant embedded controllers.
 
+	  To compile this driver as a module, say M here: the module will be
+          called nvec-power
+
+
 config NVEC_PAZ00
 	tristate "Support for OEM specific functions on Compal PAZ00 based devices"
 	depends on MFD_NVEC && LEDS_CLASS
 	help
 	  Say Y to enable control of the yellow side leds on Compal PAZ00 based
 	  devices, e.g. Toshbia AC100 and Dynabooks AZ netbooks.
+
+	  To compile this driver as a module, say M here: the module will be
+          called nvec-paz00
+
-- 
1.9.1



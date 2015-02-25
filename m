X-GM-THRID: 3420707618816
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,139a8a3a4636341b,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.161.9 with SMTP id xo9mr612064lbb.7.1424880091487;
        Wed, 25 Feb 2015 08:01:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.101 with SMTP id d5ls1025165wie.53.canary; Wed, 25 Feb
 2015 08:01:31 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr605247wjb.6.1424880091063;
        Wed, 25 Feb 2015 08:01:31 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id l8si1322011wia.0.2015.02.25.08.01.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 08:01:31 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id l15so34401668wiw.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 08:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xfL/Clnl1Le3hvDWl3ATe43rbispW2t6OLYXWHB0p/s=;
        b=qvWeL+m2Es3X9Lkr28H42RWwmvZIRAT0kcPvwsSafOJRryosiud44bf2CaVttE3Jf3
         kpxBsLUmhSc0nN+vvrFjLkdFJCk9UgiW1gjxb3mR/SjWmHFHoCtcFSAZD6zQ+Fvm1HBC
         E0kZSiwWVf+rvM1h0ye9qFo0HdMue+vHiPJCShrgvPxMFkKMQXM6+Vsa16axMNaHOT77
         +qWBGhB0QWhv2Ul7JWwQNCI33GkqEy2ePwEOkJtvSDKmTBdv/SX5GQkSMUcOQatPv5PC
         l3nTpxT+90mxBneU+cBjR1rKadVJjyWO4q1S1aytaDq2EBtT+84Oto5t72Efa3fxty74
         JNeA==
X-Received: by 10.180.9.171 with SMTP id a11mr41178814wib.60.1424880090962;
        Wed, 25 Feb 2015 08:01:30 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.177])
        by mx.google.com with ESMTPSA id a13sm65418247wjx.30.2015.02.25.08.01.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 08:01:30 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 8D2DB63365; Wed, 25 Feb 2015 18:50:22 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: nvec: Add paragraph to describe kconfig symbol
Date: Wed, 25 Feb 2015 18:50:20 +0300
Message-Id: <1424879420-3997-1-git-send-email-hamohammed.sa@gmail.com>
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



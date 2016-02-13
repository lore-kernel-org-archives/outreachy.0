X-GM-THRID: 6250819727244918784
X-Received: by 10.98.1.85 with SMTP id 82mr7418851pfb.1.1455382380485;
        Sat, 13 Feb 2016 08:53:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.134 with SMTP id s6ls427860igh.19.canary; Sat, 13 Feb
 2016 08:53:00 -0800 (PST)
X-Received: by 10.50.13.101 with SMTP id g5mr3752522igc.6.1455382379995;
        Sat, 13 Feb 2016 08:52:59 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id w126si1330490ywe.6.2016.02.13.08.52.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 08:52:59 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id b67so84264612qgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 08:52:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FqXA4vCgrAA5ALY+X0hiQjswgz6PUZx8O4P5TEYFQA0=;
        b=j9SZW/IyYtFGH3ywMNh2iz3qtaWNdSj35oFRoOPxqf9iXwT8Li9DHzeoDrUBx1jE/d
         UdHn5OUN+46H9wxqIFbpYrYoF9G0NvH07s8+lUQsXy1ZtUZLNhxkN9Zi+Nc/INcNqwX1
         swM0UsNylf0GMYybau7zZDUglMsrdG8itZf9VXhfW+8IMAe9gtHjcqzL/vJrciNB6hg8
         ZhiBcKJvpqNJbCoIy0bP510walNMl6UfBK0cGqFKDyq6yfZ4Wk3Vm2susM8TaWn6Qgsq
         CP4VJZPg9RvuIw7gsSwdrM26fAg3s6A9EjztEkKAajQas7eSXu9rdj2Et1/LzDXMlC3W
         yRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=FqXA4vCgrAA5ALY+X0hiQjswgz6PUZx8O4P5TEYFQA0=;
        b=T+M2YXSsrrDKgaR63s0jgL/qgwmPLMpAFz/x1AItV0hI6LHC8SZhc5Jp2PjxHNjsJA
         7wBskQlqBJpZcJVuRl7d2zDnDkChE1IfW1Z7Fsh8a4Vpcw7S80g1V3qYzTPsfeG+TjP3
         hMPbNfHO6cZZ6G4Cqr1JYVA9Zx8GK100lj6CfJIPaMPvQsID3suuZYHe8ltOZBSjmbx5
         VtoctULDUAPIWAAmP2IrfEoQsyrsYVlPSU91uMLZvFQiW8KIgyo33IipbrPJouDYjlUn
         b27ASEx76aQweHoIES3BXzqNBWL4rFJCEk+Sv+jNRYDwPGajiRdnHZ5ztLmbqmfFS2iY
         yuAQ==
X-Gm-Message-State: AG10YOSJJE0hS1X22KFkXdpZqBBDkYpuHYSFHhD7XrFfeOnvE8x1LOMTUandkYOTV87gtw==
X-Received: by 10.140.223.9 with SMTP id t9mr10209159qhb.65.1455382379821;
        Sat, 13 Feb 2016 08:52:59 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id t72sm7805111qkl.11.2016.02.13.08.52.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 08:52:59 -0800 (PST)
Date: Sat, 13 Feb 2016 16:52:20 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: Fix comment style
Message-ID: <20160213215220.GA22041@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix comments to use trailing */ on separate lines and * on subsequent
lines.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/xgifb/vb_init.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 879a7e6..6d012bc 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -55,9 +55,10 @@ XGINew_GetXG20DRAMType(struct xgi_hw_device_info *HwDeviceExtension,
 		xgifb_reg_or(pVBInfo->P3d4, 0x4A, 0x80); /* Enable GPIOH read */
 		/* GPIOF 0:DVI 1:DVO */
 		data = xgifb_reg_get(pVBInfo->P3d4, 0x48);
-		/* HOTPLUG_SUPPORT */
-		/* for current XG20 & XG21, GPIOH is floating, driver will
-		 * fix DDR temporarily */
+		/* HOTPLUG_SUPPORT
+		 * for current XG20 & XG21, GPIOH is floating, driver will
+		 * fix DDR temporarily 
+		 */
 		/* DVI read GPIOH */
 		data &= 0x01; /* 1=DDRII, 0=DDR */
 		/* ~HOTPLUG_SUPPORT */
@@ -354,7 +355,8 @@ static void XGINew_DDR2_DefaultRegister(
 	unsigned long P3d4 = Port, P3c4 = Port - 0x10;
 
 	/* keep following setting sequence, each setting in
-	 * the same reg insert idle */
+	 * the same reg insert idle
+	 */
 	xgifb_reg_set(P3d4, 0x82, 0x77);
 	xgifb_reg_set(P3d4, 0x86, 0x00);
 	xgifb_reg_get(P3d4, 0x86); /* Insert read command for delay */
@@ -698,11 +700,11 @@ static void XGINew_CheckChannel(struct xgi_hw_device_info *HwDeviceExtension,
 		break;
 	case XG42:
 		/*
-		 XG42 SR14 D[3] Reserve
-		 D[2] = 1, Dual Channel
-		 = 0, Single Channel
-
-		 It's Different from Other XG40 Series.
+		 * XG42 SR14 D[3] Reserve
+		 * D[2] = 1, Dual Channel
+		 * = 0, Single Channel
+		 *
+		 * It's Different from Other XG40 Series.
 		 */
 		if (XGINew_CheckFrequence(pVBInfo) == 1) { /* DDRII, DDR2x */
 			pVBInfo->ram_bus = 32; /* 32 bits */
-- 
2.5.0



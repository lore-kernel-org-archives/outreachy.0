X-GM-THRID: 6396434872609538048
X-Received: by 10.129.124.138 with SMTP id x132mr13295657ywc.138.1489286048389;
        Sat, 11 Mar 2017 18:34:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.207 with SMTP id f76ls3513173ioi.6.gmail; Sat, 11 Mar
 2017 18:34:07 -0800 (PST)
X-Received: by 10.99.193.69 with SMTP id p5mr13362628pgi.163.1489286047678;
        Sat, 11 Mar 2017 18:34:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si2488948pfb.5.2017.03.11.18.34.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 18:34:07 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so15167718pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 18:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kfQIIaa/liRaeYYeROMS9C5Cb5EcWcHOVolL0T5JMns=;
        b=fL3sjkX8PYSaw8cbEcQ4dYJct0lBKWKqjpRkBzE+e6Jpzw+9kxMMFjY6YnpXv3uG2y
         Ma44YuVd6+4pXUgzmo3v5zVilT2t+3e611w3A/hNcvtuGzE1LJtuWwGqvHUVV4bO+RDk
         Wd0xo1iiGKCjdaTw8mlYunQZ09htz2jJvFEH/pBeWwewwPNspJwLwv4iL+RV2K1ojvMS
         JNFFuyonrcujYzsHQ8445oJIeQfPZEGmRwhh2TMpK03Cr1j6n7NNl4ivIgSCZAWrCBLC
         tflFTw5tUeiBhvBcUzCQr25ZqEqi3WI6Z0YANJNihXDUPv2rMqzvbB2bZ4O67cBYUSCI
         zCLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kfQIIaa/liRaeYYeROMS9C5Cb5EcWcHOVolL0T5JMns=;
        b=a5WuMDR4MXY9bSicm90lZ236UqQXTQBGm2fJXN9MZEV53jze1dzKv9FGDzpO/ylHi1
         u9+tJSlBaLrgqXX/s0YSatgOFjxzlGjqvt/TAqSxbiiUrR5HBGkf/VjdDQdY5PJ+EtSB
         6VwXkY1cPiGftA7zAg/LHxXs894GSWpgm6n0V8ULlBKgsa8d8XIDvYQCw0+zl9G/IerW
         kvN7SSB1yQK4GZS4VpuITR/08R5Y1sHIqmdjFrAJlgW+Sw6gkHnYIXcV6201qSmsXznR
         XctszmfvGKMYFDwMoHDx0vmU2q4FksjmBkuCRgxBwzfOtgCwgZqtmi7E0BkTs/u+PwVV
         isNQ==
X-Gm-Message-State: AMke39lS4+0pBdy+HZa/Iv6sNhTjzj+GOoaEOSjoqxSyihnEWqCbo6nWOwq4WcKJrG182Q==
X-Received: by 10.99.109.138 with SMTP id i132mr28745934pgc.11.1489286047360;
        Sat, 11 Mar 2017 18:34:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d2sm26429229pgf.35.2017.03.11.18.34.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 18:34:05 -0800 (PST)
Date: Sun, 12 Mar 2017 08:04:02 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Improved coding style
Message-ID: <20170312023402.GA10352@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

New variables are added to make the code more readable.
Also fixed the checkpatch issue: "Alignment should match open
parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/sm750fb/ddk750_mode.c | 112 ++++++++++++++++------------------
 1 file changed, 53 insertions(+), 59 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 45af806c8d55..7fd3c3f20c01 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -28,9 +28,9 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 	poke32(CRT_AUTO_CENTERING_TL, 0);
 
 	poke32(CRT_AUTO_CENTERING_BR,
-		(((y - 1) << CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT) &
-			CRT_AUTO_CENTERING_BR_BOTTOM_MASK) |
-		((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
+	       (((y - 1) << CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT) &
+		CRT_AUTO_CENTERING_BR_BOTTOM_MASK) |
+	       ((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
 
 	/*
 	 * Assume common fields in dispControl have been properly set before
@@ -72,43 +72,39 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 }
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(mode_parameter_t *pModeParam,
-						struct pll_value *pll)
+static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
 	unsigned int tmp, reg;
+	unsigned int cht = CRT_HORIZONTAL_TOTAL;
+	unsigned int cvt = CRT_VERTICAL_TOTAL;
+	unsigned int chs = CRT_HORIZONTAL_SYNC;
+	unsigned int cvs = CRT_VERTICAL_SYNC;
+	unsigned int chssm = CRT_HORIZONTAL_SYNC_START_MASK;
+	unsigned int cvssm = CRT_VERTICAL_SYNC_START_MASK;
+	unsigned int chtdem = CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
+	unsigned int cvtdem = CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
+	unsigned int chttm = CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
+	unsigned int cvttm = CRT_VERTICAL_TOTAL_TOTAL_MASK;
+	unsigned int chswm = CRT_HORIZONTAL_SYNC_WIDTH_MASK;
+	unsigned int cvshm = CRT_VERTICAL_SYNC_HEIGHT_MASK;
+	unsigned int phde = pModeParam->horizontal_display_end - 1;
+	unsigned int pvde = pModeParam->vertical_display_end - 1;
+	unsigned int phss = pModeParam->horizontal_sync_start - 1;
+	unsigned int pvss = pModeParam->vertical_sync_start - 1;
 
 	if (pll->clockType == SECONDARY_PLL) {
 		/* programe secondary pixel clock */
 		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
-		poke32(CRT_HORIZONTAL_TOTAL,
-			(((pModeParam->horizontal_total - 1) <<
-				CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
-				CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
-			((pModeParam->horizontal_display_end - 1) &
-				CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
-
-		poke32(CRT_HORIZONTAL_SYNC,
-			((pModeParam->horizontal_sync_width <<
-				CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
-				CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
-			((pModeParam->horizontal_sync_start - 1) &
-				CRT_HORIZONTAL_SYNC_START_MASK));
-
-		poke32(CRT_VERTICAL_TOTAL,
-			(((pModeParam->vertical_total - 1) <<
-				CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
-				CRT_VERTICAL_TOTAL_TOTAL_MASK) |
-			((pModeParam->vertical_display_end - 1) &
-				CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
-
-		poke32(CRT_VERTICAL_SYNC,
-			((pModeParam->vertical_sync_height <<
-				CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
-				CRT_VERTICAL_SYNC_HEIGHT_MASK) |
-			((pModeParam->vertical_sync_start - 1) &
-				CRT_VERTICAL_SYNC_START_MASK));
+
+		poke32(cht, (((pModeParam->horizontal_total - 1) << CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) & chttm) | (phde & chtdem));
+
+		poke32(chs, ((pModeParam->horizontal_sync_width << CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) & chswm) | (phss & chssm));
+
+		poke32(cvt, (((pModeParam->vertical_total - 1) << CRT_VERTICAL_TOTAL_TOTAL_SHIFT) & cvttm) | (pvde & cvtdem));
+
+		poke32(cvs, ((pModeParam->vertical_sync_height << CRT_VERTICAL_SYNC_HEIGHT_SHIFT) & cvshm) | (pvss & cvssm));
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
@@ -129,36 +125,34 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
 
 	} else if (pll->clockType == PRIMARY_PLL) {
 		unsigned int reserved;
+		unsigned int pht = PANEL_HORIZONTAL_TOTAL;
+		unsigned int pvt = PANEL_VERTICAL_TOTAL;
+		unsigned int phs = PANEL_HORIZONTAL_SYNC;
+		unsigned int pvs = PANEL_VERTICAL_SYNC;
+		unsigned int phssm = PANEL_HORIZONTAL_SYNC_START_MASK;
+		unsigned int phtdem = PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
+		unsigned int pvtdem = PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK;
+		unsigned int phttm = PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
+		unsigned int pvttm = PANEL_VERTICAL_TOTAL_TOTAL_MASK;
+		unsigned int phswm = PANEL_HORIZONTAL_SYNC_WIDTH_MASK;
+		unsigned int pvshm = PANEL_VERTICAL_SYNC_HEIGHT_MASK;
+		unsigned int phde = pModeParam->horizontal_display_end - 1;
+		unsigned int pvde = pModeParam->vertical_display_end - 1;
+		unsigned int phss = pModeParam->horizontal_sync_start - 1;
+		unsigned int pvss = pModeParam->vertical_sync_start - 1;
+
 
 		poke32(PANEL_PLL_CTRL, sm750_format_pll_reg(pll));
 
-		reg = ((pModeParam->horizontal_total - 1) <<
-			PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
-			PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
-		reg |= ((pModeParam->horizontal_display_end - 1) &
-			PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK);
-		poke32(PANEL_HORIZONTAL_TOTAL, reg);
-
-		poke32(PANEL_HORIZONTAL_SYNC,
-			((pModeParam->horizontal_sync_width <<
-				PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
-				PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
-			((pModeParam->horizontal_sync_start - 1) &
-				PANEL_HORIZONTAL_SYNC_START_MASK));
-
-		poke32(PANEL_VERTICAL_TOTAL,
-			(((pModeParam->vertical_total - 1) <<
-				PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
-				PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
-			((pModeParam->vertical_display_end - 1) &
-				PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
-
-		poke32(PANEL_VERTICAL_SYNC,
-			((pModeParam->vertical_sync_height <<
-				PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
-				PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
-			((pModeParam->vertical_sync_start - 1) &
-				PANEL_VERTICAL_SYNC_START_MASK));
+		reg = ((pModeParam->horizontal_total - 1) << PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) & phttm;
+		reg |= (phde & phtdem);
+		poke32(pht, reg);
+
+		poke32(phs, ((pModeParam->horizontal_sync_width << PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) & phswm) | (phss & phssm));
+
+		poke32(pvt, (((pModeParam->vertical_total - 1) << PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) & pvttm) | (pvde & pvtdem));
+
+		poke32(pvs, ((pModeParam->vertical_sync_height << PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) & pvshm) | (pvss & pvssm));
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
-- 
2.11.0



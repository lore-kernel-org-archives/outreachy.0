X-GM-THRID: 6397051506437128192
X-Received: by 10.99.130.73 with SMTP id w70mr16992189pgd.64.1489429619653;
        Mon, 13 Mar 2017 11:26:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls814344otd.11.gmail; Mon, 13 Mar
 2017 11:26:59 -0700 (PDT)
X-Received: by 10.157.45.198 with SMTP id g64mr15817169otb.136.1489429619275;
        Mon, 13 Mar 2017 11:26:59 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si3253287pfb.2.2017.03.13.11.26.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 11:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so14423998pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 11:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+jShk7lcZDW/NfjfRq6hm8EapEn8CnHjlizwgI2tuwc=;
        b=lRmw0nx7clrFx1oDG1aGdQx3cDi0BT6OyTHMdcHf71PL3/xRxO1J/2FMxeImyCIN5I
         +AJGtRIAgJAjhherwM3aLSn44+zc7trt/5ezjxeVLkNNmElY+kujmo9it6wxk/8X46uc
         viBQOrK/Y/rEauQE2KR+CpSsgvcjs7MVll6aVCzqZ/wthMzSq5l8QlRUljXN+k9n6Lan
         5qCRyWuN82EslxJ4W4qeydSutfPblmrgjFFxyCamBSY500rXhmtYL1+vN0YGRoKaAXsW
         O8CJ94cFJ5djYEOXwmmMnV4aUk/noW/aHpjtrmKQu5gSHd/kg6ntH2R3HJrlaVSsyhQF
         BOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+jShk7lcZDW/NfjfRq6hm8EapEn8CnHjlizwgI2tuwc=;
        b=l/r5ef1e7QCcVH7TPkUS/OnH7/GbwkzWFJwxMhLlo15zw3LL9iCqdYFguB9OxojKKI
         4/OliAmdKnJkB3eJlSGI0q4t6AXq5NwIcqyAt4mKP/8PKU9261aUwAV55Bg40SOMkImy
         pk2BqdfvJVmkC+pxt2wqmsFRUj2XUf3ab7Zz3iufRepoSIWjFxzZ54ESbfT653d2wbTR
         pdusyTwfCxjpo1xX63IWYpQg0yBdlC6Z/9TnBsjn6PzM/Mix9sl/46ghJaUV8hKxSk5j
         qorgqZCGt0uTOKh/Q43PuE0v55ShjpaKn67BUE03G7Dd9+G+YAjAN6/6oaaDE7NBbtaK
         9SPQ==
X-Gm-Message-State: AMke39liHcsCsogtfXZxGu5Fy6qufIQindF5mm9y+Gcf439mmZ/UeLRvC9ZDIES3AOFruA==
X-Received: by 10.84.210.167 with SMTP id a36mr50149586pli.40.1489429618540;
        Mon, 13 Mar 2017 11:26:58 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w20sm5442307pgc.18.2017.03.13.11.26.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 11:26:57 -0700 (PDT)
Date: Mon, 13 Mar 2017 23:56:53 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: sm750fb: Improved code readability
Message-ID: <20170313182652.GA19882@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

New variables are added to make the code more readable.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
 - removed the error.

 drivers/staging/sm750fb/ddk750_mode.c | 103 ++++++++++++++++------------------
 1 file changed, 49 insertions(+), 54 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 25da678179f7..6dd52b450367 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -77,37 +77,34 @@ static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll
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
-		       (((pModeParam->horizontal_total - 1) <<
-			 CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
-			CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
-		       ((pModeParam->horizontal_display_end - 1) &
-			CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
-
-		poke32(CRT_HORIZONTAL_SYNC,
-		       ((pModeParam->horizontal_sync_width <<
-			 CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
-			CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
-		       ((pModeParam->horizontal_sync_start - 1) &
-			CRT_HORIZONTAL_SYNC_START_MASK));
-
-		poke32(CRT_VERTICAL_TOTAL,
-		       (((pModeParam->vertical_total - 1) <<
-			 CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
-			CRT_VERTICAL_TOTAL_TOTAL_MASK) |
-		       ((pModeParam->vertical_display_end - 1) &
-			CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
-
-		poke32(CRT_VERTICAL_SYNC,
-		       ((pModeParam->vertical_sync_height <<
-			 CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
-			CRT_VERTICAL_SYNC_HEIGHT_MASK) |
-		       ((pModeParam->vertical_sync_start - 1) &
-			CRT_VERTICAL_SYNC_START_MASK));
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
@@ -128,36 +125,34 @@ static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll
 
 	} else if (pll->clockType == PRIMARY_PLL) {
 		unsigned int reserved;
+		unsigned int pht = PANEL_HORIZONTAL_TOTAL;
+		unsigned int pvt = PANEL_VERTICAL_TOTAL;
+		unsigned int phs = PANEL_HORIZONTAL_SYNC;
+		unsigned int pvs = PANEL_VERTICAL_SYNC;
+		unsigned int phssm = PANEL_HORIZONTAL_SYNC_START_MASK;
+		unsigned int pvssm = PANEL_VERTICAL_SYNC_START_MASK;
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
 
 		poke32(PANEL_PLL_CTRL, sm750_format_pll_reg(pll));
 
-		reg = ((pModeParam->horizontal_total - 1) <<
-			PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
-			PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
-		reg |= ((pModeParam->horizontal_display_end - 1) &
-			PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK);
-		poke32(PANEL_HORIZONTAL_TOTAL, reg);
-
-		poke32(PANEL_HORIZONTAL_SYNC,
-		       ((pModeParam->horizontal_sync_width <<
-			 PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
-			PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
-		       ((pModeParam->horizontal_sync_start - 1) &
-			PANEL_HORIZONTAL_SYNC_START_MASK));
-
-		poke32(PANEL_VERTICAL_TOTAL,
-		       (((pModeParam->vertical_total - 1) <<
-			 PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
-			PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
-		       ((pModeParam->vertical_display_end - 1) &
-			PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
-
-		poke32(PANEL_VERTICAL_SYNC,
-		       ((pModeParam->vertical_sync_height <<
-			 PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
-			PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
-		       ((pModeParam->vertical_sync_start - 1) &
-			PANEL_VERTICAL_SYNC_START_MASK));
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



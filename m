X-GM-THRID: 6397051506437128192
X-Received: by 10.129.163.208 with SMTP id a199mr18693473ywh.135.1489482395689;
        Tue, 14 Mar 2017 02:06:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.20.13 with SMTP id 13ls2105833itg.18.canary-gmail; Tue, 14
 Mar 2017 02:06:34 -0700 (PDT)
X-Received: by 10.99.174.9 with SMTP id q9mr19795970pgf.80.1489482394806;
        Tue, 14 Mar 2017 02:06:34 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si3597399pfd.3.2017.03.14.02.06.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 02:06:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so18670715pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 02:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=INrm/agI/91NGlwyTEWg8wepz85xGm2QCOXOBW2/3Fc=;
        b=B9BcQRvbXIwHNfpNnmwFGlbQOvGtN/tKJIzmNjhMP3v/EPtNLG504trsCd8IVZomDb
         0q2I0xuthCrxq3F4AlmW3DmFuK8KomnjeE6HUPCuT65eJje4+clR/QAYVwPR7VAeQB16
         LJ8bAr4z/kGh758K6gpCZE1SJT7qC91blZtrzz8MQYHbi5K7+4RKlwmk7OoVANKbSa1j
         XDWXRjWZqt0BcWNspQPOE+RIWwifiee4CUzLKPZ5U4jKhGinnLCaHZf/J/QAsc6UOGSY
         bA/Vq9XWPk/FKP2Zr6gfvOIYgyX2VhL5hrJvY+C/F8mFHENDis3EQoKAdI62FISvtnAH
         GcWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=INrm/agI/91NGlwyTEWg8wepz85xGm2QCOXOBW2/3Fc=;
        b=WfLC2d+uDwV7oEAaJMRD596UP2lmXFrWHSHJB6s7sdKFB2qVASvLfBhxBcTtyJKAvN
         FCZ7qZwq4PWwjP8f3RZGTvxnuFK4fJmSYezufr0S1KxnGl91sN2vx/2HI0/4iXIxxIKj
         OgWMPZOhxxky3/dBojaioiMf56hy3jaFNJX+y6GBiy/4XEZSLqNNteO4Qk2ZC0aaTN/q
         +lBne1HwBjka3zBFjfesPXsltSpC1HY1nyiezBDMIf5ci3tvAT52y+TxlYTOGB9DrAKG
         U9KXdw81RFyvgQqkVm9kpozQqrJlgQHwUOraFsqODYcA4TuXJ8ncrI8XhoJAPGBeFLt0
         aLkQ==
X-Gm-Message-State: AMke39knOEh05ZyNBoSgMdJfkiI6KuKFTtj+3UCcNTIc2ofhE9VMujJSPJLKYHaNxqBMnQ==
X-Received: by 10.84.236.9 with SMTP id q9mr53482986plk.96.1489482394407;
        Tue, 14 Mar 2017 02:06:34 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s65sm37246924pgb.64.2017.03.14.02.06.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 02:06:32 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v3] staging: sm750fb: Improved code readability
Date: Tue, 14 Mar 2017 14:36:26 +0530
Message-Id: <20170314090626.9314-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

New variables are added to make the code more readable.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v3
 - improve the patch to make code much more readable.

 drivers/staging/sm750fb/ddk750_mode.c | 115 ++++++++++++++++++----------------
 1 file changed, 61 insertions(+), 54 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 25da678179f7..150e5ed0d8ea 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -81,33 +81,34 @@ static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll
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
+		unsigned int cht = CRT_HORIZONTAL_TOTAL;
+		unsigned int chttm = CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
+		unsigned int phde = pModeParam->horizontal_display_end - 1;
+		unsigned int chtdem = CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
+
+		poke32(cht, (((pModeParam->horizontal_total - 1) << CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) & chttm) | (phde & chtdem));
+
+		unsigned int chs = CRT_HORIZONTAL_SYNC;
+		unsigned int chswm = CRT_HORIZONTAL_SYNC_WIDTH_MASK;
+		unsigned int phss = pModeParam->horizontal_sync_start - 1;
+		unsigned int chssm = CRT_HORIZONTAL_SYNC_START_MASK;
+
+		poke32(chs, ((pModeParam->horizontal_sync_width << CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) & chswm) | (phss & chssm));
+
+		unsigned int cvt = CRT_VERTICAL_TOTAL;
+		unsigned int cvttm = CRT_VERTICAL_TOTAL_TOTAL_MASK;
+		unsigned int pvde = pModeParam->vertical_display_end - 1;
+		unsigned int cvtdem = CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
+
+		poke32(cvt, (((pModeParam->vertical_total - 1) << CRT_VERTICAL_TOTAL_TOTAL_SHIFT) & cvttm) | (pvde & cvtdem));
+
+		unsigned int cvs = CRT_VERTICAL_SYNC;
+		unsigned int cvshm = CRT_VERTICAL_SYNC_HEIGHT_MASK;
+		unsigned int pvss = pModeParam->vertical_sync_start - 1;
+		unsigned int cvssm = CRT_VERTICAL_SYNC_START_MASK;
+
+		poke32(cvs, ((pModeParam->vertical_sync_height << CRT_VERTICAL_SYNC_HEIGHT_SHIFT) & cvshm) | (pvss & cvssm));
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
@@ -131,33 +132,39 @@ static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll
 
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
+		unsigned int phttm = PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
+
+		reg = ((pModeParam->horizontal_total - 1) << PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) & phttm;
+
+		unsigned int phde = pModeParam->horizontal_display_end - 1;
+		unsigned int phtdem = PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
+
+		reg |= (phde & phtdem);
+
+		unsigned int pht = PANEL_HORIZONTAL_TOTAL;
+
+		poke32(pht, reg);
+
+		unsigned int phs = PANEL_HORIZONTAL_SYNC;
+		unsigned int phswm = PANEL_HORIZONTAL_SYNC_WIDTH_MASK;
+		unsigned int phss = pModeParam->horizontal_sync_start - 1;
+		unsigned int phssm = PANEL_HORIZONTAL_SYNC_START_MASK;
+
+		poke32(phs, ((pModeParam->horizontal_sync_width << PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) & phswm) | (phss & phssm));
+
+		unsigned int pvt = PANEL_VERTICAL_TOTAL;
+		unsigned int pvttm = PANEL_VERTICAL_TOTAL_TOTAL_MASK;
+		unsigned int pvde = pModeParam->vertical_display_end - 1;
+		unsigned int pvtdem = PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK;
+
+		poke32(pvt, (((pModeParam->vertical_total - 1) << PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) & pvttm) | (pvde & pvtdem));
+
+		unsigned int pvs = PANEL_VERTICAL_SYNC;
+		unsigned int pvshm = PANEL_VERTICAL_SYNC_HEIGHT_MASK;
+		unsigned int pvss = pModeParam->vertical_sync_start - 1;
+		unsigned int pvssm = PANEL_VERTICAL_SYNC_START_MASK;
+
+		poke32(pvs, ((pModeParam->vertical_sync_height << PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) & pvshm) | (pvss & pvssm));
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
-- 
2.11.0



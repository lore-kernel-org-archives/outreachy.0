X-GM-THRID: 6399195765741191168
X-Received: by 10.129.39.18 with SMTP id n18mr11915234ywn.34.1489938566105;
        Sun, 19 Mar 2017 08:49:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.46.193 with SMTP id i184ls1588676ita.10.canary-gmail; Sun,
 19 Mar 2017 08:49:25 -0700 (PDT)
X-Received: by 10.107.131.35 with SMTP id f35mr6143593iod.68.1489938565275;
        Sun, 19 Mar 2017 08:49:25 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id s67si54770pfs.4.2017.03.19.08.49.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 08:49:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so14089648pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 08:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vzyL1rf90Awde51aHQ5TxVQyUsN5DQaTs4mnfPhgIec=;
        b=GROfJypxJz0It28H8sCvryL5hrJvxwCUrOs/LSE9XdKeCP7tmhquJcoKAamM1Lixv7
         qcYqojjYEOaRogvXB4xa0GV79K4YV5yOCsZQ3joPyezbmJLziGrrNsTP5ca3xwfJ1qZq
         N01dkSQUA1lLbaLpS/wrpLmnHbxo+DhxmGvQbAz/8KDoZEADuXiWUZYT1XUHzUGpeWlA
         NTS7jqE2cCSfOdqyJI+EVFoUbXSEoyTNTDkAQ/9jeL//NH1qrdUszDwpT1KmJ2PddFmm
         qySKR8+vywgYey/IWB1mVI9QpCoqnOSoCerEzgI9QY2apqJpxfIUe8nrxk73AC5geVFQ
         tAnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vzyL1rf90Awde51aHQ5TxVQyUsN5DQaTs4mnfPhgIec=;
        b=GGcPRJXkxEPZAIS4w7eqidvndbJVTQswMO5d+dEdqBGFoyICDF6qpT8bVaESxfO4Ic
         zMBhMtw4E3DXKnnkNmYLnT1xeh4Yuo8WndyBxcLi/qrmpxoiF08zLao7ifFn0HUyIdaI
         UuNMIpXyDi5WRZqUdzUMreSE/pHWQQCe/4GfVOo82RaLm7ZGTjV8A/HPjOuToyzzAyd/
         H8Z0DjJqggV8GUOmBA/3fvOFO+e+fNp4vhw97GJFQV7xz1JAq7hQuvIfNUIL8hGUsSNT
         mj/2Og7U7AouiFciWTQAsKSYO4Ix7tHKWyZlVuJO13g9LU0VQeuvcxF3B00CsrAIYVhw
         F5iA==
X-Gm-Message-State: AFeK/H36qA4F6DecBA5K/PIk7eCDEmOX8heP1+F7vZu8cURRJ7XUIL81DBRMssqXlSBoeA==
X-Received: by 10.99.169.17 with SMTP id u17mr26074914pge.191.1489938564961;
        Sun, 19 Mar 2017 08:49:24 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v9sm27885291pfg.133.2017.03.19.08.49.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 08:49:23 -0700 (PDT)
Date: Sun, 19 Mar 2017 21:19:20 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: sm750fb: Code readability is improved
Message-ID: <20170319154920.GA12736@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

New variables are added to make the code more readable.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v4
 -try to make the code much more readable.
 - defined the variable at the top of a block.
---
 drivers/staging/sm750fb/ddk750_mode.c | 57 +++++++++++++++++++----------------
 1 file changed, 31 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index eea5aef2956f..6517e770e0a7 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -76,38 +76,43 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
 {
 	int ret = 0;
 	int cnt = 0;
-	unsigned int tmp, reg;
+	unsigned int tmp, reg, temp;
 
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
 
-		poke32(CRT_VERTICAL_TOTAL,
-		       (((pModeParam->vertical_total - 1) <<
-			 CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
-			CRT_VERTICAL_TOTAL_TOTAL_MASK) |
-		       ((pModeParam->vertical_display_end - 1) &
-			CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
+		temp = (pModeParam->horizontal_total - 1) <<
+				CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT;
+		temp = temp & CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
+		temp = temp | ((pModeParam->horizontal_display_end - 1) &
+				CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK);
 
-		poke32(CRT_VERTICAL_SYNC,
-		       ((pModeParam->vertical_sync_height <<
-			 CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
-			CRT_VERTICAL_SYNC_HEIGHT_MASK) |
-		       ((pModeParam->vertical_sync_start - 1) &
-			CRT_VERTICAL_SYNC_START_MASK));
+		poke32(CRT_HORIZONTAL_TOTAL, temp);
+
+		temp = (pModeParam->horizontal_sync_width <<
+				CRT_HORIZONTAL_SYNC_WIDTH_SHIFT);
+		temp = temp & CRT_HORIZONTAL_SYNC_WIDTH_MASK;
+		temp = temp | ((pModeParam->horizontal_sync_start - 1) &
+				CRT_HORIZONTAL_SYNC_START_MASK);
+
+		poke32(CRT_HORIZONTAL_SYNC, temp);
+
+		temp = (pModeParam->vertical_total - 1) <<
+				CRT_VERTICAL_TOTAL_TOTAL_SHIFT;
+		temp = temp & CRT_VERTICAL_TOTAL_TOTAL_MASK;
+		temp = temp | ((pModeParam->vertical_display_end - 1) &
+			       CRT_VERTICAL_TOTAL_DISPLAY_END_MASK);
+
+		poke32(CRT_VERTICAL_TOTAL, temp);
+
+		temp = pModeParam->vertical_sync_height <<
+				CRT_VERTICAL_SYNC_HEIGHT_SHIFT;
+		temp = temp & CRT_VERTICAL_SYNC_HEIGHT_MASK;
+		temp = temp | ((pModeParam->vertical_sync_start - 1) &
+			       CRT_VERTICAL_SYNC_START_MASK);
+
+		poke32(CRT_VERTICAL_SYNC, temp);
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
-- 
2.11.0



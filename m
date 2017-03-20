X-GM-THRID: 6399582114809905152
X-Received: by 10.107.129.155 with SMTP id l27mr4389582ioi.87.1490018822391;
        Mon, 20 Mar 2017 07:07:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.241 with SMTP id 104ls5514499otd.35.gmail; Mon, 20 Mar
 2017 07:07:01 -0700 (PDT)
X-Received: by 10.129.156.135 with SMTP id t129mr14255020ywg.104.1490018821451;
        Mon, 20 Mar 2017 07:07:01 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r66si2700800pfb.7.2017.03.20.07.07.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 07:07:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so12003350pfp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 07:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=z+RazEhRCR0BWIqAgYCkpPRiWp9ECryE9V5pHs1OfYE=;
        b=PXTFBXim+VipIkqiWNQDFPVEK1KigRSwDVkQTZajbbKcLlRDj46KTwDeOZjQBnN4Q0
         u/jvR8k9jB4gILtgrRlqD36PV8CXgvqlmG0jgm8eWVMdrpjqVTIdj5QQNdkF8fbNth6+
         uhB2SdpOmr5owOkS6QvKNS94iEh5AbestSOpM80s091LixxFqwz5P5uO2da3f1PLlR3K
         WmlqIDc/MG6QJYUbMXKVF/okYHDImrqvHQeuuNq5A638eQF+yvcWinllJGqJ0dlVC2em
         nVQtk8iQrs0WVqlmxkxzTkOUlqLMRVItpbYson6ilmnUWxQvUHQWSXdDea2tdoONmWUy
         zlLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=z+RazEhRCR0BWIqAgYCkpPRiWp9ECryE9V5pHs1OfYE=;
        b=TmIRReg17Gz0KtSBDm85jR5q32BDiMlvt55ntS6vlJmyy3MbOFqvldektLE3cpAAvo
         RNFuIgmbOKVhCuxquZQBz3LoR/4FljDU4hbHl5d1bU+6lbjJN1ubEemmRX/EGCUVNUQb
         afisnTOFg+0tm802tLkNm/wVHyhXh0w7ItrU4NUkh4rkj7iq2qPcoBzcpUoouSCVHz8U
         vHl4iJUurmZqs6llfMDbUIiYbldQKRtssRopnAj8MIOrPkQ0kkysC9Hn86ZkYVa84UEx
         +flwXjcNmpTvfksdi7frWkYgzjC+Eypw5N17ODMjsyIWtgEVZfLEuxwp6rcceSqDUYeM
         3vYg==
X-Gm-Message-State: AFeK/H1QScn/VIBxIZbRqmI7V1Ul2XvptpMIGOR/zrVlgnmhV7oD+PGQg6eqTwczzYk0bQ==
X-Received: by 10.84.198.164 with SMTP id p33mr40836477pld.127.1490018821125;
        Mon, 20 Mar 2017 07:07:01 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d68sm33670588pfj.92.2017.03.20.07.06.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 07:06:59 -0700 (PDT)
Date: Mon, 20 Mar 2017 19:36:56 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v5] staging:sm750fb: Code readability is improved.
Message-ID: <20170320140656.GA5137@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

New variables are added to make the code more readable.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v5
 -try to make the code much more readable.
 - defined the variable at the top of a block.
 - change the variable from temp to tmp.

 drivers/staging/sm750fb/ddk750_mode.c | 55 +++++++++++++++++++----------------
 1 file changed, 30 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index eea5aef2956f..37b5d4850fb9 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -81,33 +81,38 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
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
+		tmp = ((pModeParam->horizontal_total - 1) <<
+		       CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
+		     CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
+		tmp |= (pModeParam->horizontal_display_end - 1) &
+		      CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
 
-		poke32(CRT_VERTICAL_SYNC,
-		       ((pModeParam->vertical_sync_height <<
-			 CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
-			CRT_VERTICAL_SYNC_HEIGHT_MASK) |
-		       ((pModeParam->vertical_sync_start - 1) &
-			CRT_VERTICAL_SYNC_START_MASK));
+		poke32(CRT_HORIZONTAL_TOTAL, tmp);
+
+		tmp = (pModeParam->horizontal_sync_width <<
+		       CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
+		     CRT_HORIZONTAL_SYNC_WIDTH_MASK;
+		tmp |= (pModeParam->horizontal_sync_start - 1) &
+		      CRT_HORIZONTAL_SYNC_START_MASK;
+
+		poke32(CRT_HORIZONTAL_SYNC, tmp);
+
+		tmp = ((pModeParam->vertical_total - 1) <<
+		       CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
+		     CRT_VERTICAL_TOTAL_TOTAL_MASK;
+		tmp |= (pModeParam->vertical_display_end - 1) &
+		      CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
+
+		poke32(CRT_VERTICAL_TOTAL, tmp);
+
+		tmp = ((pModeParam->vertical_sync_height <<
+		       CRT_VERTICAL_SYNC_HEIGHT_SHIFT)) &
+		     CRT_VERTICAL_SYNC_HEIGHT_MASK;
+		tmp |= (pModeParam->vertical_sync_start - 1) &
+		      CRT_VERTICAL_SYNC_START_MASK;
+
+		poke32(CRT_VERTICAL_SYNC, tmp);
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
-- 
2.11.0



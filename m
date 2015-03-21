X-GM-THRID: 9445831606272
X-Received: by 10.236.70.234 with SMTP id p70mr93041674yhd.56.1426965222418;
        Sat, 21 Mar 2015 12:13:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.108.136 with SMTP id hk8ls972856obb.91.gmail; Sat, 21 Mar
 2015 12:13:41 -0700 (PDT)
X-Received: by 10.182.237.18 with SMTP id uy18mr91824249obc.36.1426965221096;
        Sat, 21 Mar 2015 12:13:41 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pj7si256671pbb.2.2015.03.21.12.13.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 12:13:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id we9so144071214pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 12:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cHC7PAfJmcyCIKKtBpC8NHnhpOsICWQ7mLkRFludaxY=;
        b=ls0v6DfKvxdX5RulVxNW8TM5n9cPQJOVC3R6gObr47m+JTUV1P9eU+5cxTafRUZayK
         qLtHyPuke+DOOOa+6uUx/mN9RB7L/9mq4tqZd8VCKgGnXHdY+GPZwH/rsL/2fuECotvo
         zYkjIgyGJwcp20GddiJdMMz4P0qCLxTVvtzwtS9YJCvQEZzVluceVRUHtHgRvDP2MgFT
         0/JV78OmtORFw1ecjM5cdd2z5wEsGOWa1nTc+zXfT2XfW3pEcU2Xk2FwpORr0abE4EDR
         ph8st58V+MXWVspWRaRbQz/e5TTgO7RQQwHgPdVqsoVZ49LQOAVX1cuymglQWqufuX4g
         g2ew==
X-Received: by 10.70.125.129 with SMTP id mq1mr198157935pdb.70.1426965220973;
        Sat, 21 Mar 2015 12:13:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.209.90])
        by mx.google.com with ESMTPSA id x3sm12288614pdb.36.2015.03.21.12.13.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 12:13:40 -0700 (PDT)
Date: Sun, 22 Mar 2015 00:43:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Remove spaces in front of lines
Message-ID: <20150321191336.GA28354@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes warning in file ddk750_chip.c of spaces in front of
lines.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 38 +++++++++++++++++++----------------
 1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 3ccf4a5..9105c0e 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -110,23 +110,27 @@ void setChipClock(unsigned int frequency)
 			return;
 #endif
 
-    if (frequency != 0) {
-        /*
-         * Set up PLL, a structure to hold the value to be set in clocks.
-         */
-        pll.inputFreq = DEFAULT_INPUT_CLOCK; /* Defined in CLOCK.H */
-        pll.clockType = MXCLK_PLL;
-
-        /*
-         * Call calcPllValue() to fill up the other fields for PLL structure.
-         * Sometime, the chip cannot set up the exact clock required by User.
-         * Return value from calcPllValue() gives the actual possible clock.
-         */
-        ulActualMxClk = calcPllValue(frequency, &pll);
-
-        /* Master Clock Control: MXCLK_PLL */
-        POKE32(MXCLK_PLL_CTRL, formatPllReg(&pll));
-    }
+	if (frequency != 0) {
+		/*
+		* Set up PLL, a structure to hold the value to be set in clocks.
+		*/
+		pll.inputFreq = DEFAULT_INPUT_CLOCK; /* Defined in CLOCK.H */
+		pll.clockType = MXCLK_PLL;
+
+		/*
+		* Call calcPllValue() to fill up the other fields for PLL
+		* structure.
+		* Sometime, the chip cannot set up the exact clock required by
+		* User.
+		* Return value from calcPllValue() gives the actual possible
+		* clock.
+		*/
+
+		ulActualMxClk = calcPllValue(frequency, &pll);
+
+		/* Master Clock Control: MXCLK_PLL */
+		POKE32(MXCLK_PLL_CTRL, formatPllReg(&pll));
+	}
 }
 
 
-- 
1.9.1



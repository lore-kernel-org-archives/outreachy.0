X-GM-THRID: 9445831606272
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,153891478aacf657
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.183.206 with SMTP id ch14mr11046870icb.24.1426966431334;
        Sat, 21 Mar 2015 12:33:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.130 with SMTP id j2ls2152258qgj.37.gmail; Sat, 21 Mar
 2015 12:33:51 -0700 (PDT)
X-Received: by 10.52.24.108 with SMTP id t12mr80084655vdf.6.1426966431157;
        Sat, 21 Mar 2015 12:33:51 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id iw3si255469pbd.1.2015.03.21.12.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 12:33:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id we9so144405267pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 12:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=F3dMUj0hRcZpJmAdkBIS8eoePkcsyZ6tEwMLZo/g50o=;
        b=ZYVxbf237fioRAvU2+JipqN5+V/vdQ6KG1cuHEvj0arR+ezuDPkF3lpTVqtwDI6tcR
         gkGjm91DhInYOA1k1fN59Vz2wT1Z3aiymxFk4Bj5r8IuLz6eLxPebFJbmFlL62ObDKs7
         zONWtqPdOjcVKALb+soabJ9MNkPpo3/2vEvpwCGHOVM+/P+BBCVGxQJaLHCgsUcZhUeB
         B83Bz39Q0BrbwnOXUfbQ00KGgszZFPVSiLIntLOIdfs9sWWvKaNkVuuswujzGYVDO1Li
         Y6CwxAKS46eTnTWa9HPei5DDZ9qvbLWjBmKjU/EK1a+Nc0yl3uelVTG5YvDprPa0fBD8
         ktUA==
X-Received: by 10.66.124.227 with SMTP id ml3mr200862162pab.28.1426966431029;
        Sat, 21 Mar 2015 12:33:51 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.209.90])
        by mx.google.com with ESMTPSA id bt2sm12363693pad.12.2015.03.21.12.33.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 12:33:50 -0700 (PDT)
Date: Sun, 22 Mar 2015 01:03:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: sm750fb: Remove spaces in front of lines
Message-ID: <20150321193347.GA28575@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes warning of spaces in front of lines by using tabs
instead, in file ddk750_chip.c

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
  - Make the commit message clearer.

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



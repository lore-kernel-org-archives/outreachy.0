X-GM-THRID: 9445831606272
X-Received: by 10.182.63.80 with SMTP id e16mr2833662obs.13.1426967559619;
        Sat, 21 Mar 2015 12:52:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.11 with SMTP id g11ls2047701qgf.64.gmail; Sat, 21 Mar
 2015 12:52:39 -0700 (PDT)
X-Received: by 10.236.207.68 with SMTP id m44mr83343615yho.25.1426967559383;
        Sat, 21 Mar 2015 12:52:39 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id gu4si1276725pac.1.2015.03.21.12.52.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 12:52:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id j4so53565321pag.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 12:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cgjmKxWiViyR1i5lOyK3jnKmqND5ffqnsur8gYyiUW8=;
        b=MzCH7wXlAJxXjC4GDNvC9ScU77UYoz5m4cH1Gx6z8p101O2f9Zifm/5ZR/5pYLtJSw
         9tGNjGfkasbmTQEDSkB7Zf09kMsp20lvrJX9heMa1dKdC5IMVJB9DFu2VRGCupXZYWsX
         zJ8Ri1EQIDK7Gfv1z4VcJKUcZyHobxLTepsb82e+itKI3ESdmpWlG2A2OjrPYhzE7Zrb
         DkGLdX58NbrwbVR9BTQCcYbgBEL6cLM4cWHLyWtHB4MgxT1MUI5O3iYDyonFNTZ0BJw9
         yS9YuPChNbFRdQbVqKN0NAL04tZCw0WtHJSdM6u2Wv7DDVwOR95PNw0Qi/aqxTflW1MI
         JavQ==
X-Received: by 10.66.141.42 with SMTP id rl10mr199699281pab.124.1426967559236;
        Sat, 21 Mar 2015 12:52:39 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.209.90])
        by mx.google.com with ESMTPSA id bw3sm2682316pbc.27.2015.03.21.12.52.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 12:52:38 -0700 (PDT)
Date: Sun, 22 Mar 2015 01:22:35 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: sm750fb: Remove spaces in front of lines
Message-ID: <20150321195235.GA28639@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixes checkpatch.pl warning by using tabs instead of spaces.
WARNING: please, no spaces at the start of a line

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
 - Fixed commit message
 
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



X-GM-THRID: 9431071850496
X-Received: by 10.236.24.228 with SMTP id x64mr93978572yhx.26.1426958302999;
        Sat, 21 Mar 2015 10:18:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.134 with SMTP id m6ls1493810qge.61.gmail; Sat, 21 Mar
 2015 10:18:22 -0700 (PDT)
X-Received: by 10.236.202.66 with SMTP id c42mr82885334yho.18.1426958302768;
        Sat, 21 Mar 2015 10:18:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id gu4si1243286pac.1.2015.03.21.10.18.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 10:18:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id ni2so140055587pdb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 10:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=L0tgqEfdIcof60dVzRMASHCP5D/WqBEkG51OtckrRAo=;
        b=Rlo35sXOhnyZLzfCQDj1D0PdI7s+9lx8doQbkoBTY33eFKasFtn+A/765Z4otMlkiq
         WfaB1sjjz4Wr+NiiPWXe/2w1ZMTkJ+QDYfeNmGvjy4hwxz7Ze1DxH9qhg7T2wF1E4znp
         urJPR7R/TRbIoopP6Kq7Wu+m8MIj5J1804D0v1uwyL0wQhhcOkDXBBOa1KBo2tovemYv
         aLGbwA9vqlmor3ipzvTB9neXD6lJCNJovSyGAhZ3lTd8HrprbChd7CgobnTOaeD27zta
         W8q93vQ2loIpjM8wCrRqSMQXGxcUmRMJwARcQ40lE9P94WHBpOSuBH8ceOj0HfQhxQ22
         4wzA==
X-Received: by 10.70.100.39 with SMTP id ev7mr47788300pdb.29.1426958302649;
        Sat, 21 Mar 2015 10:18:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.209.90])
        by mx.google.com with ESMTPSA id y2sm12113928pdm.31.2015.03.21.10.18.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 10:18:22 -0700 (PDT)
Date: Sat, 21 Mar 2015 22:48:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] sm750fb: Fix indentation, spacing and switch-case
Message-ID: <20150321171818.GA27148@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the spacing problems with correct indentation and correct use of
braces and spacing in switch-case statements.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 63 +++++++++++++++++------------------
 1 file changed, 31 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 1e6b474..de56302 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -46,53 +46,52 @@ inline unsigned int twoToPowerOfx(unsigned long x)
 
 inline unsigned int calcPLL(pll_value_t *pPLL)
 {
-    return (pPLL->inputFreq * pPLL->M / pPLL->N / twoToPowerOfx(pPLL->OD) / twoToPowerOfx(pPLL->POD));
+	return (pPLL->inputFreq * pPLL->M / pPLL->N / twoToPowerOfx(pPLL->OD) / twoToPowerOfx(pPLL->POD));
 }
 
 unsigned int getPllValue(clock_type_t clockType, pll_value_t *pPLL)
 {
-    unsigned int ulPllReg = 0;
-
-    pPLL->inputFreq = DEFAULT_INPUT_CLOCK;
-    pPLL->clockType = clockType;
-
-    switch (clockType)
-    {
-        case MXCLK_PLL:
-            ulPllReg = PEEK32(MXCLK_PLL_CTRL);
-            break;
-        case PRIMARY_PLL:
-            ulPllReg = PEEK32(PANEL_PLL_CTRL);
-            break;
-        case SECONDARY_PLL:
-            ulPllReg = PEEK32(CRT_PLL_CTRL);
-            break;
-        case VGA0_PLL:
-            ulPllReg = PEEK32(VGA_PLL0_CTRL);
-            break;
-        case VGA1_PLL:
-            ulPllReg = PEEK32(VGA_PLL1_CTRL);
-            break;
-    }
+	unsigned int ulPllReg = 0;
+
+	pPLL->inputFreq = DEFAULT_INPUT_CLOCK;
+	pPLL->clockType = clockType;
+
+	switch (clockType) {
+	case MXCLK_PLL:
+		ulPllReg = PEEK32(MXCLK_PLL_CTRL);
+		break;
+	case PRIMARY_PLL:
+		ulPllReg = PEEK32(PANEL_PLL_CTRL);
+		break;
+	case SECONDARY_PLL:
+		ulPllReg = PEEK32(CRT_PLL_CTRL);
+		break;
+	case VGA0_PLL:
+		ulPllReg = PEEK32(VGA_PLL0_CTRL);
+		break;
+	case VGA1_PLL:
+		ulPllReg = PEEK32(VGA_PLL1_CTRL);
+		break;
+	}
 
-    pPLL->M = FIELD_GET(ulPllReg, PANEL_PLL_CTRL, M);
-    pPLL->N = FIELD_GET(ulPllReg, PANEL_PLL_CTRL, N);
-    pPLL->OD = FIELD_GET(ulPllReg, PANEL_PLL_CTRL, OD);
-    pPLL->POD = FIELD_GET(ulPllReg, PANEL_PLL_CTRL, POD);
+	pPLL->M = FIELD_GET(ulPllReg, PANEL_PLL_CTRL, M);
+	pPLL->N = FIELD_GET(ulPllReg, PANEL_PLL_CTRL, N);
+	pPLL->OD = FIELD_GET(ulPllReg, PANEL_PLL_CTRL, OD);
+	pPLL->POD = FIELD_GET(ulPllReg, PANEL_PLL_CTRL, POD);
 
-    return calcPLL(pPLL);
+	return calcPLL(pPLL);
 }
 
 
 unsigned int getChipClock(void)
 {
-    pll_value_t pll;
+	pll_value_t pll;
 #if 1
-	if(getChipType() == SM750LE)
+	if (getChipType() == SM750LE)
 		return MHz(130);
 #endif
 
-    return getPllValue(MXCLK_PLL, &pll);
+	return getPllValue(MXCLK_PLL, &pll);
 }
 
 
-- 
1.9.1



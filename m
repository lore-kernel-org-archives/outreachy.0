X-GM-THRID: 6335085342079582208
X-Received: by 10.129.73.65 with SMTP id w62mr7670182ywa.28.1475001997780;
        Tue, 27 Sep 2016 11:46:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.165 with SMTP id 34ls7676987ots.13.gmail; Tue, 27 Sep
 2016 11:46:37 -0700 (PDT)
X-Received: by 10.129.111.131 with SMTP id k125mr7661899ywc.84.1475001997293;
        Tue, 27 Sep 2016 11:46:37 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e66si832852pfk.2.2016.09.27.11.46.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 11:46:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so1065584pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 11:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hkqPS1hgpXEIZJCVewTbQDBn2U/NzZfHADwoIRXhwi8=;
        b=0+5dnOtRptPmpL+OURbcFlq4dHrXf48bdx3GoCRiojdrDkfIQMtQ+9bnXU6/kijXZI
         ySuCLya9byLOvEWhZQ/wnWv19qfpsyntxdcLtqWJPkhGcN0mCI9jITXjhJ564Lq28OFG
         Ey/cxtP5C2EHqB4nWD3moc9abVOXezIk+37kcfxuhSJkyvfs/cI4WFs1Y7B0F9OLa3YC
         veqg930qcDwd5Qs9/Rl2gUX06BsMgdARrH3NrAUswQDNvM64yK0PUiWFnaNtiLfYjRw0
         2UoRlQYikgfUjMoLeOO1O1zjXqsNfqMBXLmpzeR6eVck+EF46cFi6Rb6sz6kk5atw3Hk
         WsBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hkqPS1hgpXEIZJCVewTbQDBn2U/NzZfHADwoIRXhwi8=;
        b=ZKAAMksgtRu+Wsj2AHQC3PK0MQyPxnmS/iKJ2lxcxf/xn9B7gC1M6jCCNt7YvjzfBM
         6D8k09Xxjv1SpMUbPYH4SpkcjcIM3tjcFXf758muoQqHRGESRmH9TAC5zWjEfXRI2Bwx
         0IwC6NYgvpTjfoybcB6o3wtEgGCRHSLWzHI+G5VSaA+Mu5MBOXdVihm14lbcHsitLn6Q
         4cUS1qA1IN916xnfHWvQhUjzNogi4vFU9yew/wTznUeADWmmtt363Vrt1HNnFwyRpWXE
         PdgxP6U6hhQ0u4EW6oe5TgGzRwGcm+X7c0JRRAZcXdr084+sU50QbeUdVywbpzBmuyNi
         HOZg==
X-Gm-Message-State: AE9vXwOVEDP+T++XvxGqkTk93kKCWXTOSLAeJ+EHpw7fvz8aOKgE4qvRo+1IrC2l+pIXpQ==
X-Received: by 10.98.145.25 with SMTP id l25mr49698425pfe.63.1475001997071;
        Tue, 27 Sep 2016 11:46:37 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id xs10sm6658705pab.13.2016.09.27.11.46.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 11:46:36 -0700 (PDT)
Date: Tue, 27 Sep 2016 11:46:34 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com,
	sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: sm750fb: rename camelCase macro
Message-ID: <20160927184632.GA2811@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch renames a camelcase macro roundedDiv to rounded_div. Error found by checkpatch.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
Changes in v2:
	- Revise commit message and description

 drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index f557b6d..81df4c4 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -7,7 +7,7 @@
 #include "ddk750_power.h"
 
 /* n / d + 1 / 2 = (2n + d) / 2d */
-#define roundedDiv(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))
+#define rounded_div(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))
 #define MHz(x) ((x) * 1000000)
 
 logical_chip_type_t getChipType(void)
@@ -102,7 +102,7 @@ static void setMemoryClock(unsigned int frequency)
 			frequency = MHz(336);
 
 		/* Calculate the divisor */
-		divisor = roundedDiv(get_mxclk_freq(), frequency);
+		divisor = rounded_div(get_mxclk_freq(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_M2XCLK_MASK;
@@ -152,7 +152,7 @@ static void setMasterClock(unsigned int frequency)
 			frequency = MHz(190);
 
 		/* Calculate the divisor */
-		divisor = roundedDiv(get_mxclk_freq(), frequency);
+		divisor = rounded_div(get_mxclk_freq(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_MCLK_MASK;
-- 
2.1.4



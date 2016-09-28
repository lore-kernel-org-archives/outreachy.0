X-GM-THRID: 6335533732188913664
X-Received: by 10.66.12.168 with SMTP id z8mr10714860pab.29.1475106396817;
        Wed, 28 Sep 2016 16:46:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.101 with SMTP id t92ls2130096ota.29.gmail; Wed, 28 Sep
 2016 16:46:36 -0700 (PDT)
X-Received: by 10.13.253.197 with SMTP id n188mr7915554ywf.114.1475106396353;
        Wed, 28 Sep 2016 16:46:36 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id f196si1996654ita.1.2016.09.28.16.46.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 16:46:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so2618903pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 16:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=B7CidhkRcHFnQMixdEx+BgtUxomjvjqRUCfORlYQ8iE=;
        b=lNq6SOE9MuG/IpKPcbW01zciCrROm8iF6P7yeZRspgrToLAvpddfDju2aOMHJVsJsq
         WK2IvDaMhP4NrdjnM5WMVvlFHVSE/XtVjfJi06ml7tX9gNA+fbIxsbxMj2LLWuE79DaG
         EXrj1FutjLfLWqwYlvwl6h7hFs1URPwPZolvWXX4BrXNykm+enjR8IzceDWqYwhsNFt7
         uh3in/tIIk3Y8JsIPTkhOc49+atSht+giZXsyMODeOy8yUyhiqCfMZrhxA3NeV/zyDHb
         ZwFyf1KX88x0IMsLJ1c21IGGVh6Mw4thx4TWLKZ9MZo77YBguQ2RduQq+KexPCXd0Py8
         nYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=B7CidhkRcHFnQMixdEx+BgtUxomjvjqRUCfORlYQ8iE=;
        b=Oq98bhxLq0k5d7aHGcLnSsvf3QLGByUjZeLJaYhC3m4TrA2O943/yxcSCEapjCjDs2
         mZPsQ2fEltL3sgmiR+vchEpBjZHVmc2W6ZSHwnO2hR3eoWVq8IcaHF+DOPvpA9CdJtel
         fp/vlfk4O1VRRyPeCfnDzffMfyhevQgS6dvuTS4++8DK8/XF8EHCMne6WlF6eHQ/wjX5
         NTEgn8l2PPv3bG5Yr3BeF3OAb2CmaPy3jXORBMOa1J4H0ufN85dXXa3d6R9qTyUytnWU
         ZpnKYaQSUBnM3ieBP6jI+CgatNTXgdWBaeIgsyN3mV0IcNG/NzzhlOXWGgMxANv06qkI
         h2aQ==
X-Gm-Message-State: AE9vXwP12lei+2uQ4hYkXOgnQqNlKLBK5Jpqj6iOBrw5PBRlnXbwXDpR5ZZSENRbrYhFqA==
X-Received: by 10.66.253.133 with SMTP id aa5mr60676304pad.161.1475106396127;
        Wed, 28 Sep 2016 16:46:36 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id q25sm14980253pfj.48.2016.09.28.16.46.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 16:46:35 -0700 (PDT)
Date: Wed, 28 Sep 2016 16:46:33 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, teddy.wang@siliconmotion.com,
	sudipm.mukherjee@gmail.com, amsfield22@gmail.com,
	daniel.baluta@intel.com
Subject: [PATCH v2] staging: sm750fb: replace macro w builtin fn
Message-ID: <20160928234631.GA31844@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace the unique arithmetic macro expression with a built-in
function from linux/kernel.h DIV_ROUND_CLOSEST(x, divisor).

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
Changes in v2:
 - Change commit message
 - replace arithmetic expression with built in function 

 drivers/staging/sm750fb/ddk750_chip.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 3a0afe1..0c96a17 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -6,8 +6,6 @@
 #include "ddk750_chip.h"
 #include "ddk750_power.h"
 
-/* n / d + 1 / 2 = (2n + d) / 2d */
-#define roundedDiv(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))
 #define MHz(x) ((x) * 1000000)
 
 logical_chip_type_t sm750_get_chip_type(void)
@@ -102,7 +100,7 @@ static void setMemoryClock(unsigned int frequency)
 			frequency = MHz(336);
 
 		/* Calculate the divisor */
-		divisor = roundedDiv(get_mxclk_freq(), frequency);
+		divisor = DIV_ROUND_CLOSEST(get_mxclk_freq(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_M2XCLK_MASK;
@@ -152,7 +150,7 @@ static void setMasterClock(unsigned int frequency)
 			frequency = MHz(190);
 
 		/* Calculate the divisor */
-		divisor = roundedDiv(get_mxclk_freq(), frequency);
+		divisor = DIV_ROUND_CLOSEST(get_mxclk_freq(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_MCLK_MASK;
@@ -401,5 +399,3 @@ unsigned int formatPllReg(pll_value_t *pPLL)
 
 	return reg;
 }
-
-
-- 
2.1.4



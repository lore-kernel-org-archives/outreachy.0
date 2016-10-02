X-GM-THRID: 6336999371468439552
X-Received: by 10.157.63.161 with SMTP id r30mr5018979otc.1.1475447642224;
        Sun, 02 Oct 2016 15:34:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.60 with SMTP id i57ls2736851otb.48.gmail; Sun, 02 Oct
 2016 15:34:01 -0700 (PDT)
X-Received: by 10.200.41.168 with SMTP id 37mr5210988qts.26.1475447641825;
        Sun, 02 Oct 2016 15:34:01 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id d11si115047pfl.2.2016.10.02.15.34.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 15:34:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id cd13so5731126pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 15:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sIcil+Dg8TT5U4MY9KR+qcd3AwNqUJXVpyW6VI/yEzs=;
        b=l2a7FqNbtXUFC/4mnCt1x1YePhzw+W4uz3C8/jWymY9g2Fc4a0iPIBQAch/U8uusqM
         f6PY7/WTcEUkQ98ou5bsLJEop+/+pntW+NwIgCQqHR2WyWjisZzVgormVJXll7eMmmQv
         RaizwyxII9uNqr3EH+tg5sV13PDoX/W3rXxmPsaeBvCroakRl1U7aLhaXFfMnEM9lAuW
         Xi02i8JRCVLzOS4wKazm7SziB7Tt9CODOmuYg0HPBA+LVcY4/ZPzR0PGd/vS837W4YP6
         /MbNU/OqBqQO3ZJhz2Vt6MK7iasvH+LaVgW3WugKH0uW+jmReTwzj2CeqIeIcXq2MISb
         eq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sIcil+Dg8TT5U4MY9KR+qcd3AwNqUJXVpyW6VI/yEzs=;
        b=j68S0r567FeELc0RkAsJjfTdXI7pPSqzMmzDRO9UCiGCE1EBhOw1aeByW/fsfRuYtn
         6Fw/SEAaONhymUvYeDoN0dI7yI3OXKADGv5dJp3bRX3D7j27BqbYNFGWyHvyh1OoCO0P
         xUxLu6cScKfIxFlsJmMiMGvJIv7sYSvHbbGsi5jGRQHbe3ow8RpuBUc7QAZspKplFmXZ
         XjgiBipQp1sMFNJFMmh/kXwUtdt13zyCQUVC+alMkj7k6AhW7X0DsxZ6DZJ73IEPKt5E
         vXDiKwYvogzJ+nPH+vjAZdikisNVYv/JXRSkAUqAHh+RVG+cyTv+4DPXI2KerTCkavvf
         ngHQ==
X-Gm-Message-State: AA6/9RnPWjnE18jgRC9CtHnRy3TNnDuUvAOgdftKEJLDpj72FWH/t8CkEpllcP0/OJk8Jw==
X-Received: by 10.67.3.102 with SMTP id bv6mr32721852pad.61.1475447641628;
        Sun, 02 Oct 2016 15:34:01 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id sa1sm42246030pac.34.2016.10.02.15.34.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 15:34:01 -0700 (PDT)
Date: Sun, 2 Oct 2016 15:33:59 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com,
	sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: sm750fb: replace macro with builtin fn
Message-ID: <20161002223356.GA5653@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Drop a local macro definition and replace its uses with a standard
macro function from linux/kernel.h: DIV_ROUND_CLOSEST, to avoid
reproducing code.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
Changes in v2:
 - Use "with" not w in the subject line 
 - Specify the name of the builtin macro in the description
 - Explain why this change is necessary

 drivers/staging/sm750fb/ddk750_chip.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 3a0afe1..839d673 100644
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
-- 
2.1.4



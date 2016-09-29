X-GM-THRID: 6335855397011718144
X-Received: by 10.200.46.229 with SMTP id i34mr972928qta.60.1475181290721;
        Thu, 29 Sep 2016 13:34:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.198 with SMTP id 189ls925172iof.0.gmail; Thu, 29 Sep
 2016 13:34:48 -0700 (PDT)
X-Received: by 10.98.56.150 with SMTP id f144mr953475pfa.21.1475181288875;
        Thu, 29 Sep 2016 13:34:48 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si3594494par.0.2016.09.29.13.34.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 13:34:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 6so3991670pfl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 13:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=N0M3FUjGj9UzwcaZQg5iXSqihQxIrqoUcChUsatB5FE=;
        b=G6tIGgpJoDJQiGzAxIsddJlqZu1YD3vXlkm1IWvKtYtSOfhrU2WHF6DN9iFwf0ISUG
         Hq7AUh1rG7TGQPezr4DNXMKKsSww3h9QK4qO4yC6EIZsCBBR3k9CxwhwMmXE0zwBCi27
         f0u3xKI7rjxlCb5mA84QScmDWkjPSCCs1JkrzTakW6AB3VlTNJWMQqygDtJZ4hzrLDUy
         R4jArRhd5lVSumrElxRriMqhVrnEtHMfoSz1rs7asr2QDHGWIG358KGyttaI/FDRTYPi
         7+0g9GD1lcrpGAfsgRq4vVpDwsw90Be8Yd6CTD/DvQHwcaPvMUoPX7kUiIcjAZZppO/Y
         5vgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=N0M3FUjGj9UzwcaZQg5iXSqihQxIrqoUcChUsatB5FE=;
        b=gADaHyiqLI+mljYyRlNply+XwoOmR1VQ4LnHWxo5g9H+jbn9mYnClyfhz6Zjg9ju1G
         fM6dh7YzWcItF6Av9sKLPbAiwrhvlS45yt06q9qEitZyY64t4MpfIIXvPseVZNE3zpxM
         e2j7QJkLMzZB/sN3EWGV2n5Z63ZGamhLgFldMg8y2vt4GvmlOVJN3jGuKtK2/OyrSn0v
         axYIoZki6QhegOL+tPVfWolEy5Qj0u8lQ3ATShJzfUdm7Ixjvk0gwUT5bPBbCoeLDzuO
         +OZFFvDDvMuA81rUPF28t2vtFYUE5xSyDBTirOf8lml61x3x8IPDP7By1qa7BBDTosJj
         vkdQ==
X-Gm-Message-State: AA6/9Rn/VzZ9tdWnES62m+1iXgliKI67IQR3TYbLrn8dONLaLJkMfOQdi+o7+CuGRYIjLQ==
X-Received: by 10.98.207.130 with SMTP id b124mr5488284pfg.113.1475181288718;
        Thu, 29 Sep 2016 13:34:48 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id y9sm22340887pfk.2.2016.09.29.13.34.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 13:34:48 -0700 (PDT)
Date: Thu, 29 Sep 2016 13:34:46 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com,
	sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: sm750fb: replace local macro w builtin fn
Message-ID: <20160929203443.GA5594@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Drop a local macro definition and replace its uses with a standard
macro function from linux/kernel.h.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
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



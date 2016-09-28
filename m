X-GM-THRID: 6335506669412286464
X-Received: by 10.28.166.132 with SMTP id p126mr737098wme.18.1475100095526;
        Wed, 28 Sep 2016 15:01:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.71.16 with SMTP id u16ls511007wma.12.gmail; Wed, 28 Sep
 2016 15:01:35 -0700 (PDT)
X-Received: by 10.28.26.202 with SMTP id a193mr808799wma.9.1475100095073;
        Wed, 28 Sep 2016 15:01:35 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id 185si1646164wmr.2.2016.09.28.15.01.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 15:01:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id w84so7902177wmg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 15:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yIrCezp8EIPCS9QawP/W1wbD3Is9izPq+kywOmAZyKs=;
        b=005eVoKkX5YLrmhFdyjmEvxcAT6Va+wTtCTLXY/Y+lVVyYWAvf+g89LTUkD5piU+Uv
         fuC1ca/tFYx1PIbn05I6Yeg0PPyRgtFE0v+YVAWc4MwwRfYilJ6BJEYqcnLtV3YTVoRN
         zInuNprhZCv7+uuuAl8bCfYxxfESm8UVeFjpAvVTjFFmyOUuF9uBNOLJnMyQHvwJtO7A
         mqGD7Fts2dhjOfwQGVsZ+F4OcBv1ZIING5HQhXzZ1yR8mcsP18rXfbl+/6iu2x9vRslM
         uUh55JTQsZueLdo+BG4TcLym4DbzopnFRqaeAfFjP1xPd17D7DYMUb1vTHodMWlhRLkW
         37Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yIrCezp8EIPCS9QawP/W1wbD3Is9izPq+kywOmAZyKs=;
        b=bH/DCnpeeRkdw+O5ylXVMv1z5x7qSbJHonIfBoQ015DbynWOsV24gK3TV/tRo/+6f8
         m1psZ+qKQBjWZWBaZDZMe3TR4dxAF4AgT7zaaDinoQXBHCRz0BSxDLes5iX2o+BxQ1MZ
         mlACovl+XppnnrUS8H6PVkKHWgtT/Ca2/zAwCUjXthaFtd9FfSiP0NcSeosFcdm8WiTm
         bFhHGavi/y8wZzf2u6s8S7sudnUvFHORcbxFXalewpp3JD7VkcJS8eQTduAdBNft1YM6
         DC8qOfErHVJworF1Ptv//vMT8C5yGMtX9QfdnFUGfVdhSq81/LGeQB1z64IYOX9Y72ZO
         x+sw==
X-Gm-Message-State: AA6/9RnRxzqoEOgNhOmNT/HBw5syb4YWw39IY9E8+qFDgR8C1DJFGMPnN6Mnze2JO+kohw==
X-Received: by 10.28.54.193 with SMTP id y62mr9576864wmh.96.1475100094873;
        Wed, 28 Sep 2016 15:01:34 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from kheixx-VB (71.red-83-32-143.dynamicip.rima-tde.net. [83.32.143.71])
        by smtp.gmail.com with ESMTPSA id n28sm10939697wmi.2.2016.09.28.15.01.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 15:01:34 -0700 (PDT)
Date: Wed, 28 Sep 2016 12:56:48 +0200
From: Keila <laurana5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Add a description into Kconfig
Message-ID: <20160928105648.GA26845@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Signed-off-by: Keila <laurana5@gmail.com>
---
 drivers/staging/board/Kconfig | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/board/Kconfig b/drivers/staging/board/Kconfig
index 3f287c4..8951531 100644
--- a/drivers/staging/board/Kconfig
+++ b/drivers/staging/board/Kconfig
@@ -1,8 +1,11 @@
+#These a Linux kernel configuration item.The items we can configure are:
+#OF_IRQ is an interrupt requests item
+#OF_ADDRESS is an device address item
+#CLKDEV_LOOKUP is clock lookup from devices tree configuration item
 config STAGING_BOARD
 	bool "Staging Board Support"
 	depends on OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP
 	help
-	  Select to enable per-board staging support code.
-
-	  If in doubt, say N here.
+	Select to enable per-board staging support code.
 
+	 If in doubt, say N here.
-- 
2.7.4



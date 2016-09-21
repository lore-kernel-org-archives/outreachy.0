X-GM-THRID: 6332856362790289408
X-Received: by 10.129.168.197 with SMTP id f188mr18876896ywh.39.1474483023242;
        Wed, 21 Sep 2016 11:37:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.195 with SMTP id g64ls4773831ioj.37.gmail; Wed, 21 Sep
 2016 11:37:01 -0700 (PDT)
X-Received: by 10.98.100.208 with SMTP id y199mr7943682pfb.15.1474483021597;
        Wed, 21 Sep 2016 11:37:01 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si8025979pfw.1.2016.09.21.11.37.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 11:37:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 6so2698722pfl.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 11:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bdMmVzuU5CQXF7leyHToZqTgsd1ETrfbYcvO2c4j9Pc=;
        b=rFkaRHRy30Mms4yE6nnXzCyrH+2pGWVQiYxgHSHDyOVDAQ940XAZuFLLBUgR8+CgQs
         guC8kC8qVVG1hSq4LEP0av8JFf9AxQCYWjO5mVpVIkxddAZ/XxmuuQIp+Hl3PJEC1/tK
         HdqKQMDYL8RK53D0qQkQo07t+dJsWn3SE9eMZKW/8JsCfnkS9vhsI7MbBJUipxlaeTIV
         GwHoRT08xVNy5knqGlpVhZ534TIjIIw2JoZ+CGfCJW2W0xm/sIgf8zh62ASHDTRKzSEd
         Y+yZtgDKASVynh6qGUNZX75gpfDh+aEscWNzHiJCi6++IuHsjcubJ8u7wLqh1Y4qx1ZE
         Yx4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bdMmVzuU5CQXF7leyHToZqTgsd1ETrfbYcvO2c4j9Pc=;
        b=kMm6xNjeCyvVr8xm7mc4Sn+4hQC3R4YkMVJV8G2o8fFhBWc3doRglC2NLguO3hYzuF
         ooWV0mguSyZuCgy1xrccTsIOqvMX3MUQzuCuykYYBIiy5P5jtmAWbgwpWz1P3gVfnfjo
         xbw6iJZMZ7nenT6C8ikNS0/7VD1vlwp32N6nmPB2nxV9chzhhH+xI3cDy9u8HyTPAeEo
         Yy9+k3u079TUrpHmxK5sejdrUUm6kZsI9697nQAY0mMkmsel3hcj1tXGEuypUJbmwOcz
         j0xR26WWe8JLEi0i3+w9vciwGckH2Ku+Za1ML7X+IoAmFqlQt+Mq66H3sVwEm/JLJtd5
         DZiw==
X-Gm-Message-State: AE9vXwMIidoRayKK5drFjEPvhWTYQNbVECD8mxYf2gSQ/QrwjXMxbypZFTMC2WTAYnbRfg==
X-Received: by 10.98.38.4 with SMTP id m4mr67654148pfm.47.1474483021273;
        Wed, 21 Sep 2016 11:37:01 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b69sm14376083pfl.69.2016.09.21.11.36.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 11:37:00 -0700 (PDT)
Date: Thu, 22 Sep 2016 00:06:51 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lior Dotan <liodot@gmail.com>,
	Christopher Harrer <charrer@alacritech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: slicoss: Move NULL test closer to assignment
Message-ID: <20160921183651.GA32744@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the test to check if a variable is NULL, to right after it is being
assigned, rather than some statements later.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 714e6e1..062307a 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -2617,15 +2617,15 @@ static int slic_card_init(struct sliccard *card, struct adapter *adapter)
 					       sizeof(struct slic_eeprom),
 					       &phys_config);
 
-		phys_configl = SLIC_GET_ADDR_LOW(phys_config);
-		phys_configh = SLIC_GET_ADDR_HIGH(phys_config);
-
 		if (!peeprom) {
 			dev_err(&adapter->pcidev->dev,
 				"Failed to allocate DMA memory for EEPROM.\n");
 			return -ENOMEM;
 		}
 
+		phys_configl = SLIC_GET_ADDR_LOW(phys_config);
+		phys_configh = SLIC_GET_ADDR_HIGH(phys_config);
+
 		memset(peeprom, 0, sizeof(struct slic_eeprom));
 
 		slic_write32(adapter, SLIC_REG_ICR, ICR_INT_OFF);
-- 
2.7.4



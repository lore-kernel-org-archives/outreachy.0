X-GM-THRID: 6252325247022792704
X-Received: by 10.50.109.136 with SMTP id hs8mr24579178igb.12.1455732911500;
        Wed, 17 Feb 2016 10:15:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.162 with SMTP id g2ls1822379obe.63.gmail; Wed, 17 Feb
 2016 10:15:11 -0800 (PST)
X-Received: by 10.182.92.226 with SMTP id cp2mr2826714obb.19.1455732911125;
        Wed, 17 Feb 2016 10:15:11 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id u66si359057pfa.2.2016.02.17.10.15.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 10:15:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fy10so15217260pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 10:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jMnC1FTL7NiazpmXns5CfnXBvT+HRy8ySAIPLtERNPU=;
        b=cLbnEsePGI+6OOlnIvKoID0KH9H4THTbjG2XVCYrlAH8eNbYU+IgfgSJpfmfoEn78Y
         NyavuCwSbdBoQkPRRJaMvofEbkivQh/V3F/PboLSnwJdYjxGbs9Ll1MuMx49lXdhEbyH
         P8wc/AkCd/aerXcsqkwktsPtKvZxRoylY8iIv84E90R8g2dxdAY2TMI7VE8zZZKIIIbU
         QSo/kjAPZL5vJE/TAJgP4jl0IaRt9JrIciPAoORKzxcelrLvlHKxdFiOvWlKs6EGvO4F
         WBRP8EsH8pVUfxzcpJQ/T1nYyuLxsYOiGNC4yG01dwaHk3+eLrmLnpJJS7T2eJ664Ht4
         ks1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jMnC1FTL7NiazpmXns5CfnXBvT+HRy8ySAIPLtERNPU=;
        b=IRSsF5xKiJ6H44x7QKHWYJnEJUp1dG2a1/EJR41vOF43wdzhfBAJgP12bKWyuUGIqZ
         mdPTB17MuS9HpUV1wIrP4ZahEP41LOVTvq1G/jpiE7Mt+wD6amcYuv1SXePG/lqejiNZ
         T9HdatiSA8oHPuhd1XNLhvb67aOwScllE0ArSQ1RIln06EJxlFXDdKW4m8B2gndN66Ou
         bHoHV6IVOWOSm5UYBOI8YcF2iXeOa8PNt4Q1tFFOiV73+dioueCE+6zhvLfaw1p0wP5w
         Gry1T4lmYuGc/J3rbXKjtOZcp0rxcUS40MQNL24CMM7YWAQrY8eytC8Q/IMCtY/VpiPT
         LOTg==
X-Gm-Message-State: AG10YOT4uxa2aPkn1u3CFJf+5K/KGv/ZLhrc1r+fAhuWFoctCk0+Gfi7lY/nxsGz8i3k+A==
X-Received: by 10.66.218.225 with SMTP id pj1mr3963911pac.83.1455732910979;
        Wed, 17 Feb 2016 10:15:10 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.141.200])
        by smtp.gmail.com with ESMTPSA id e20sm4332583pfd.4.2016.02.17.10.15.07
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 10:15:10 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 17 Feb 2016 23:45:01 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: comedi: drivers: Delete double assignment
Date: Wed, 17 Feb 2016 23:44:59 +0530
Message-Id: <1455732899-17222-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The two assignments here are identical so one can be removed.
Found using coccinelle:
@@
expression i;
@@

*i = ...;
 i = ...;

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/comedi/drivers/dt2814.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index 66705f9..e40ad56 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -249,7 +249,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 		return -EIO;
 	}
 	i = inb(dev->iobase + DT2814_DATA);
-	i = inb(dev->iobase + DT2814_DATA);
 
 	if (it->options[1]) {
 		ret = request_irq(it->options[1], dt2814_interrupt, 0,
-- 
1.9.1



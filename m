X-GM-THRID: 6523850474748116992
X-Received: by 10.46.125.3 with SMTP id y3mr156822ljc.4.1518952305532;
        Sun, 18 Feb 2018 03:11:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.80 with SMTP id 77ls203117ljj.12.gmail; Sun, 18 Feb 2018
 03:11:43 -0800 (PST)
X-Google-Smtp-Source: AH8x224H+LrI4HfCHkK1A+Y8FJu13uqv7pvrD3097uCGzml1L7yktchn/GyhFgod1yFFVLj1G9IJ
X-Received: by 10.46.43.18 with SMTP id q18mr620429lje.27.1518952303792;
        Sun, 18 Feb 2018 03:11:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518952303; cv=none;
        d=google.com; s=arc-20160816;
        b=rzh6eI9GRit8nx8TBufpuhOYVkLl/4KGLvfUtePnvG8K5GQW5z8Oicx5ZtmHoNCZYj
         op7LSFeYws8GUDyh3w3NAT2T4lcfAjZZG8MRgaKbypR7MaWxf5wWqjQekYIHVcwg7qxd
         JSFQJ/FWj41bK9wBD9g5XrqfoEIOK6vcqc78NLwz1O8d2f+zQH3XEBXymGeW7iSGWWry
         gsazqPCX2HcEmZ4Oq2VwBikaDoZz/9xKzrUSJoLSvlKQlO8jBK9N09bcRGS+ey1PriHh
         t1TDmtncBcX3vvAM22cYlKOFPmiHW3fkikO9xQEHnV+XfjrmXgyPNB6uFDURQAd1MU/Y
         jsgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=qC2V4VefPCybDJi2GejnzMTMF6lnxj4NSMlfM+Cr79g=;
        b=vNuAuj8Kl2A2u23AtNz04yNd11LPeSFTOQIBJtC/Dv9fF6dHW/aZnvx559l86i0gyV
         u158fqTuD6TXP9pu5M2ex1sVnkWEyTwCOVwWTG7jeFRkPwTMGKpRhekx9pUPriAxMBOF
         ernhPNcvQjMP+JUnHBHy9xLvv34ECj7i2zTKEwEqBLVIdf3fF5LZCAg2VssSsWJFW5e7
         jqH1nWlPJdw/VtIChcl/jNt9Jy0cgmzsB18S+7haYt4biEHizmHiU8AOlPx0XiIxr1xG
         YPk7VdsXLRtdGx+00n2sOW/MU7FybazMPKb54/O9IiDCp7iTqIQ2f89xihaUrWU4hY5V
         1l9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qgDsGa/N;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id z10si41036ljc.5.2018.02.18.03.11.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 03:11:43 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qgDsGa/N;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id f3so10251002wmc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 03:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qC2V4VefPCybDJi2GejnzMTMF6lnxj4NSMlfM+Cr79g=;
        b=qgDsGa/N4Fb42QMCDE4mUVd4kfYYTfd0ICXC+mHFQYOsl+XrQQDeQR0Cmz4cNvtqB8
         1+TQzYzI9C2p80Iysc7o1hXnd4xKuv3AWZsQ0X5t9ib235J9iPmHxyUFTq/Zj3AS1rPG
         fJl801k0m9hdso2cHnJ+rTY5S5zuBEQVRH9USLdnvZgc546Roo9Xz6L4dS7BCmA/Kron
         zNbL5np8hdZmKIp5ukD0Tp+24dyaZg31/5erqhSFbvZ0iRVofnN6k9kkzQENchJ2H6zl
         Uo8ltz5c2AvjflKLYy7YQex9pMvxdBsVlxCCxJI/e5hZDBoiBrCAWNtBbkmITDOyMI8b
         XnlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qC2V4VefPCybDJi2GejnzMTMF6lnxj4NSMlfM+Cr79g=;
        b=UasNXhhtXppabRjk2g9P3p8l1kCjtTxgsKHhUxlXzQJIjogCas4Rj4FKBfFhTWkWFt
         yvkp4OLAD9SnLh+jEJhVoy/TfBK0Vn9/kDuNhXLLDvxkZBFWUI2HtK7Urw6h3uLcL1am
         gEJV10+cXPnd22iSAl7j3/7ra0keWAxtIWwHXVbBfHVcULLkULmDoLy2/AwVvCjcya9y
         +FIWPBFcdbwZBEtCtGJ3B/P318t6batwA5HTtq9HlU+SRlJZ9tvhnuSMFGWPfZ8qG3Ss
         mD2UsqhbVwdC7aor3FVZN0FMnkIWoOuB2Oeyfn3MfwdzOY8bP5f2A6P6TeFShBeHVN2L
         XnUQ==
X-Gm-Message-State: APf1xPDXBSIRPnDdwK5iL7sYcRkqJi9BMgfGYHyyDz5kGqsFr5pbTSqM
	tivhFpebe1b6wKmWQ2SAXdoBkshOM94=
X-Received: by 10.28.45.74 with SMTP id t71mr8922391wmt.90.1518952303009;
        Sun, 18 Feb 2018 03:11:43 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id i6sm20793208wrc.46.2018.02.18.03.11.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 18 Feb 2018 03:11:42 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH] staging: comedi: Use '"%s:", __func__' instead of function name
Date: Sun, 18 Feb 2018 12:10:41 +0100
Message-Id: <20180218111041.7762-1-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3

The script "checkpatch.pl" pointed information out like the following:
WARNING: Prefer using '"%s...", __func__' to using 's626_ai_cmd',
this function's name, in a string.

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
 drivers/staging/comedi/drivers/s626.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
index 0b3cfe934e14..ec54dc3e9ad6 100644
--- a/drivers/staging/comedi/drivers/s626.c
+++ b/drivers/staging/comedi/drivers/s626.c
@@ -1700,7 +1700,7 @@ static int s626_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)

 	if (devpriv->ai_cmd_running) {
 		dev_err(dev->class_dev,
-			"s626_ai_cmd: Another ai_cmd is running\n");
+			"%s: Another ai_cmd is running\n", __func__);
 		return -EBUSY;
 	}
 	/* disable interrupt */
--
2.14.3


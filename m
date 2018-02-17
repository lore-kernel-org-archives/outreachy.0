X-GM-THRID: 6523432871904935936
X-Received: by 10.25.27.209 with SMTP id b200mr612114lfb.27.1518855074310;
        Sat, 17 Feb 2018 00:11:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.54.2 with SMTP id d2ls391528lja.10.gmail; Sat, 17 Feb 2018
 00:11:12 -0800 (PST)
X-Google-Smtp-Source: AH8x226nSskEZCqi7fQ6luJhs74K6IfEWv/3ZF01nB79WmB1kbulKjQuXgIDj5PQtj1WVgSLfzCK
X-Received: by 10.46.44.1 with SMTP id s1mr528973ljs.40.1518855072894;
        Sat, 17 Feb 2018 00:11:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518855072; cv=none;
        d=google.com; s=arc-20160816;
        b=jecXHrXpDbFtBQM8t50qxQ0BePss7BZJ9tzRp40S09lx+rlSN9gXvP0dC1zGt+o5Kf
         Oa5R0iBGpWqZ//332B3OPi5aHN2gnq/9WXokmvL6eBgwGwXR+2FWhxMWN+wlCWa4Jf5G
         W2pouxukwJihYsF0zR0ho1dNSuw3cHP34y9UjKho2Wja0kMnND+mQJLujZyvAsi+kn3e
         wsD+e4q4+rk54IQhudeiYUhIpnItcKMUMJ4Zo5hK5KyGZd8/vgAhdcgRM29f1O9AG3ig
         Kh8PwEUF5ImYxa3O86hPz4klzdjx3BFGrH/qZCRYN+WKK8XsgHSXqcIRApH/0zQk8Yrd
         HZ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=jmfWPuI8jAwSapVOlT62VgHaOCNa+wF3B0d/7fnXjkw=;
        b=eT3YP5D5SCx+BHYolTqd2vHoNHSPeubEK9N9l1v2aju62gSHcNFOcagctjS+pdEb3a
         Ztn2b5kR7IoeaZBb2/kUQnWUvibgjefTLjI/D38fNgyzl7pdey3j0mDBi55o5oiqhl5m
         LUxmdhLMBtiBzDLsF2A208K4jLw2c+HtkXOqXW0/tI7+bAzHXTZUMZXeRUcWsFAdjpey
         2pgniUnKtdIMo5yp57bQ2Qpx+dUjOk+lwRjFFxPDvXR6ou1KtWX3IxlHQRBoQxBLwO5E
         bCrf8g8hxYZ7Dl0ZpVE4QFzgijzfSV/8jTv+oG73OTl29SvuHMursEpfLjKv7GBbG5dz
         batQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMDvdFDv;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id w7si656642ljw.4.2018.02.17.00.11.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 00:11:12 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMDvdFDv;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x235.google.com with SMTP id v71so6768269wmv.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Feb 2018 00:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jmfWPuI8jAwSapVOlT62VgHaOCNa+wF3B0d/7fnXjkw=;
        b=oMDvdFDv2JHEuvgK/dDo820hL7XIIZzbAq7aJz4UHxymlN1fslG6LlicDAz1lrFNSQ
         bWOTzwyBc5PqVQLWVMGkiFi2Dp9+VwQtJncnis5hTZ+bskSXuC+m2lFfjm83qxibOszn
         s/emnp8ReNKD22YejCo+WKizygR+GA+ULWaF0qa5kcdpSYiU8nLb2M0XBO5Snrkk6zp5
         QXLlEP5psY5AlMiPJ52qW9k5svgqN3d5N5JI4xEUuHqKHMTkntxq2IR0GskGCY1XmiQd
         TNmS/suqA/Bhcj1A01sicsQbtB2JdANBAIn/9jQDL8b5r2mzfXe6JuWj2NUaACFXUvmO
         k9mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jmfWPuI8jAwSapVOlT62VgHaOCNa+wF3B0d/7fnXjkw=;
        b=dKrpbH2P9KuwGuagzyPYb3eDWp702Cf1/8DviK1+naYRgWfb2nNOCNLc3/hea5j9ZQ
         cW5ZFgpsaVWw3nEhefS3q5cT2rAjJnDrg8Lq3LygUfbiuhWxlHyZ5GVEw6PS/Gl/+bA4
         PRwoqm0txwmOjQCvMPEVZrRFzkL0eFpogiArk3pWy3+PDyBGlQr37qaWfDPaQIbB1ZFT
         H9JjNT3g/+Vw1yOTrnm++/WTo7UG6ZQXBN3NcToXvjzr8BtyPw76wa8SoFUnA4M0kzd1
         7P64opAM1TSn+/wVRvjR+8ukgAtGY/OblVZf05TVXFhXxbidrK2dgP/QjkeIpRGOKbkw
         plGw==
X-Gm-Message-State: APf1xPDx4PQBJNFJP3fN4hhzLHmqydT/gza0bWNCGxg0oKLaNxjzt7lL
	g5/RSrr5foqi92B1c5B6zJA=
X-Received: by 10.28.47.73 with SMTP id v70mr7179436wmv.41.1518855072628;
        Sat, 17 Feb 2018 00:11:12 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id i4sm14672425wmf.3.2018.02.17.00.11.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 17 Feb 2018 00:11:11 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	outreachy-kernel@googlegroups.com,
	Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH v2] staging: comedi: Remove a newline inside a dereference
Date: Sat, 17 Feb 2018 09:10:47 +0100
Message-Id: <20180217081047.5763-1-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3

This patch fixes the checkpatch.pl warning:

WARNING: Avoid multiple line dereference - prefer 'devpriv->ao_buffer_bus_addr[i]'

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
Changes in v2:
  - Change the commit log to mention what I have done.
  - Remove the unnecessary cited lines from checkpatch inside the commit body.

 drivers/staging/comedi/drivers/cb_pcidas64.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index b657beedd5ff..eea44435a2aa 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1490,8 +1490,7 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
 			devpriv->ao_buffer[i] =
 				dma_alloc_coherent(&pcidev->dev,
 						   DMA_BUFFER_SIZE,
-						   &devpriv->
-						   ao_buffer_bus_addr[i],
+						   &devpriv->ao_buffer_bus_addr[i],
 						   GFP_KERNEL);
 			if (!devpriv->ao_buffer[i])
 				return -ENOMEM;
--
2.14.3


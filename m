X-GM-THRID: 6341982237152509952
X-Received: by 10.157.40.97 with SMTP id h30mr4167230otd.70.1476607806788;
        Sun, 16 Oct 2016 01:50:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls10592498otf.43.gmail; Sun, 16 Oct
 2016 01:50:06 -0700 (PDT)
X-Received: by 10.157.6.12 with SMTP id 12mr2424838otn.98.1476607806451;
        Sun, 16 Oct 2016 01:50:06 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a143si4365133pfa.2.2016.10.16.01.50.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 01:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id i85so7171694pfa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 01:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=63kjUP8cxrCraGJe27zlyYIsQezVetOLRmyJacT99RU=;
        b=nG+OV7RDUSEIENAhotM1GZlXcAOj9YXHr+VI+KB4Mjxy2JjQeTEBPJnnNSw8OImlnS
         ML6sdAvMvX0c9bWfPJrKiSpWuzKL9F5qnrvOlp3RARNmc0m12QIvWcMhbPUyupmM+7Jy
         7nOmTKmBuyhymLWCnmkYpcN37uC5KcrQik+w84HMchyPcF/HX42/PRJxnupy9YFkZnBG
         YmVr+VgGdTCaHUmsStLkDKHoSH3k+1g8jxrXFybfHrzTWQFo/+Qg1j0u8XBmC+xQpRMY
         E5rIf1sbmTRJ5jTRcKhjS01lMlkUcm3y007DEvQcfOquafSvjilKnoZsnkuiiScixeKX
         uTgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=63kjUP8cxrCraGJe27zlyYIsQezVetOLRmyJacT99RU=;
        b=ciAS1LNxXStwKM8090R4XlE4JK8Af7sQvu9WFN9DFsIa0F3agYkxndAfKUVstxsH92
         suhWRATS+pYxmQLZSJZpM8goMFsA0tIQN+sV54ts6nzjT6iRcKLO4sidJxebCofIkUx7
         ajvxpsPqRW5qCbvBBD+LTMcAaAl8fzrnQY44FmQvqwN+cK9oz5XRuj7ACQSKnMP8Y2I4
         UTYG5mJYKavJhIqxKcEseoT+UymtNwwQEn6rLJ0UyS1FNEWkkfUN4q89K5nvs7AIkvwR
         QAGGR6u7jslvpvwWbgmsN8ANH3Iys2yH6ncRa8SrxvrxAHqXmlmaUWfaPX7kGT2RqN9f
         irYA==
X-Gm-Message-State: AA6/9RnmduXFEGkmqtTJ1PzkkZk1C2xNz/+mDvMGy5c1EJR6gkMK4HOl1u5x9q94/jbeeA==
X-Received: by 10.99.126.11 with SMTP id z11mr25122415pgc.46.1476607806077;
        Sun, 16 Oct 2016 01:50:06 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.225.216])
        by smtp.gmail.com with ESMTPSA id j17sm39502538pfe.79.2016.10.16.01.50.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 01:50:05 -0700 (PDT)
Date: Sun, 16 Oct 2016 14:19:48 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: greybus: es2: Use kmemdup instead of kmalloc and
 memcpy
Message-ID: <20161016084948.GA25576@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces kmalloc and memcpy with kmemdup for duplication of
memory.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/greybus/es2.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
index 071bb1c..8eabc71 100644
--- a/drivers/staging/greybus/es2.c
+++ b/drivers/staging/greybus/es2.c
@@ -175,10 +175,9 @@ static int output_sync(struct es2_ap_dev *es2, void *req, u16 size, u8 cmd)
 	u8 *data;
 	int retval;
 
-	data = kmalloc(size, GFP_KERNEL);
+	data = kmemdup(req, size, GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
-	memcpy(data, req, size);
 
 	retval = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 cmd,
-- 
2.7.4



X-GM-THRID: 6341813521235312640
X-Received: by 10.28.45.4 with SMTP id t4mr232417wmt.15.1476568524849;
        Sat, 15 Oct 2016 14:55:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.6 with SMTP id u6ls513280wmu.3.gmail; Sat, 15 Oct 2016
 14:55:24 -0700 (PDT)
X-Received: by 10.28.26.10 with SMTP id a10mr226192wma.20.1476568524208;
        Sat, 15 Oct 2016 14:55:24 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id f1si332619wmf.2.2016.10.15.14.55.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 14:55:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id b80so3889608wme.2
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 14:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=j5EgK5velWyyZHmx0SiJ7n6KywKwby54gCY2q5lWuEw=;
        b=PU9701oys03Xf7pZX+nNHgsF7KtNT/Hek1t0r6ganzWD0rGLOJN3ESoURtxqeUFyag
         D87KsfZOPypESXqzZCm6LSs+GPdTiWAm+nOvwfIHfRW+6rLGInwl1KAWJ5XNKoenTjzn
         wATCk17U8auMShjAjzGHWT+mQ7NrB/B3VBvAPZ88dPt4zrPtUL5JYmQTibk9QDiUdVQc
         enCWyZXyNuQm9wkrXdwHQuFPThbXWkkOt+ZoxgAcfnENsQcrL3Acms3o3kbIeQw+JywJ
         wd7ttPhvbkNmoGbKhhB5dzQHz8ATdIL89NUzY5LhQYt72msuzV00WdPDYaHcFtmfKKg2
         yjrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=j5EgK5velWyyZHmx0SiJ7n6KywKwby54gCY2q5lWuEw=;
        b=Ki9JnUmXi83Qlh5ZS/9B8a692tno4vjJD39obJOQ6XyW0VHa6CWk1ZRXPNYAYaHiWC
         zwOuKxHFVFluLnYTg3QLzPPDlA5iABGhnTjCLrhm2ClpVzbl/k28Xf4ksC2Ut6Bc7bxM
         6I7hYeQb9hQBWrtWDjudcggy51oXOQ8qtGJ3JihPmjb2W+99RgWHSOl/u54tPtJahGYz
         zJPDRv1ml0Rosje1UTsKbyGJ8kDVCz9MNy43j9qzxa8jcEJNXIIDvbIZ8KgB5jOQwc+B
         cya53RhXRvJjRayXissu8/d1De1JJfDsWP3c+XNiD3xeSeO79x0K0OIcSlfmEdjcGgG9
         GMTw==
X-Gm-Message-State: AA6/9Rl2en+/UCuNOwmqMGi1sWarN+PMxWaM8FQkP6/QYqm1F9rBCl/t+X7pCTaQlhOO5Q==
X-Received: by 10.28.156.73 with SMTP id f70mr2849987wme.45.1476568523772;
        Sat, 15 Oct 2016 14:55:23 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id l10sm5292361wmf.4.2016.10.15.14.55.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 14:55:23 -0700 (PDT)
Date: Sun, 16 Oct 2016 00:55:22 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vt6656: Make a read-only structure
Message-ID: <20161015215522.GA7583@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch add const qualifier at the declaration of the structure.
The structure become a read-only data, this increase the security.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 0594828..fe84da3 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -85,7 +85,7 @@ MODULE_PARM_DESC(tx_buffers, "Number of receive usb tx buffers");
  * Static vars definitions
  */
 
-static struct usb_device_id vt6656_table[] = {
+static const struct usb_device_id vt6656_table[] = {
 	{USB_DEVICE(VNT_USB_VENDOR_ID, VNT_USB_PRODUCT_ID)},
 	{}
 };
-- 
2.7.4



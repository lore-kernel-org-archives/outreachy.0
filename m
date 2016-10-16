X-GM-THRID: 6341957980641034240
X-Received: by 10.129.155.203 with SMTP id s194mr568651ywg.31.1476602158687;
        Sun, 16 Oct 2016 00:15:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls10841271ota.40.gmail; Sun, 16 Oct
 2016 00:15:58 -0700 (PDT)
X-Received: by 10.159.35.83 with SMTP id 77mr1575769uae.4.1476602158376;
        Sun, 16 Oct 2016 00:15:58 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si4290067par.0.2016.10.16.00.15.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 00:15:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so10475239pfz.1
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 00:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0AakvMEXToR7Czb+Gh1LPb9IUz8DD2OqvkL/Epwyfo8=;
        b=WuueI6e662H4Yov13/QrOF9yk5orrV5wXzf7UkvNVOWcEo8ecI1IZxHMEvDYF4SluU
         Q0nr9vac45NV/I8Op3Ewc4+y1+DTLXYS0p1HjWPwRVJ6xKvv6Wla+/7xO9oAKnPJSJWg
         PKFCLIUgNll20cOOq3fgQy+mAV7qDB7+198wlmU6+u3wT3flU2kUiCFj2FBodANQaW9E
         J570oi/TDXFaTOyMdJV7sgXXGAC5W6QwJEMdtttGBD3uGN42stwp88zwZ/lJB47nP3go
         6nMxFn400wU0ejjr1Vf8biTWMTniGCs6UFJhOxCMF7H15VXbQGhV+LUI+NRlwMkvlzux
         MoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0AakvMEXToR7Czb+Gh1LPb9IUz8DD2OqvkL/Epwyfo8=;
        b=e7C4I02+q0UcPcmujy3iyTC23yKX3UTzdYgCe20yzQFDsH8PvbUrXqLFRSQHhP3ZZA
         JrffsVE6Gnc+/K8WM2ylm5y51XJCoanz5QTuOMnaJh6+0OXLNunZlOJCkSjptAcb4pxW
         FzXieQnDa32MJl8STmbiQjKpKCjVNHDO6xvXqv/nXp4koa1WnPuCFA705w8/lKjCKE7B
         n5OD0oKjRWGL90CZPc14agAWpGgXAcAd3alJqeaf9IBMHFeRgmOg10N8OKKTlO7NjzJh
         T/ypHChsAX6pr5XmdQIgpnL0MklQBuntVO46ShwqNOm3Nz5t8fRcsNhe9btVF8+pNLuy
         2dsQ==
X-Gm-Message-State: AA6/9Rli79sOhvFrhJu5fNGp1jStJMmpB+l6xNTyjkBJQ5MXzZ2XlpUqJcm3o55qbdivnA==
X-Received: by 10.98.14.197 with SMTP id 66mr29509074pfo.123.1476602157966;
        Sun, 16 Oct 2016 00:15:57 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.225.216])
        by smtp.gmail.com with ESMTPSA id y125sm39017428pfb.16.2016.10.16.00.15.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 00:15:57 -0700 (PDT)
Date: Sun, 16 Oct 2016 12:45:31 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_services: vchiq_arm: Use ARRAY_SIZE macro
Message-ID: <20161016071531.GA15510@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch uses ARRAY_SIZE macro instead of division of two sizeofs to find array size.
Done using coccinelle.
@@
type T;
T[] E;
@@
(
- (sizeof(E)/sizeof(*E))
+ ARRAY_SIZE(E)
|
- (sizeof(E)/sizeof(E[...]))
+ ARRAY_SIZE(E)
|
- (sizeof(E)/sizeof(T))
+ ARRAY_SIZE(E)
)

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 5ec7c96..f7d9513 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -190,8 +190,8 @@ static const char *const ioctl_names[] = {
 	"CLOSE_DELIVERED"
 };
 
-vchiq_static_assert((sizeof(ioctl_names)/sizeof(ioctl_names[0])) ==
-	(VCHIQ_IOC_MAX + 1));
+vchiq_static_assert(ARRAY_SIZE(ioctl_names) ==
+		    (VCHIQ_IOC_MAX + 1));
 
 static void
 dump_phys_mem(void *virt_addr, uint32_t num_bytes);
-- 
2.7.4



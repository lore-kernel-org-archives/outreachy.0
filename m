X-GM-THRID: 6329770130111725568
X-Received: by 10.98.22.149 with SMTP id 143mr157695pfw.10.1473764453143;
        Tue, 13 Sep 2016 04:00:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.57.11 with SMTP id g11ls66229ioa.20.gmail; Tue, 13 Sep
 2016 04:00:52 -0700 (PDT)
X-Received: by 10.107.46.157 with SMTP id u29mr120392iou.27.1473764452734;
        Tue, 13 Sep 2016 04:00:52 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si3139396pab.2.2016.09.13.04.00.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 04:00:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so9090911pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 04:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=h5AChEJURP6A0aheoEV1hgTVM9M6XofNotSMFbWxrwM=;
        b=wREoxnXxAKuWHjqNrZD3n9SlN4U0MXRW2L3EMSYtOUv32+TGvFc8RaRhaiF5yHAmJQ
         7nVyeWg7UoSnYCeN4TRqekF6pKm7UyV4U9Xpj7w1/2uFsY03vLW2nvVDvCBtiVmyY6bn
         oCY5+T87SzCmV19Fe9uBrZnel/qCrJfpmriihpRI6mfPGeZSFIsGzp+6r3z44gB0NmqP
         WCB2tX5RXygMa2JMvbhut1jCzb0Z88h2IEc3W/wSF1SKVE2/LJk1AuOYpAyFdcIoxX4U
         D6tS8tchY2cT6FKm18r8P+89WWl9fMOQrBnaFaz6OenDh9yS8pD2ObzL7ozFYQpt5H7n
         1teA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=h5AChEJURP6A0aheoEV1hgTVM9M6XofNotSMFbWxrwM=;
        b=DClPc2v+Wf2OGqP87lirSs64qbMzlC7UrliKDpADc1rqxfQdyW3CjvBQ52z9RQQFtn
         1P8NyYwgcD91Oh0x2Z+mggL5h42q0Dr/pxgvU7CX5UzG8ipCbR4ZC88yFrwe/1oI3FWq
         uChEDjZkzPq0J1OyGvGsX4qPZcqPtuYNMjedcL/aP8XawXOG08ucgjdy5G7v9LXcl8hr
         mGp6ipOg55zOwm2X75xXQ7/329lZ34Ve/FBcYcDa4/D85ek+WPbTghKAD2J0g08jo2rO
         v79oBaWdBiiTYBjTC71N2xD7T9vjbHXAXl9EqjaGKpV0ukMYVQOxcJ20KtTypos+aHls
         ZsWg==
X-Gm-Message-State: AE9vXwNIy/pSSAZzlwu5RsmZ3hrXy+8y7g4zhLg6fvAN9l59a7GP6I0SJnePXkSx1Y8qrg==
X-Received: by 10.66.131.48 with SMTP id oj16mr186219pab.126.1473764452509;
        Tue, 13 Sep 2016 04:00:52 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id h86sm30431671pfh.46.2016.09.13.04.00.49
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 04:00:52 -0700 (PDT)
Date: Tue, 13 Sep 2016 16:30:41 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org
Subject: [PATCH v2 1/6] staging: media: lirc: lirc_bt829: Remove explicit
 NULL comparison
Message-ID: <20160913110010.GA10357@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove explicit NULL comparison and write it in its simpler form.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---

changes in v2
	-modify commit message
	-add cc 
 drivers/staging/media/lirc/lirc_bt829.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_bt829.c b/drivers/staging/media/lirc/lirc_bt829.c
index 44f5655..f740115 100644
--- a/drivers/staging/media/lirc/lirc_bt829.c
+++ b/drivers/staging/media/lirc/lirc_bt829.c
@@ -120,7 +120,7 @@ int init_module(void)
 	int rc;
 
 	pdev = do_pci_probe();
-	if (pdev == NULL)
+	if (!pdev)
 		return -ENODEV;
 
 	rc = pci_enable_device(pdev);
-- 
1.9.1



X-GM-THRID: 6330674938515554304
X-Received: by 10.36.14.84 with SMTP id 81mr3934968ite.7.1473975191777;
        Thu, 15 Sep 2016 14:33:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.155 with SMTP id d27ls1444179ioj.21.gmail; Thu, 15 Sep
 2016 14:33:11 -0700 (PDT)
X-Received: by 10.66.84.33 with SMTP id v1mr8078179pay.10.1473975191362;
        Thu, 15 Sep 2016 14:33:11 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si1775298pab.1.2016.09.15.14.33.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:33:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id p2so2582162pap.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 14:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x9o5m4aykzbdv7WwDz7P3hqap1W8E/pgTy6mWpmrdpc=;
        b=aUEa1CUNK6Qn7HZv+il2rksZcAEubone+hJSVYNQDc5nJ21dBNmpTmxCrKhxcroqFJ
         j5qw1Xa1UQ2f/bPYfZoVbXz2GPlAZV9ERKpTPVMHB2vFrVcNnRIjPrDZ4crvE5XRxgqK
         gtZ2iUdZ6tjjcLyTehYaEdt7lM/cwErKYyJpysUAC2/GzEvrnl+FI8kc0GuP+uVCg2BD
         bINtcDqbeDDILGpVmHSCcWCh62AKNiAIazmSwXMeRl5RL7FtQ2ZBM2veUxnbxOCgVSE2
         yEBxfkI4JZ1MNVLCNn687qEuNXf+66dGdJC6JG/0viomyb+kIhom2Rv5tuzJeRx1h87B
         8L9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x9o5m4aykzbdv7WwDz7P3hqap1W8E/pgTy6mWpmrdpc=;
        b=fsgveU8vR2Cvz8Uy+7z9n4pHkua+DwqN+qexix0qpbhY+uOIH43HldU9QDVZeSamvP
         NSoFYJ+pb5YWveVMDRC/C1CtBWWsa+v+0Y55sjpV6sg3TbJqehVkTDbyZ1evuiTGstSV
         4AYTmd50uoot2r+OpxeWOFkdr78VGRg1ClwojC4VRAUjrzorto1MSbHZqYa4qx3gOuyN
         wzRUC7VR+7Le4/+YTU57HG4FXKOs1Wf3WlZic3hb5UFuejLHIY6O/255QO4NzQLPOcBz
         1zTHv4IpEMGvq6vSfoCTjlP/faVgh1+HZ1aQCoyzBLgdvd0lY1w0NpfhHZSC0N5MhRf7
         bJkw==
X-Gm-Message-State: AE9vXwOq8+LStByuLSsGK705FlcguE3gqCxG5ounX+c+eL0jzMoc+HtmoJtGScaVMfN9/g==
X-Received: by 10.66.157.103 with SMTP id wl7mr18112873pab.116.1473975191155;
        Thu, 15 Sep 2016 14:33:11 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c11sm47162027pfk.78.2016.09.15.14.33.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:33:10 -0700 (PDT)
Date: Fri, 16 Sep 2016 03:03:02 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/5] staging: sm750fb: Remove multiple assignments
Message-ID: <c17c465dbd39a511c51f53c7752b2ca87cab4da5.1473975000.git.aquannie@gmail.com>
References: <cover.1473975000.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473975000.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes multiple assignments of the form 'x = y = k' to 'x = k; y = k;'. Issue
detected by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 7d90e25..9f1b591 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -365,7 +365,8 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 		ret = -EINVAL;
 		break;
 	}
-	var->height = var->width = -1;
+	var->height = -1;
+	var->width = -1;
 	var->accel_flags = 0;/*FB_ACCELF_TEXT;*/
 
 	if (ret) {
@@ -558,7 +559,8 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,
 		pr_err("bpp %d not supported\n", var->bits_per_pixel);
 		return -EINVAL;
 	}
-	var->height = var->width = -1;
+	var->height = -1;
+	var->width = -1;
 	var->accel_flags = 0;/* FB_ACCELF_TEXT; */
 
 	/* check if current fb's video memory big enought to hold the onscreen*/
@@ -781,7 +783,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 		0x800f0 + (int)crtc->channel * 0x140;
 
 	pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
-	crtc->cursor.maxH = crtc->cursor.maxW = 64;
+	crtc->cursor.maxH = 64;
+	crtc->cursor.maxW = 64;
 	crtc->cursor.size = crtc->cursor.maxH * crtc->cursor.maxW * 2 / 8;
 	crtc->cursor.vstart = sm750_dev->pvMem + crtc->cursor.offset;
 
@@ -1067,7 +1070,8 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	if (!sm750_dev)
 		return err;
 
-	sm750_dev->fbinfo[0] = sm750_dev->fbinfo[1] = NULL;
+	sm750_dev->fbinfo[0] = NULL;
+	sm750_dev->fbinfo[1] = NULL;
 	sm750_dev->devid = pdev->device;
 	sm750_dev->revid = pdev->revision;
 	sm750_dev->pdev = pdev;
-- 
2.7.4



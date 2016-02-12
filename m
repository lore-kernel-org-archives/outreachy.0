X-GM-THRID: 6250321568844480512
X-Received: by 10.66.101.4 with SMTP id fc4mr231908pab.48.1455266393368;
        Fri, 12 Feb 2016 00:39:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.155 with SMTP id u27ls859134iou.35.gmail; Fri, 12 Feb
 2016 00:39:52 -0800 (PST)
X-Received: by 10.66.102.106 with SMTP id fn10mr245627pab.36.1455266392945;
        Fri, 12 Feb 2016 00:39:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id tn7si1412132pac.1.2016.02.12.00.39.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 00:39:52 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id x65so44282604pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 00:39:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TvyYV8N8FeXQoy+h+jT6OhAex/dY6R+0rW/U9pwRm9U=;
        b=ocq3ecc0fz3umsIcxktK4vYizUFSGOcPDdOKgdwzP30k7+w4cZ6yuribVt6ceocA8Q
         d0pm4nOF1W2HfGNn+tstmQ9t8oW8Po+dtFmIgdWuCh9T3ZswKPUFZyF4hM+MNYpW2PBm
         X7Q6r6HlLqMLvi7+VCtrxifOrlTyAud7rpMHVoaKWTZt/Aa78KUgd8jMA9N4XxE7ANd6
         zXfneiemxiH7McBT7OtsjNnea0ASfbwEhGhOoNH88m2g+EV1wuXMsvn3zW7/khxt/TPJ
         WOxft7cjigkfA91QmrOHAembw4q32gZg/W3NuIdL7LlH6azH+ZwFmiiy/BkXZ+ATk8gH
         PSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=TvyYV8N8FeXQoy+h+jT6OhAex/dY6R+0rW/U9pwRm9U=;
        b=hGLcrt7uPeUhVJTes50RT9ZYUeUOLCBS4h+W/7G6mHQGsPKPap/6h2zg48+0U1MNuy
         sZABTAMjpVEPkb96+L9giTmd7DarfLnrZHKngxSj/RXgLmo06Cjd73LEjJGJQgpjkWMT
         i4ujDaWN4kotQrLhb2dMTayXSpHuPCST8hNmyIFb/r3XjZnof2nm5fHDcINuJd3aF2xS
         JILUX9nNKV2Xv1c/KNvQfrJW0j8U0m/MY4Jv9TVs7mASqpizFOHv0bf/kK6CDGCFaoY5
         NKzgMZjPGNPJHOHlCw41AAY5QOjGeOCrjGZKIm6MGLCk12AUnfJ1vrRMsvsrCzUjdThf
         YF3w==
X-Gm-Message-State: AG10YOTLqKw6gDETB5C9gvKlirGLa8OvzuuqinYTXFqC282RLydYj+HPtPPSqq6Y5WjQKQ==
X-Received: by 10.98.89.4 with SMTP id n4mr391277pfb.81.1455266392754;
        Fri, 12 Feb 2016 00:39:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id f21sm17546068pfd.6.2016.02.12.00.39.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 00:39:52 -0800 (PST)
Date: Fri, 12 Feb 2016 14:09:49 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: goldfish: goldfish_nand: Return correct error code
Message-ID: <20160212083948.GA22770@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The return value of devm_kzalloc on failure of allocation of memory should
be -ENOMEM and not -1.

Found using Coccinelle. A simplified version of the semantic patch
used is:

//<smpl>
@@
expression *e;
@@

e = devm_kzalloc(...);
if (e == NULL) {
...
return
- -1
+ -ENOMEM
;
}
//</smpl>

The single call site does not perform any checks on the return value, hence 
no change is required at the call site.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/goldfish/goldfish_nand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/goldfish/goldfish_nand.c b/drivers/staging/goldfish/goldfish_nand.c
index 623353db5..5c4f61c 100644
--- a/drivers/staging/goldfish/goldfish_nand.c
+++ b/drivers/staging/goldfish/goldfish_nand.c
@@ -290,7 +290,7 @@ static int nand_setup_cmd_params(struct platform_device *pdev,
 	nand->cmd_params = devm_kzalloc(&pdev->dev,
 					sizeof(struct cmd_params), GFP_KERNEL);
 	if (!nand->cmd_params)
-		return -1;
+		return -ENOMEM;
 
 	paddr = __pa(nand->cmd_params);
 	writel((u32)(paddr >> 32), base + NAND_CMD_PARAMS_ADDR_HIGH);
-- 
1.9.1



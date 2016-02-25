X-GM-THRID: 6255240003773792256
X-Received: by 10.13.248.4 with SMTP id i4mr40881395ywf.20.1456411556766;
        Thu, 25 Feb 2016 06:45:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.117 with SMTP id e108ls417496qge.77.gmail; Thu, 25 Feb
 2016 06:45:56 -0800 (PST)
X-Received: by 10.140.19.4 with SMTP id 4mr13782779qgg.29.1456411556279;
        Thu, 25 Feb 2016 06:45:56 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id yd9si1224733pab.1.2016.02.25.06.45.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:45:56 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id x65so33901971pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=yVoR1ahyA704ARUgJxtc9tX9Itadv2+JhswXqf4jO4o=;
        b=oHlL6reX3YHUMjMtmQXTOQksZwYaaMwVK1vvaBDcrrMcInOGEWn4obpBMHddy1TC7B
         +J5/CLcQVYm84DbFjsJSp+GoiqBjN7Hqx+mXxKSxvBn4b8zEdAxk9lUWlbSRx8jBCQO7
         u28kzqxum14JeQTV8RrUlksqzLuqzwpTK+fptOte9OyITxceFYw5SjHe8QH7j9cRzxmL
         CD4IvQ+eFpcUNVtZhXiZs12vyeqAFntxYjPA/pLcL6BSDgpJhgi1wgjd7zrh3MEFlmVQ
         cCwmXBiu796aLQjMueZbSrd+sT66FZ1q7LvRtjHgrMJtfCixy2Hw6mI6G7UQO0ZjCa0O
         ePcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=yVoR1ahyA704ARUgJxtc9tX9Itadv2+JhswXqf4jO4o=;
        b=Uj5HEP/3541uoF+xZtIbUPjeHkZ60B4LzEuq6cWLb3UOIGKu6+qsG5H5vLON0QS6Y2
         4tG98ohXwRzOC8Gch0G/30vO2B1xdZkdEMTTxdGcobfUQt1e3bHfON0PZGOvM1CYDy85
         t0ZIb00Bv5xBoga6UVy2h24X3kzOaudpfEIkL5PUK3xpVqb247q3OeZ9v0emleY1Obn3
         FdX4gnOO4bB2WgD2tf8zgpR9EmuM+KaUtzmSt9Hosgpg8vmGy+D7Uk03WbcVmWh6uLAF
         HnQ40y7Iu3wdPALCYKDrE+DjT+P54RCxzB49gr08bjFn27Qmc2ne6uuMjcK2Kzlyekz/
         Y+5Q==
X-Gm-Message-State: AG10YOS1Q6PyYGlSihcofz8tejtj1TLYyQKEsh7C9cpoxDOQuuJYBkaMA7CAJYSDYa/v7Q==
X-Received: by 10.98.64.4 with SMTP id n4mr63099685pfa.58.1456411556041;
        Thu, 25 Feb 2016 06:45:56 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id 1sm12895803pfm.10.2016.02.25.06.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 06:45:55 -0800 (PST)
Date: Thu, 25 Feb 2016 20:15:50 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fsl-mc: bus: Use devm_kcalloc instead of
 devm_kzalloc
Message-ID: <20160225144550.GA30383@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace devm_kzalloc with devm_kcalloc to ensure there are no integer
overflows from the multiplication of a number * sizeof.

The following Coccinelle semantic patch was used to make this change:
//<smpl>
@@
expression dev,E1,E2,E3;
@@
- devm_kzalloc(dev,E1*sizeof(E2),E3)
+ devm_kcalloc(dev,E1,sizeof(E2),E3)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/fsl-mc/bus/mc-allocator.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fsl-mc/bus/mc-allocator.c b/drivers/staging/fsl-mc/bus/mc-allocator.c
index 86f8543..f3d34be 100644
--- a/drivers/staging/fsl-mc/bus/mc-allocator.c
+++ b/drivers/staging/fsl-mc/bus/mc-allocator.c
@@ -491,9 +491,8 @@ int fsl_mc_populate_irq_pool(struct fsl_mc_bus *mc_bus,
 	if (error < 0)
 		return error;
 
-	irq_resources = devm_kzalloc(&mc_bus_dev->dev,
-				     sizeof(*irq_resources) * irq_count,
-				     GFP_KERNEL);
+	irq_resources = devm_kcalloc(&mc_bus_dev->dev, irq_count,
+				     sizeof(*irq_resources), GFP_KERNEL);
 	if (!irq_resources) {
 		error = -ENOMEM;
 		goto cleanup_msi_irqs;
@@ -596,7 +595,7 @@ int __must_check fsl_mc_allocate_irqs(struct fsl_mc_device *mc_dev)
 		return -ENOSPC;
 	}
 
-	irqs = devm_kzalloc(&mc_dev->dev, irq_count * sizeof(irqs[0]),
+	irqs = devm_kcalloc(&mc_dev->dev, irq_count, sizeof(irqs[0]),
 			    GFP_KERNEL);
 	if (!irqs)
 		return -ENOMEM;
-- 
1.9.1



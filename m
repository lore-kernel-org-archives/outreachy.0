X-GM-THRID: 6255241417932668928
X-Received: by 10.129.3.69 with SMTP id 66mr40664168ywd.41.1456411885645;
        Thu, 25 Feb 2016 06:51:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.213 with SMTP id z204ls403663iod.46.gmail; Thu, 25 Feb
 2016 06:51:25 -0800 (PST)
X-Received: by 10.50.20.135 with SMTP id n7mr2838672ige.5.1456411885298;
        Thu, 25 Feb 2016 06:51:25 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id 12si1225020pfb.1.2016.02.25.06.51.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:51:25 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id c10so35120300pfc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8aF4LRa9veOspNNgWrM1RNJzR7xeIyGO8kFeitbfhZ0=;
        b=iaTI/mZvhTP/2tpV4PX7oJNfrMlPQ63xL6d4ksMHQWrygwPICYnJFB6tTEqjn2ipgx
         Rjs+xOCmWJSMZSANgKTo333M36J8Fkcgg0dbjgDZ1Zn3TvasAEAynGBMVTIpcmkko45h
         hb2T8s/s1YxGfKfBBdEyMRy+Vk8s5YY+wJEzolCdnEL7kNT7OO3Pp3jnqlcteQoQI/Ye
         LHg+rC1qoZssZRO0iexwyYKTD2Qektn1GmmWm7nUX4Lzzkz6BlHe6zMLpEEYMKNome/b
         mJDSeMiskEey1kkhaXCg23NKY4ZSlb8144j7z5Vkury4aEZNpzSU2nKKGLZIH2RfQxwv
         VupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=8aF4LRa9veOspNNgWrM1RNJzR7xeIyGO8kFeitbfhZ0=;
        b=Z2ixKc2ExVPGrl1fGQCGL66UmwpKB+5sbdeDQ51djwm2uVheo3r3L8QFYsVXlihFhk
         rNDsRKLyeIIwqX31jgdS+XxEOLUSjLOf2N0IrtlCickupdsvh9XMgShOAzkdAeNl7jjx
         3cxDajzSk1ukj9tPJZETUoBbYxXDBA/dshHdzvV6YNnEMARDVF3D5hl6rYjK7Ab4l9YI
         qKjMEOStmlmhTPj8/1vMciXJOQGs47CgkupQBEnVfRJvE9yx2H3qYrbcTOukRt3h3/Du
         5lFClis7QKKlvEQNTKTKcBzmXDCPD21Wg2helP49S3RDUPg8IoF4AAxJ/pmdU83OGC3a
         G1+g==
X-Gm-Message-State: AG10YOQVucLUc3gL4ffe4DtqsydKVuVh8dpkLC81o45X63BWSPIGGAbpuC5/IdfUPCwCog==
X-Received: by 10.98.11.217 with SMTP id 86mr62487377pfl.71.1456411885105;
        Thu, 25 Feb 2016 06:51:25 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id z7sm12907799pfi.19.2016.02.25.06.51.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 06:51:24 -0800 (PST)
Date: Thu, 25 Feb 2016 20:21:20 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: android: Use devm_kcalloc instead of devm_kzalloc
Message-ID: <20160225145119.GA32416@amitoj-Inspiron-3542>
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
 drivers/staging/android/timed_gpio.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/android/timed_gpio.c b/drivers/staging/android/timed_gpio.c
index bcd9924..914fd10 100644
--- a/drivers/staging/android/timed_gpio.c
+++ b/drivers/staging/android/timed_gpio.c
@@ -92,9 +92,8 @@ static int timed_gpio_probe(struct platform_device *pdev)
 	if (!pdata)
 		return -EBUSY;
 
-	gpio_data = devm_kzalloc(&pdev->dev,
-				 sizeof(*gpio_data) * pdata->num_gpios,
-				 GFP_KERNEL);
+	gpio_data = devm_kcalloc(&pdev->dev, pdata->num_gpios,
+				 sizeof(*gpio_data), GFP_KERNEL);
 	if (!gpio_data)
 		return -ENOMEM;
 
-- 
1.9.1



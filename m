X-GM-THRID: 6255240278040379392
X-Received: by 10.182.245.131 with SMTP id xo3mr3578056obc.49.1456411620486;
        Thu, 25 Feb 2016 06:47:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.230 with SMTP id h99ls431454ioi.75.gmail; Thu, 25 Feb
 2016 06:47:00 -0800 (PST)
X-Received: by 10.66.148.69 with SMTP id tq5mr41937319pab.28.1456411620153;
        Thu, 25 Feb 2016 06:47:00 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x230.google.com (mail-ig0-x230.google.com. [2607:f8b0:4001:c05::230])
        by gmr-mx.google.com with ESMTPS id i9si240559igg.1.2016.02.25.06.47.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:47:00 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) client-ip=2607:f8b0:4001:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x230.google.com with SMTP id hb3so14304102igb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=509IQ/24lwLP2CFluJcQkWEK6vYBuDX2HvWX0O+V6c8=;
        b=qLTKLU0eju+egEvCWJStlIbEC6cLiTxxSdh979s/vt6yWqs0821BTMU2KWfpXCY5sF
         dTmqZK34g3GydpW1SMkw9zi/eYeKKe8I5rm9p0htRGv5/ePhkH/S1N60RzlGLwvrIzc5
         2YDN/ibJFxY/5EFFnBH4oYOQsgUUecsIlSBBbLSecHZuM2gtvCG8IqrnAf5z1yEreODU
         npX9BtLc8nP9GG0jbCO88ubosxeKBDbEVsDY4lBkWLqDnbFrmEJpI8C+C/LPXsfILo8J
         dgd9udvgUF1AzWc/uGTZLUM4VqjpYyxNRZeu3bsqRnLikvsDtbYqx8/d1f1Je0OcepJN
         wKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=509IQ/24lwLP2CFluJcQkWEK6vYBuDX2HvWX0O+V6c8=;
        b=VxhDojznEGcQ7V7ZoKZGIdeaLzP3yWPD7JPiPk9NPOn47456xQG89aFmRqCPUfgyXo
         wLdMsv+fj1mjhaLldelsm30psrHIwP6/DLYyr6DxfK+5mb1LJYqwdIMNwZAzHCO4DLjN
         +oZc7bgMtKAgv2a1+7cdPA8GHNfVIBKg8C6mS13p68xTiWVh1Udt76ntYiXmXt2rSeqs
         xJv1QvVVW7yRhyBh+F0IchumK8Hr5DkTzheTLGhMU2Osr5INqotI2+DUOeoEl1/KRxYI
         34hnef95bka5Ld8YiINAxKrWl8m7w7BL9TYdeeU1W+wLlN6gOCLR3sL8CeV4d+b/95rC
         gMYw==
X-Gm-Message-State: AG10YOSLU7N/9K/vqIf2lGIaV+MyjuPTfORFVlvWxtlvTV8D2SiXRaEkROgZNAf9i1YfCw==
X-Received: by 10.50.43.133 with SMTP id w5mr2491177igl.80.1456411619992;
        Thu, 25 Feb 2016 06:46:59 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 83sm3343537ioi.25.2016.02.25.06.46.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:46:59 -0800 (PST)
Date: Thu, 25 Feb 2016 14:46:11 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fsl-mc: Drop unneeded void pointer cast
Message-ID: <20160225194611.GA7542@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void *e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
|   
  ((T *)x)->f
| 
- (T *) 
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/fsl-mc/bus/dprc-driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fsl-mc/bus/dprc-driver.c b/drivers/staging/fsl-mc/bus/dprc-driver.c
index 9380ebc..31488a7 100644
--- a/drivers/staging/fsl-mc/bus/dprc-driver.c
+++ b/drivers/staging/fsl-mc/bus/dprc-driver.c
@@ -407,7 +407,7 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
 {
 	int error;
 	u32 status;
-	struct device *dev = (struct device *)arg;
+	struct device *dev = arg;
 	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
 	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_dev);
 	struct fsl_mc_io *mc_io = mc_dev->mc_io;
-- 
2.5.0



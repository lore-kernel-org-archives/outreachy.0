X-GM-THRID: 6258476989674422272
X-Received: by 10.129.87.133 with SMTP id l127mr8668994ywb.52.1457165225075;
        Sat, 05 Mar 2016 00:07:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.33 with SMTP id 30ls219045qgc.99.gmail; Sat, 05 Mar
 2016 00:07:04 -0800 (PST)
X-Received: by 10.140.228.7 with SMTP id y7mr8822507qhb.27.1457165224302;
        Sat, 05 Mar 2016 00:07:04 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ui7si1879623pab.0.2016.03.05.00.07.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 00:07:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id q6so59207pav.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 00:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=F+JuDAZmh5dY4BwIVemxU9BwsJsB4awEcn93HBRS9aA=;
        b=zu/hoBYb6+u/yAeIxZ53RXoGFuPiIMse1lQyPPX0eFJzDeZOcrcKS0sF9Ho5yqEDP7
         vL4xDyw3i4ASd/cDW0ptMDLSdqSJOChlHbrf/XG70vSAnkHcSAuLNeALSvx6sOdbsd83
         fJqvPjoMQNPDrxU0GZDRhZ7SSwsgq8WCSDO49LiDbmxXSTPRmeTnCeWWr0QW6p5ZQRos
         kQJre88zqXB4m+7mP/8pfuD+tFBCz5LUNqlpeoqHf/dRn/mSLAaMrUCVgVAcbC+sjbdp
         jysI3F2OWhE1o9B1P4+Yo+njhLm2jD2bgl2b+DVpHBWMNBWwvylrXnL8MDlSWre1MC8V
         xZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=F+JuDAZmh5dY4BwIVemxU9BwsJsB4awEcn93HBRS9aA=;
        b=eQ5p9KF3mNF088a5wUVhT8YtuNOa0Xf8yf42lwT2d78EfXiBMOW8Y7fHVVJe+Vzkv+
         bhMJWny3v6aQuvz+qTcQe5N4sJxbO4Eq89VF9+8Bqtv9e2eDb+fE1yIZS4VKSrP0uTjW
         xXfDeYN6318w7w3F+FCgYrAHLKMmaVsbrFWYGWTGJWea8RjNEW3uSlq62jRwEgGFbFy7
         xoo0UrLvOFZB1zjBr2FxUXOvXJwhHuJP3oAh0n+benG27Xa0F+7iSp+FU/Yionwg5IPU
         6HWT9cR8Eg3JtGB79dxpOz7uWZAYdTpFscTGbfUccRLXeVPH92VTKOZe4vHPJ1F0Rnm+
         9Syg==
X-Gm-Message-State: AD7BkJKh1Bod+eLP7lisKyaX3sUSNUvDWryBA/kUtHfwM1hfnYSbaZ7kH5rkHov5tP1d8g==
X-Received: by 10.66.193.161 with SMTP id hp1mr18354727pac.9.1457165224140;
        Sat, 05 Mar 2016 00:07:04 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.184])
        by smtp.gmail.com with ESMTPSA id d65sm10391180pfb.74.2016.03.05.00.07.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 00:07:03 -0800 (PST)
Date: Sat, 5 Mar 2016 05:37:21 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: Use predefined macro offset_in_page()
 instead of (addr & ~PAGE_MASK).
Message-ID: <20160305000721.GA3072@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use predefined macro offset_in_page() instead of (addr & ~PAGE_MASK).

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index d1cf6a1..7c7b477 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2224,7 +2224,7 @@ static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
 		retval = -EFAULT;
 		goto done;
 	}
-	if (size & (~PAGE_MASK)) {
+	if (offset_in_page(size)) {
 		retval = -EFAULT;
 		goto done;
 	}
-- 
1.8.3.4



X-GM-THRID: 6331272586985472000
X-Received: by 10.237.39.71 with SMTP id n65mr1412753qtd.53.1474116071946;
        Sat, 17 Sep 2016 05:41:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.234 with SMTP id y97ls7428283ota.3.gmail; Sat, 17 Sep
 2016 05:41:11 -0700 (PDT)
X-Received: by 10.13.195.193 with SMTP id f184mr1426733ywd.153.1474116071673;
        Sat, 17 Sep 2016 05:41:11 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si3558732pfw.1.2016.09.17.05.41.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 05:41:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so4616502pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 05:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cfSEclCnAub0b6ee3hfcGBNRT8VsGHaWVLZXJcHqc2g=;
        b=JhfCF7407NELBjVlRCaEfNpPPE3NwcNxwEGN7FNt43+QEV1Dw9BLE9nYFGDMnMb62v
         M4fhqDL8OVSS1uwmVTfloBKDRHnbFX2rAOEfOgWKUwlVydq8cYNQ8Gq9xO2jqjnl/DtK
         MxTkQkK0ndoqGDQ70cxZWtQOgj3IDv5GxNg3aSlSyYAFXXf0i8NfjVXdrvJjXu6yYGRx
         jz6t+65rSpzR2t4HHCBDxwnAqvBXJuz0ZhUtD3cKjxbYtfiKfkKmi8Jl7rjc61eZjkDU
         o8paAoqJST2Ng4nL6O/h6lhrTUDcJApW4xw1EvxVaiz/+a0E4/2LQjKEewZYxWN/yU25
         KZsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cfSEclCnAub0b6ee3hfcGBNRT8VsGHaWVLZXJcHqc2g=;
        b=EDOroSVJZkb/AI6iGBvyNq6dl4jHaQSEe+GGEhSvdb1vXRNHP8lTNTri+GRH6sBKoJ
         busznUisZlh4xq3hLTdfINUgDUkgzneG30DTfpLA45nKoKCFfpRM50XzRcpOI0RoPnyX
         4SG6DeEpylCYNmyHWF/7lNr1n+Oz/5fWE1c2J2vLBr0t0TpCbujCt2JiuumpCAHawbR1
         wb+nMYTUX1hmWtb2LGCu2H4dFvdVc+RSoUl1rdL9VTWVOJ2g2XvZQpQov/WYo3G8rg8b
         D3QHMlgk9HMnK9ZNbC/gle6oNuuXwXVi8aNmiM1i+eHJ6fYK422cIiVFcCxZmahPKWGm
         f9AQ==
X-Gm-Message-State: AE9vXwNuf1Z+LZgywley72+FuddwwpYwEgpEjgBFkmtpy+qD7043hb4xMfBWRVMiBFfUbA==
X-Received: by 10.66.182.167 with SMTP id ef7mr31350521pac.128.1474116071280;
        Sat, 17 Sep 2016 05:41:11 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id e187sm59087534pfa.58.2016.09.17.05.41.09
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 05:41:10 -0700 (PDT)
Date: Sat, 17 Sep 2016 07:10:54 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: i4l: Do not initialise statics to 0.
Message-ID: <20160917014054.GA14872@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not initialise statics to 0. Static variable by default initialise to 0,
so no need to explicit initialisation. This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Incorporating suggestion regarding commit message.
 drivers/staging/i4l/act2000/module.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
index 68073d0..39a8940 100755
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -28,7 +28,7 @@ static unsigned short act2000_isa_ports[] =
 static act2000_card *cards = (act2000_card *) NULL;
 
 /* Parameters to be set by insmod */
-static int   act_bus  =  0;
+static int   act_bus;
 static int   act_port = -1;  /* -1 = Autoprobe  */
 static int   act_irq  = -1;
 static char *act_id   = "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
-- 
1.7.1



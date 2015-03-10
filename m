X-GM-THRID: 7460820615168
X-Received: by 10.152.21.9 with SMTP id r9mr4879603lae.0.1426006653116;
        Tue, 10 Mar 2015 09:57:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.103 with SMTP id s7ls42160lag.105.gmail; Tue, 10 Mar
 2015 09:57:31 -0700 (PDT)
X-Received: by 10.112.142.1 with SMTP id rs1mr2919312lbb.19.1426006651249;
        Tue, 10 Mar 2015 09:57:31 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id l8si1110773wia.0.2015.03.10.09.57.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 09:57:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id r20so31907516wiv.5
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 09:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=foPo4lyowpEyhofzTn83Qi0ysh0HQxvsCteRfxe0a/c=;
        b=aJWoVMSDJm6gmBnodNUlXIs0ljZ6Y8Vfx3dzizXTUlNucysw8miYVJDWg4bHdsmVnB
         sEYwopFz+nuunTc/mKFQ3UGE2+HyPVD2gvPbdVEunnhE9jUg/zoLRK9Bf5DKGbr9veSB
         vyfGNrAromHA2EVm7pG7VXHXlJa6Sd83qR5HeH9LB5wd8viltJ+h6XHWEkYj67LBDHQq
         6DMO7rQc8tgQm9QbpEcCsfb2qmnNwUe86+3T2m932KrxaIcYSerlhQ8/5We8oNw+6uXd
         b+t3heLPdAoGWYObbWi/VWbC0H5HDj4SPVlr8G0iU8OTS6JN4L4NiSOTXRKUB+DlwJZC
         AGdA==
X-Received: by 10.194.85.46 with SMTP id e14mr68070345wjz.110.1426006649700;
        Tue, 10 Mar 2015 09:57:29 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id fm10sm2402684wib.7.2015.03.10.09.57.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 09:57:29 -0700 (PDT)
Date: Tue, 10 Mar 2015 18:57:25 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 05/20] staging: media: lirc: remove pointer to pointer cast
 on function arguments
Message-ID: <aef176ab112e289aff922f94b155c130314e7ebd.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes pointer to pointer cast on function arguments. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
type t;
identifier f;
@@

f(...,
-(t *)
e
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/media/lirc/lirc_serial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_serial.c b/drivers/staging/media/lirc/lirc_serial.c
index 9f55a83..56df8d7 100644
--- a/drivers/staging/media/lirc/lirc_serial.c
+++ b/drivers/staging/media/lirc/lirc_serial.c
@@ -784,7 +784,7 @@ static int lirc_serial_probe(struct platform_device *dev)
 
 	result = devm_request_irq(&dev->dev, irq, lirc_irq_handler,
 			     (share_irq ? IRQF_SHARED : 0),
-			     LIRC_DRIVER_NAME, (void *)&hardware);
+			     LIRC_DRIVER_NAME, &hardware);
 	if (result < 0) {
 		if (result == -EBUSY)
 			dev_err(&dev->dev, "IRQ %d busy\n", irq);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz


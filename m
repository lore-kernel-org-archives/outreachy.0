X-GM-THRID: 6255242949785812992
X-Received: by 10.31.52.207 with SMTP id b198mr41401399vka.5.1456412242545;
        Thu, 25 Feb 2016 06:57:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.178.180 with SMTP id cz20ls215070igc.25.gmail; Thu, 25 Feb
 2016 06:57:22 -0800 (PST)
X-Received: by 10.66.232.41 with SMTP id tl9mr2329128pac.35.1456412242155;
        Thu, 25 Feb 2016 06:57:22 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22a.google.com (mail-io0-x22a.google.com. [2607:f8b0:4001:c06::22a])
        by gmr-mx.google.com with ESMTPS id xh11si255562igb.0.2016.02.25.06.57.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:57:22 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) client-ip=2607:f8b0:4001:c06::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22a.google.com with SMTP id g203so90213997iof.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=D6Krd265GJPHWMhCCz8jcgLq5zDyGrjs2FT43496B+Y=;
        b=cLIQeVFUAMQ6BcmfMPIMDkzqLheA+fpw0Wu33m9eyFpfZzpvMcgDQEKOX7htVuVsu5
         GtTrxRMLCWJtHZEsBREEhO6oKgTt6tPwOSqpLLNVW7Jx8vcM2qQ4IRwXQA2qAVwX4I8u
         sAozhZbqdgwfSVZWsa2h2BYysgxCf0vz4IabDrLHjKs1KKalesG1mk8FZwq/fFm2TEuB
         vIlVkLkI8jd8pG9YiV8xbLd54bhJSyqHKzAI0QSdwEVQNNFL6Rrwd1RJkJR6+A0gD9as
         Psc/7sUr62m+toRiUnJxVyqaLCfSAHaqiIdAsUpyT2fauniEzvZTxnCbAe5eP2QxTWWZ
         m0Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=D6Krd265GJPHWMhCCz8jcgLq5zDyGrjs2FT43496B+Y=;
        b=H+aysHxm9edb9OWtGKyLbMbkkT19sCg7ONHgJ7b0OOmAUh/eN+G20EJ5OqoQkeOfJu
         9BDASobQzCm+TFSfYt6NL8vQBOlN3649U7xndNl/RkMBPtxrBa10ayW+o8bz9uJBqv7W
         pTHUEP5IDHzd+NtQ2KBM/3K6d56wHOavKwchY4ErxAyJlpMgvrGIUhwBi8zcf0YUGpta
         6Dq8vUFLjE3Seq95AleXwXDZIb3zDo8N7XpNW8jA7fqiZQiQARU4/7/pVAH40QluntcD
         jL5+wt55QL5WwAoEAbxA3EWg1C66P262NKeV21IgVBWcGfTBYN+JvSJc5nU/NrWueaIX
         PUhw==
X-Gm-Message-State: AG10YOQeZfcFXpo6j3FKch3gNYIaoNjpxHVNQOyU+UREhk5V57lXkTq3IW+rusM6D+xrfQ==
X-Received: by 10.107.9.106 with SMTP id j103mr3337458ioi.104.1456412241996;
        Thu, 25 Feb 2016 06:57:21 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j1sm1367345ige.19.2016.02.25.06.57.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:57:21 -0800 (PST)
Date: Thu, 25 Feb 2016 14:56:33 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Drop cast on void pointer
Message-ID: <20160225195633.GA7856@janani-Inspiron-3521>
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
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 0b06482..aeb0df5 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -2402,7 +2402,7 @@ out:
 
 static irqreturn_t _rtl92e_irq(int irq, void *netdev)
 {
-	struct net_device *dev = (struct net_device *) netdev;
+	struct net_device *dev = netdev;
 	struct r8192_priv *priv = rtllib_priv(dev);
 	unsigned long flags;
 	u32 inta;
-- 
2.5.0



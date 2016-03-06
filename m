X-GM-THRID: 6259010121466118144
X-Received: by 10.140.28.71 with SMTP id 65mr14084871qgy.1.1457289355210;
        Sun, 06 Mar 2016 10:35:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.164 with SMTP id gf4ls585649obb.73.gmail; Sun, 06 Mar
 2016 10:35:54 -0800 (PST)
X-Received: by 10.182.20.195 with SMTP id p3mr14310067obe.47.1457289354874;
        Sun, 06 Mar 2016 10:35:54 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ui7si2539808pab.0.2016.03.06.10.35.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 10:35:54 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so6350249pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 10:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0knjArxQoHvO8PvyCWISMcYT1CokFOLXNk1+xRXUIaQ=;
        b=lUNAG2T2qnx0/D9+wCYtVqyzaA0uYR82GwlbVjjelimA5WtlAGnBCFjuzofT4yHYIo
         HTjq4FojDxaASLkP+gEcYXqMFa/PiBrAOMARQlv2Cq3ZbQq0Lf/CaqdEp9Df1PgPQEgX
         HWPY8YrkrUb0UhBU7XE81GHwFxgyxoFptlJ2JK5IpdE8SZBSX3VrxLhGmIjI7CY9iA9E
         zhxVsPWJQQ/EiQVQIh0LU1olsfzI4248ghfmak/XjUzIn/UqHgBE6AFlhF//RWrO7KPU
         23fVGbD0/bgS6dUcYRjVkf3bWf2GCFhJoVlKu6DNKDI5EeA4UB7qhSoKvW+iNkqzwVDm
         Rqig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0knjArxQoHvO8PvyCWISMcYT1CokFOLXNk1+xRXUIaQ=;
        b=c2P+IPgUiiehwE9uC3BgUAguoGUkZJRXraW8hTMyY64hqn+yHNE/5vYmuPWDznTS3P
         mje5/wW81CT6Da+HqLr6cDTmWZ3C1/SAeTO3R+YsyH6YvO7IuP5JzsgEqllwNTyffjCr
         pbRcST9bL+8rvVoXlEX8YZH+D2N5XPC02Vj6TVLhJheptVVL9s2vuuiL12p74JBofgFD
         uVytXJ9oOIIFajIavPrat/nROYw00gO6xphD1UL9NdvmcoVswPsODdMXBrsGruF5qFG8
         XzdlYb4t+Ii0hBM6vHtq+yM9D20qlXlG8CESYl2xORe3MDAV7uSYaHm/J6uI2WpWwRkC
         uyPA==
X-Gm-Message-State: AD7BkJKbEIn1atYnndPayPlumSM3uvIV4OEkw+oAZjgZR7pKFvBl6aRsir17q/FPc0gmdg==
X-Received: by 10.67.6.226 with SMTP id cx2mr27773184pad.93.1457289354699;
        Sun, 06 Mar 2016 10:35:54 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id by3sm19055507pab.39.2016.03.06.10.35.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 10:35:54 -0800 (PST)
Date: Sun, 6 Mar 2016 16:06:18 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: emxx_udc: Return NULL instead of 0.
Message-ID: <20160306103618.GA4677@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Return NULL instead of 0 from nbu2ss_ep_alloc_request(),if req pointer is NULL. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile emxx_udc directory to check nothing is broken.

 drivers/staging/emxx_udc/emxx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index d38673c..e8cacae 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2625,7 +2625,7 @@ static struct usb_request *nbu2ss_ep_alloc_request(
 
 	req = kzalloc(sizeof(*req), gfp_flags);
 	if (!req)
-		return 0;
+		return NULL;
 
 #ifdef USE_DMA
 	req->req.dma = DMA_ADDR_INVALID;
-- 
1.8.3.4



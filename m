X-GM-THRID: 6253696121219055616
X-Received: by 10.129.108.3 with SMTP id h3mr22232990ywc.31.1456052093712;
        Sun, 21 Feb 2016 02:54:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.162 with SMTP id 34ls606066iot.4.gmail; Sun, 21 Feb
 2016 02:54:51 -0800 (PST)
X-Received: by 10.98.43.132 with SMTP id r126mr21544246pfr.5.1456052091965;
        Sun, 21 Feb 2016 02:54:51 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id u66si2838682pfa.2.2016.02.21.02.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 02:54:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id x65so76538184pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 02:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cXPdGCmfytkw7Gd8jkNvh13SFnrvHk1etE6lC5xSl4A=;
        b=yuq+w6KU860g2ny06nVSI7i9+seBxUyI9PhsL7ozZFRekY6byH9wPf6TYwBbJAOLCE
         41B2HkUH9UDOJhw4y1+oXy+zxhgkHGbrH43XhxLJiTEAtR+EgAVFWjYOpua0Ab7G5Ddf
         +RonhRkgliNT7oDwkUMpfQrZhhNNB4v6vfb7blBlV/J9MkYwCww/zMqdqMLVW6Fuqy9x
         3OFeYYDUVNmQ4MlB2DP/S8JxRNEHbADadc1pyRTlnDJbLCAjCl75cCOKi9XVMX/XclaO
         Dnsi7XGtZv2J/zU/v0doagIv1RdoubmOIRqRCz0SRbkxIffy8hZOX09Io1fgU74nAGIb
         wOQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=cXPdGCmfytkw7Gd8jkNvh13SFnrvHk1etE6lC5xSl4A=;
        b=nGpD7TNoVLUKKX5BW1WJFEC26RxDBsKBVG6Xl4rgV/kX8UujYDOJgOM46IN8pKn26l
         7WE/w17XyBTxmgPuKQtwm6ec/BoMvFNb73PhV+82SPwEHDtDjZDdwAN6qGYvL65/QVkt
         xkZ8Nb8/xYkLzn1K8zMOLmpYxoy+H595r+ei+WiHIuKXvnO1ouap5X3wHKHas0Eraxm8
         X8XfQx2Zv5Nh2/YWklr+/jcLiug8VjhHCUGSw5aiMVb1IL9xbn/fMBXHkfqsUSCt6mvq
         Ylrd+HjzwSd595ZWJp41FOVjf92IojkoCkZfo1bSh8ffpaUdWeF6eqI2EhqS8QFntsKp
         HLCA==
X-Gm-Message-State: AG10YORMjjLeIj2D7/5GzkdNiOs615VclzUpTkNYcV4Q6TsUapyiNbtBGW+4sbR1Z8uCBw==
X-Received: by 10.98.16.86 with SMTP id y83mr30270806pfi.45.1456052091869;
        Sun, 21 Feb 2016 02:54:51 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.0])
        by smtp.gmail.com with ESMTPSA id u64sm29355768pfa.86.2016.02.21.02.54.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 02:54:51 -0800 (PST)
Date: Sun, 21 Feb 2016 08:24:55 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: emxx_udc: Return NULL instead of 0.
Message-ID: <20160221025455.GA5576@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Return NULL instead of 0 from nbu2ss_ep_alloc_request(),if req pointer is NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index a1f624f..fe99fb1 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2626,7 +2626,7 @@ static struct usb_request *nbu2ss_ep_alloc_request(
 
 	req = kzalloc(sizeof(*req), gfp_flags);
 	if (!req)
-		return 0;
+		return NULL;
 
 #ifdef USE_DMA
 	req->req.dma = DMA_ADDR_INVALID;
-- 
1.8.3.4



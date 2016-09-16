X-GM-THRID: 6330985798002802688
X-Received: by 10.129.121.70 with SMTP id u67mr10832513ywc.2.1474047498592;
        Fri, 16 Sep 2016 10:38:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.87 with SMTP id t81ls732170ota.36.gmail; Fri, 16 Sep
 2016 10:38:18 -0700 (PDT)
X-Received: by 10.200.56.181 with SMTP id f50mr10857421qtc.11.1474047498219;
        Fri, 16 Sep 2016 10:38:18 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 142si4600615pfx.2.2016.09.16.10.38.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 10:38:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so3712434pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 10:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4Sg99MEBDd+nErMmGXz1uSiuMB4BD+LH6Od/nSkLVqA=;
        b=tUoec+KSgsxWtCKWWJKEKRG4IGg0fKhPbi0jHN+MhKaJjV7bHemuEDDpBrj+5Xv45/
         JMN9/1wt+fizKpzA6jsnASsFr0N62dLzV7WQG2yBsgykZIricG7/Piv771+hHhftE4lJ
         msui8To+zduxJgR/Go/GSuwOC2g5eJKS9sSckBiBUabaSmLAtKFBTcElqqcd4HBCIYSi
         uCQtyBu4E7YsFrY2HOPuyMui+nInldwpWl+6OtTqauLPCHORbnCbjkc8G8fJ5zUWy3Hb
         UBLNmTe0/3Z+IFVE0Bh5i8DLm5OjqWLWnTCIK6kTJSUNke+mAvinrMma3Em1FeEtRBmk
         cHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4Sg99MEBDd+nErMmGXz1uSiuMB4BD+LH6Od/nSkLVqA=;
        b=SUF3F3SoYf8WswK3qjEsdaJTIUUnq8iWmZLEYY23UgP6rBhks0Y3m+pRpIoGBvRHTe
         5HsJnigOD2bJa8DCrR8B1rFQvmUMe9GDBRSmwKbDSPT4MDBOR4g8nC6aqdaSstHLHsgb
         cz046SDoViGAH5UOHXIkDfzbszg6fwnCQEajTWQakGTa2WxYKDOScZ0EHMXtsQiCRNH/
         rEuymioEkyO7mLTbP5LkF79S6Msb4Z1Mw8LFKHOk/HGNhH77h8VX3APltmq4dyveWzd1
         9kptdurtFlx0QEYX/PJKI45R4qrm4AngNZErxQJ8dPgDGo03lO6UO5hTGBLjlBefM9wV
         VI4A==
X-Gm-Message-State: AE9vXwPV2glE668xzxMZH6/bogsZGTZ+NcsQjozGX/cR3zYZAXa3afL7jt89RLNtJ0puGg==
X-Received: by 10.66.249.164 with SMTP id yv4mr24977269pac.89.1474047497971;
        Fri, 16 Sep 2016 10:38:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.70.55.41])
        by smtp.gmail.com with ESMTPSA id z187sm53690498pfz.39.2016.09.16.10.38.15
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 16 Sep 2016 10:38:17 -0700 (PDT)
Date: Fri, 16 Sep 2016 23:08:54 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, wsa@the-dreams.de,
	elfring@users.sourceforge.net, sudipm.mukherjee@gmail.com
Subject: [PATCH] Staging: ks7010: Drop memory allocation cast.
Message-ID: <20160916173854.GA3176@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Drop cast on the result of kzalloc.

The semantic patch that makes this change is as follows:

@@
type T;
@@

- (T *)
  (\(kmalloc\|kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
   kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...))


Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index f9aec4f..c40e6c5 100755
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -1147,8 +1147,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 		/* send stop request to MAC */
 		{
 			struct hostif_stop_request_t *pp;
-			pp = (struct hostif_stop_request_t *)
-			    kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
+			pp = kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
 			if (!pp) {
 				DPRINTK(3, "allocate memory failed..\n");
 				return;	/* to do goto ni suru */
-- 
1.7.1



X-GM-THRID: 6330852738662924288
X-Received: by 10.200.53.133 with SMTP id k5mr2452657qtb.34.1474193561281;
        Sun, 18 Sep 2016 03:12:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.38 with SMTP id x38ls2737218ioe.42.gmail; Sun, 18 Sep
 2016 03:12:39 -0700 (PDT)
X-Received: by 10.98.130.135 with SMTP id w129mr2511960pfd.16.1474193559789;
        Sun, 18 Sep 2016 03:12:39 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z4si3900190pam.0.2016.09.18.03.12.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:12:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so5762209pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 03:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=y31YJGxlufpPWZAH0WMLDHjJV1K9ar4UeJBgJs89apc=;
        b=HzfnvHxsFrlmKamh5yIAoivc+mcydIRMwlKGfpLzi5iZN5RqcNlxe8Mbzesz/53aDr
         Q8nPVg99tg4Gxe9h/SjT7SbzhcD0PWySLzSYtz+gWpjfxsaWHfqEwFHEx1JKE5uA2hez
         ov9bMl0J14Zrx8nZB/818UoS69O8nK5C/mb5s7c8mYhwR9FNONUDXYQ7QXup5AU5QT/V
         Olk/vhtu8BcINo80MkkZYSEMqgReCqp4M17cukKs4YquN0CxPCfO+b+G2QN2uxYewUdH
         5JXDQnbzgyMNi4vyt3QznNUBaWWbgN8EbP0PPQvyt/zbADcVlbiSLMUw+flvSSeilbdj
         Uz8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=y31YJGxlufpPWZAH0WMLDHjJV1K9ar4UeJBgJs89apc=;
        b=bAiE1RRBryvyDP5R5qjKEqgio72jBrvoiAirkGruQhQKkvRk3pL6ke1E6QuMKlC7PE
         LRwjIQQLlNb3m4QdONbV5FX+A7tO5vsPVXTtE9405FJXw5KTrUD1Xvsg0aVWcYn6Rsw0
         8knwZwsKCBYpYV50f+4mx19DDA7R9TF4boD29WvteWm03FbQTlZnzWwhaQHiyfH+FbIZ
         snCJKAkJ7VPWyCnfn5o3gSjKrj9woBqBZEBWg0s/2Gz48SvPlE1SaCmmKZ6L5sGd+q57
         pNl06tXRr57vsvT4xlDqIB51oBAGXrMV/AYdHCXYbOJhC6yhQ7lbi4u/EBBs0jvno30a
         aOoQ==
X-Gm-Message-State: AE9vXwN/LHOUszQxQM9/omqSF6Sj+wSRDC5zg75J8UnkJZa7kRDduGSiIWKHGFuKZjSLcQ==
X-Received: by 10.98.138.207 with SMTP id o76mr38369761pfk.100.1474193559637;
        Sun, 18 Sep 2016 03:12:39 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id g10sm63661990pfc.57.2016.09.18.03.12.37
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 03:12:39 -0700 (PDT)
Date: Sun, 18 Sep 2016 04:41:39 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thomas.petazzoni@free-electrons.com, noralf@tronnes.org,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: fbtft: Use !x instead of x == NULL.
Message-ID: <20160917231139.GA24525@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting file permission issue.
 drivers/staging/fbtft/fbtft_device.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft_device.c b/drivers/staging/fbtft/fbtft_device.c
index 924abd3..e9f25dd 100644
--- a/drivers/staging/fbtft/fbtft_device.c
+++ b/drivers/staging/fbtft/fbtft_device.c
@@ -1401,7 +1401,7 @@ static int __init fbtft_device_init(void)
 	long val;
 	int ret = 0;
 
-	if (name == NULL) {
+	if (!name) {
 #ifdef MODULE
 		pr_err("missing module parameter: 'name'\n");
 		return -EINVAL;
-- 
1.7.1



X-GM-THRID: 6333988182389948416
X-Received: by 10.28.157.10 with SMTP id g10mr449011wme.15.1474746545515;
        Sat, 24 Sep 2016 12:49:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.154.14 with SMTP id c14ls794039wme.17.gmail; Sat, 24 Sep
 2016 12:49:04 -0700 (PDT)
X-Received: by 10.28.199.198 with SMTP id x189mr435842wmf.13.1474746544854;
        Sat, 24 Sep 2016 12:49:04 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 185si139326wmr.2.2016.09.24.12.49.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 12:49:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id w84so7895999wmg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 12:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=C4BKo5M5YS0SraLHyGCIA2n2U+t06j6+e8290IP2EbE=;
        b=YCrIBQ+KsE1pJ8/tRpkExi5N96/DSDkLxvSRt70smDvUugpKZQAnUs0Jte41mpvwWM
         pU5VtnnRJJNFrc+0O1GddwqJJJRlwkow1aHe9ZXuS6fZUmI99O23mBDbBeqk3o9A2uzO
         ev91Tq6170vsnGHxz+201Tk9lSaoyloMA7yclbtdjPggcIO0z0jnwoH3RRJXYJv3kk4O
         8wEvBZ2JC133dCmz2NuWYI3/gw0xDG33I0JnMD62jBAJP+7TkqcHzJCV6W+/R/dNG2R1
         FQzxlYjGPViTCdzLIc9bOJ728uVd7dpnyo3+9eDeDAm2TGfuo4Cv65EpZDrSKE4AFc+M
         rc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=C4BKo5M5YS0SraLHyGCIA2n2U+t06j6+e8290IP2EbE=;
        b=X/tlwG7SDvm491XoZAzubHq20vm1A+yzsMzl76Sqn15ShxOSpXewaDxC/It+vMiT7q
         Mp5otQKUcS1uYzw6L42/aJgsw4jiZ+SH1AHMGeDQAG9ngXRYZIOTWBWthg+6q56Mxzwu
         a6L/fqEQ4bT8oTqXWXZ2oJY2FurXG3G5Q4uFCFOxzvqqfXPZrH0Odudl0CyRRgWgyndG
         uaS9QmkS37wYeSlmo2ayQKt4W8qAkkihnL/uOCAwYCbvOd0VcIfFMwiv9bBvZEv0A9UG
         iziZ89Oqj+KUJpd4LqY6GJXClNsWPG8UOTk9tkZ8xetRKKP1dDB3z/SEJBGvlsqC4E16
         C50g==
X-Gm-Message-State: AA6/9RkUXyI+SegvzEYWuKa5eAfTri725OAK5aIQuF+tnrt9Qzju7BLx2tDQx4BlJJSWhQ==
X-Received: by 10.28.147.76 with SMTP id v73mr7523995wmd.56.1474746544650;
        Sat, 24 Sep 2016 12:49:04 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id pm1sm13612479wjb.40.2016.09.24.12.49.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Sep 2016 12:49:03 -0700 (PDT)
Date: Sat, 24 Sep 2016 22:49:02 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: ks_wlan_net: Remove return statement from
 void function
Message-ID: <20160924194902.GA26688@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the return statement from the end of a void function
to clean up the code.

Issue found by checkpatch.pl script.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/ks7010/ks_wlan_net.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 9ef44cc..6bd7370 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -3349,8 +3349,6 @@ void ks_wlan_tx_timeout(struct net_device *dev)
 	}
 	priv->nstats.tx_errors++;
 	netif_wake_queue(dev);
-
-	return;
 }
 
 static
@@ -3416,8 +3414,6 @@ void ks_wlan_set_multicast_list(struct net_device *dev)
 		return;	/* not finished initialize */
 	}
 	hostif_sme_enqueue(priv, SME_MULTICAST_REQUEST);
-
-	return;
 }
 
 static
-- 
2.7.4



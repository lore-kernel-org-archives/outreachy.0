X-GM-THRID: 6810919292495724544
X-Received: by 2002:a63:a052:: with SMTP id u18mr1077188pgn.210.1585790722534;
        Wed, 01 Apr 2020 18:25:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:fb01:: with SMTP id o1ls1485467pgh.3.gmail; Wed, 01 Apr
 2020 18:25:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypKrDOUua4r0ma6gzPRlh43cDBBGm2XbWJJHouDFfNhAzGx0oPVHLsQfD3rX1cXkVAZBZ5Ty
X-Received: by 2002:a63:8ec9:: with SMTP id k192mr1019795pge.293.1585790720999;
        Wed, 01 Apr 2020 18:25:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585790720; cv=none;
        d=google.com; s=arc-20160816;
        b=p1TkqOI6mD9y2BZCPUgLKyEJoGGzctjZZZgl1XU0yu1eZcBTj3/rDD67V++EcPW8t1
         UdqP/ogs7JGBzJJu7Gb5pgRrSN9szIqfiox4JYw9KoEHHs4mFQBrFDSKLvJ2eZqTnWWz
         acPgIAcJurIqdZbgBxjyexFP6L4FDX4/LJ5oZzaT444z6+QJ/U7kVrgmVaJ5KydbjNmm
         bA0Ed6gJuUKtxt7urygsm6O2+MgXEDYyqfhhlZYgOI0u3Xn51JjBQR+0/n8h7IqoxEVn
         Ar8NXbwWr6VBQx5YPyHjB6O6wbEWuHflLsUukUdae/hthqsAA4rQq+meZBwdwiP/cfrr
         fq5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ECaKk1XEhaLeQWM1QY7b2cbJfc2H+NtdzI3cEs6W3bc=;
        b=01Ff5OrWB25jcSKIvPoDjP+KG8bQUbcg4jRen1hyiRQdpETikzLi/afyA2tRdN/dga
         h67wn5hrqGqZ1vaNPPBi8J/whPJi9/Zll1iOBjXbv1EuKCF3SqKY2CI86azI3IzyVcnB
         jJ4WU0/w4R7GmlF1AXlTrPNmaJCeYpeT1E+7K5ZxwomwPuO86QCxkwJ73MeJma9I2EbL
         eW1jAcdZI0s2SZv+sCXxUPubNzq3kDV+oSnD+qWyqi7IA8ZFLQJTJXBKSgSYuE9e/MU6
         DFNj8bWwdAQ++hlUe6izkoacW6jA4wJOFTAYmZvNJZ81/O2bJ4/vTCxAhhYM9IqgG8IP
         ic2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e0Y8bY0Q;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x12si163178plv.3.2020.04.01.18.25.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 18:25:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e0Y8bY0Q;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id h11so702023plr.11
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 18:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ECaKk1XEhaLeQWM1QY7b2cbJfc2H+NtdzI3cEs6W3bc=;
        b=e0Y8bY0Qfsg7n02ddZ8uiswipY9fuSgKm6X1sbnDAv/lfkxMia058WZBkqhK1Shm17
         rbhURDSsKfGqJjKOlUlUV1hPqO/r5cxIWXuo9ebuaF40Cwx1NIv7hgfZMYswHlnED/uy
         laXWmR2WR+D2bLl2xpsyRKvB0q1LRWQVbwujyCMO2IHN7v2HyE4eonQeMS3SafncKKi9
         a5LEam9Ct4DCAiN63J2BaN5vV43vEQlKajNeDrT0wioFYYpGMIJpTJQ8+Z2XAvX1LnzC
         wY/Y10MjzbOx4iwbFW0KTzL8oVlYWuoOPNiEIHLJXBzBwB4He1uIlnNFMg7OraR5KX3D
         xWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ECaKk1XEhaLeQWM1QY7b2cbJfc2H+NtdzI3cEs6W3bc=;
        b=WgeVE+gz9muyrmGtD+0Px96kqSKKRS7CbFW7/jdB52KgLOugQOGBeQWBsgynTY5Vcs
         io5BJsE8y1m1hfw9rY0V5zouYIiYpNeZGzkRFmyCcjxJugbhMA3swlZjleoRfZQg4NQD
         Gm0Vormcv/BYqYz/Mz5mWxgNnifW9c8BkkhmQjoHQhhIot9i9RSezs8jUGmb9XNzUk/R
         +zO4RsBpQ1viXPW+UhXeqCRqmdtrhSBsZBv5EPEHnqJtz5I6TVYg7lyTPD0Hpdm/+2ls
         xQuLFTK8EZBxNbb/4IRyZ9OtMnpUP+/oegXdteYMVpPzeMV/IrgbI9zhltqIV0oIg2BW
         2xTQ==
X-Gm-Message-State: AGi0PuZCE+pvKf6D2EjciKYRwReRxXTVIilrYwOOSqUO6mbU67nD0wfI
	npeebmFIFPQOUVOtt4OGMysCCNOZJbfglQ==
X-Received: by 2002:a17:90a:36c7:: with SMTP id t65mr946992pjb.182.1585790720459;
        Wed, 01 Apr 2020 18:25:20 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id q71sm2516633pfc.92.2020.04.01.18.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 18:25:19 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Laura Abbott <labbott@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
	Todd Kjos <tkjos@android.com>,
	Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>,
	Christian Brauner <christian@brauner.io>,
	devel@driverdev.osuosl.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: android: ion: Fix parenthesis alignment
Date: Wed,  1 Apr 2020 18:25:15 -0700
Message-Id: <20200402012515.429329-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix 2 parenthesis alignment issues.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/android/ion/ion_page_pool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index f85ec5b16b65..0198b886d906 100644
--- a/drivers/staging/android/ion/ion_page_pool.c
+++ b/drivers/staging/android/ion/ion_page_pool.c
@@ -37,7 +37,7 @@ static void ion_page_pool_add(struct ion_page_pool *pool, struct page *page)
 	}
 
 	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
-							1 << pool->order);
+			    1 << pool->order);
 	mutex_unlock(&pool->mutex);
 }
 
@@ -57,7 +57,7 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
 
 	list_del(&page->lru);
 	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
-							-(1 << pool->order));
+			    -(1 << pool->order));
 	return page;
 }
 
-- 
2.25.1



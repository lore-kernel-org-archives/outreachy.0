X-GM-THRID: 2595026370560
X-Received: by 10.43.78.198 with SMTP id zn6mr9380923icb.12.1424641195592;
        Sun, 22 Feb 2015 13:39:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.42.202 with SMTP id q10ls587247obl.21.gmail; Sun, 22 Feb
 2015 13:39:55 -0800 (PST)
X-Received: by 10.182.126.168 with SMTP id mz8mr9504320obb.9.1424641195409;
        Sun, 22 Feb 2015 13:39:55 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ks4si3982589pbc.1.2015.02.22.13.39.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 13:39:55 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabkx10 with SMTP id kx10so22521540pab.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 13:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SO3sBabUGNIjJUdFToth0agdFlyx9Rx0A7RfS7x6YRA=;
        b=XEL72BRcQT6U9ysSfatlqi7DPDf/vbQEouMcdG0Eh6v23K15snWxy+UupY5MWMMteJ
         s+dQvOj5FuV0gv6fc+81pikw9RBv5fjzpA8p2EwNw6vdf73gjhCxjj76e1sZgBL1UHZI
         t6LhTjeRNq6RGC5mTsK5ylPhN4Og4IHwI3D1ZlHCflYgw5Wtzv2HPe+ngnsXXOW+MObp
         IXSQqY8uZCrFfo8Tvv8X87KzJHRyqx7aVNGHMjtKlw1EKQGuXTOkaf/fHIHXUFpnRoE9
         0egd7j75RKtVUlkJot5VN9iCUNe1BLaFFRdN0otlManCXg0CaEcRiJ6pN2irihUhTH20
         hPpQ==
X-Received: by 10.68.200.36 with SMTP id jp4mr13748372pbc.153.1424641195306;
        Sun, 22 Feb 2015 13:39:55 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id dq4sm33423751pdb.96.2015.02.22.13.39.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 13:39:54 -0800 (PST)
Date: Mon, 23 Feb 2015 03:10:57 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: rtl8192u: Remove commented header.
Message-ID: <d0762b3f373f70fead6c5e9234bf1910501790fa.1424640704.git.navyasri.tech@gmail.com>
References: <cover.1424640704.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424640704.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the commented header <linux/config.h>
as it is not used in modern linux systems.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index 143b682..95f5fc7 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -9,7 +9,6 @@
  * more details.
  */
 
-//#include <linux/config.h>
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1



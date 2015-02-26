X-GM-THRID: 3565286326272
X-Received: by 10.66.102.66 with SMTP id fm2mr7096499pab.4.1424935096952;
        Wed, 25 Feb 2015 23:18:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.36 with SMTP id c4ls112202igl.8.gmail; Wed, 25 Feb 2015
 23:18:11 -0800 (PST)
X-Received: by 10.43.117.72 with SMTP id fl8mr7289531icc.23.1424935091783;
        Wed, 25 Feb 2015 23:18:11 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pc4si4324pac.0.2015.02.25.23.18.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 23:18:11 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fa1so11853748pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 23:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=j7uI0Etk28y0Hz1cX7pPZZt/q+N1coUU29xL2ErV1AU=;
        b=D5LvFkJf22tHtYBd98pkBRzClI+SP4sixos+Mqkelv4Q7OXuy/hGDG6Xb3B6Ghv2Oh
         hycWvz56PJVXDlvzSoi5+ZZdkruqw7JVuR9RqYi20kag7TbwLqZ2mMvGMr3Yz1tqCSF0
         lPXRiSU5HkZeN2CpICJO90gGk6Fnv0K7YtO+QOqpARm1joUKmFNiBZN184DUk6gNyj+q
         ex8AvVY2T8h8DtctctaEPfvgh0i89WYEDM2KDOdqE1ittHrPxD+35Ycpv7qJy2pARnGi
         5G+CH8+vyoXaGLDqT7kcULX8P1R2Yg+tKLMHQvIvQu7hA3HI7UKB5+fMs/kELaiU/6Q6
         NY0A==
X-Received: by 10.70.42.70 with SMTP id m6mr12553382pdl.19.1424935091677;
        Wed, 25 Feb 2015 23:18:11 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id jd10sm2328pbd.23.2015.02.25.23.18.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 23:18:11 -0800 (PST)
Date: Thu, 26 Feb 2015 12:49:19 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/4] staging: rtl8192u: Remove unnecessary comment.
Message-ID: <ba2c7eeeb68b9659003a93c7a9c5f18c31db5f60.1424934230.git.navyasri.tech@gmail.com>
References: <cover.1424934230.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424934230.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The <linux/config.h> header file is not used anymore,
so it is commented out in this file.This patch deletes
that unnecessary comment.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v4:
    -In v3 I sent the wrong patch, so sending the right one in this.

Changes in v3:
    -Sent wrong patch(version v1 of the patch).

Changes in v2:
    -Removed an unnecessary commented header.

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index eb89321..971fbe6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -11,7 +11,6 @@
  *
  */
 
-//#include <linux/config.h>
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1



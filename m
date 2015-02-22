X-GM-THRID: 2595026370560
X-Received: by 10.236.20.234 with SMTP id p70mr6228059yhp.46.1424641257810;
        Sun, 22 Feb 2015 13:40:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.25.196 with SMTP id 62ls2159118qgt.29.gmail; Sun, 22 Feb
 2015 13:40:57 -0800 (PST)
X-Received: by 10.236.25.102 with SMTP id y66mr7459219yhy.40.1424641257668;
        Sun, 22 Feb 2015 13:40:57 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pc4si3983307pac.0.2015.02.22.13.40.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 13:40:57 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padbj1 with SMTP id bj1so22476296pad.5
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 13:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=1+nmHRjy49HRadUnVUVYMEShZa2vhAfkd+aSB+sACp4=;
        b=CoCrsbN0VL8gew09e8FntEMlb0Tl+s4+axEHR+UsnU8m4bQdh2WmTXx8UXeQm42Gpp
         UnhQZu6Jf8ut/3P4ubS7BYr/AaSOBukXZDp0tR9kTmrX41XWe4E+cNY1lySu88hPXEnB
         yPOq4oK59Z5wpYbksa56jTgP23sAJOHn8by61Hqqpzv5RSKdzhgCG/FuGkT/9MeBzD1R
         9WVERe/RcPCvNt4Gle8GvZVz6Km2DK6cAPJiooKfiOHIJxQcRm7Yzmnd1TiYAVQ+wkik
         COVpNY4ZEP8zV9UOxAIseKb1yWuxstbjS3SEM1CoDZ/WLhXIJpBlUQuLxChlZounnZFk
         XE7g==
X-Received: by 10.66.55.74 with SMTP id q10mr14085011pap.94.1424641257555;
        Sun, 22 Feb 2015 13:40:57 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id w16sm22833438pbs.35.2015.02.22.13.40.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 13:40:57 -0800 (PST)
Date: Mon, 23 Feb 2015 03:11:59 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: rtl8192u: Remove commented header.
Message-ID: <4df2ec83aed8479ade97b76f510e8a7c25889774.1424640704.git.navyasri.tech@gmail.com>
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
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index 8c1bf1f..c43d0fe 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -9,7 +9,6 @@
  * more details.
  */
 
-//#include <linux/config.h>
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1



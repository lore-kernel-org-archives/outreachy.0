X-GM-THRID: 9631255494656
X-Received: by 10.152.20.41 with SMTP id k9mr2820457lae.10.1427050240352;
        Sun, 22 Mar 2015 11:50:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.81 with SMTP id be17ls80182lab.29.gmail; Sun, 22 Mar
 2015 11:50:39 -0700 (PDT)
X-Received: by 10.112.39.11 with SMTP id l11mr730142lbk.12.1427050239371;
        Sun, 22 Mar 2015 11:50:39 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id sf8si312658wic.2.2015.03.22.11.50.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:50:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id p1so121354863weg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 11:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=L5wIfQdT66VTrU1XtZSqHTQQnlhglRGWpqKSwOm4THI=;
        b=iw3gjhgrvwqlCIDGHc5SIWgIyzAE5qrEltVavvZHg/W5N8B/OXdpp+I2fXOQG9jEJD
         LhRJFqRbCaa1va16m/6FlQkqsQ26qiBS6bkHLaPa1CFGo+jlrMcIrE5DdsyvNUzwOnkI
         qzdXdTOla4L9bMy0tiF4ba0vQi6EgMRBwHnWXY53WTOz/Ya40oXLy1wZhKBP0/82Cki9
         lgj+xgwgImihYKkx9OlkXdqanj3ynWmMPQ3+jAw01qR2dxVmwChm0PsVw4HjLT7Kcocz
         ad7UIDbu924OHUTRsoDFdhqzSbpe5zf9282mAKvCG4WXm3jUE5mmxOenoFLByPMLruow
         gsyg==
X-Received: by 10.194.108.137 with SMTP id hk9mr134401997wjb.112.1427050239302;
        Sun, 22 Mar 2015 11:50:39 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id j7sm5874787wix.4.2015.03.22.11.50.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 11:50:38 -0700 (PDT)
Date: Sun, 22 Mar 2015 20:49:51 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8192u: Remove function prototype from .c file
Message-ID: <b3b059d7c4503e0040c35b810a5b86ea0f6a8af3.1427048210.git.cristina.opriceana@gmail.com>
References: <cover.1427048210.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427048210.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove function prototype from r8192U_core.c since it is
declared in the r8192U.h header and this is included in r8192U_core.c

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 9b31cd0..8834c23 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -408,7 +408,6 @@ inline void force_pci_posting(struct net_device *dev)
 }
 
 static struct net_device_stats *rtl8192_stats(struct net_device *dev);
-void rtl8192_commit(struct net_device *dev);
 static void rtl8192_restart(struct work_struct *work);
 static void watch_dog_timer_callback(unsigned long data);
 
-- 
1.9.1



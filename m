X-GM-THRID: 7423401132032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,66aeee52302e9056
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.43.146 with SMTP id l18mr31113434yhb.23.1425990259567;
        Tue, 10 Mar 2015 05:24:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.15.129 with SMTP id fo1ls1187431igd.21.canary; Tue, 10 Mar
 2015 05:24:19 -0700 (PDT)
X-Received: by 10.66.157.194 with SMTP id wo2mr31871566pab.17.1425990259359;
        Tue, 10 Mar 2015 05:24:19 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22a.google.com (mail-pd0-x22a.google.com. [2607:f8b0:400e:c02::22a])
        by gmr-mx.google.com with ESMTPS id pc4si88161pac.0.2015.03.10.05.24.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:24:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) client-ip=2607:f8b0:400e:c02::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22a.google.com with SMTP id fl12so1382581pdb.5
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=nVodZDyiEWaPIqheWuonxZXQ9kqfRwNfe5zowCDSPnI=;
        b=JCO7mT+y7FinuMr6HUcNeq+evjOn5vU+AyOcYyHmdPOVkdR4nskZ/0Z2VKO2UYuWmO
         VQ1/lLg0Zc7KzmKmQwTfWgbbzM0SfC6Xb/4GdtHU8tT/0V9hcmFVr07bSQLutvXFKCUt
         ZPqWinuTeoEK8x6UY+R+P0UrNwAyxy+2bA/hr9Za/dZED8xnrNZAK7M9plD+/65zzmcG
         VZ4miUkUtx5Ku9wKDeyGOXLfZyFH5m3yzwhN7eGL/p0BUV9olTjerKQ8JQ2ppKd9u27a
         7jjsv0GI3v2IxvwFm2OX5DaFke/4Ln+YfquABw2fVbC8m0/6vgvTVuiZhtOIwCdYhPGB
         APfQ==
X-Received: by 10.66.136.48 with SMTP id px16mr28623492pab.89.1425990258971;
        Tue, 10 Mar 2015 05:24:18 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id j5sm779673pdo.60.2015.03.10.05.24.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:24:18 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:55:40 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: wlan-ng: Use kzalloc instead of kmalloc.
Message-ID: <626c182cb4c093f493547b6f5aa62820bb62c617.1425989875.git.navyasri.tech@gmail.com>
References: <cover.1425989875.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425989875.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kzalloc instead of kmalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.

 drivers/staging/wlan-ng/hfa384x_usb.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index c85b1b5..e109a7f 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -619,11 +619,10 @@ static hfa384x_usbctlx_t *usbctlx_alloc(void)
 {
 	hfa384x_usbctlx_t *ctlx;
 
-	ctlx = kmalloc(sizeof(*ctlx), in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
-	if (ctlx != NULL) {
-		memset(ctlx, 0, sizeof(*ctlx));
+	ctlx = kzalloc(sizeof(*ctlx),
+		       in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
+	if (ctlx != NULL)
 		init_completion(&ctlx->done);
-	}
 
 	return ctlx;
 }
-- 
1.9.1



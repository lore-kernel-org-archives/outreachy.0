X-GM-THRID: 6391116266457792512
X-Received: by 10.13.250.197 with SMTP id k188mr4309882ywf.167.1488124659703;
        Sun, 26 Feb 2017 07:57:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls1597974ita.12.canary-gmail; Sun, 26
 Feb 2017 07:57:39 -0800 (PST)
X-Received: by 10.99.114.9 with SMTP id n9mr4458524pgc.145.1488124659005;
        Sun, 26 Feb 2017 07:57:39 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si2395281pfa.4.2017.02.26.07.57.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 07:57:38 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so9802263pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 07:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YdiSc2b3lXjIdJZ8wxm8B9GdzAtiN7UUvFyEXxdNa60=;
        b=C9cTukyJopr1+W8kcKuW5H4M7WRHavDnJlz0/CP8iZDcjg+c9WxECMC3l79rcnXQw0
         H76KLPLUEQaYT2uhYataYSxarQdaUxTczZqOhB0Ej7RVDu5y1sqCQ1NMFlbPRnTxAqzH
         LMSYH8nGnmnSSukzBG+7e040QX2Vkka508nVDCxMGulGPFz6jL7ypHMEXtg+eKbWJVnR
         YmyphsWTKdFjg+WrM1cqMWFgntN8Xsu6NBJsjTd68IltaRCtNWcvR6T44qO/+s4mILDI
         da+F0VeGY+KMvo+y/ZxzqeC/QEN9jZ1Lh/+p1gZ7F1HKd565L696s80ZaxU4bjyU5A+R
         C/FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YdiSc2b3lXjIdJZ8wxm8B9GdzAtiN7UUvFyEXxdNa60=;
        b=YJBB6sUmUY/8ydKb+8EuR+1lKRDbOnRFg3uXiolveH+sMQrFEEmV4jclvT1WiJ1Hr4
         KvsC/0P5Wh0PU0tzdWtkcgohGU4FM9mGS3geBBGf+2HecIBSoPHGpQ53cB9azsfJJUI1
         aj9PSzObfDM+4ME9W/5EZFgiC3OvN24b7QrblGGU4NRE5t7quXje5G6lTKrmgq4fvQ1R
         OwPbigjokjd5x1rGzujxdhFFG0nHxsU6Twswpf86NVBGTzJciDzgmjMqBb0+snK0dSAr
         UXxqv/LWlEQdOwoCf81kcDHqGv7YBBdy1cIZnfs1Y28qbpi+l5P4P6E1mqvfzWWyM4xY
         euMQ==
X-Gm-Message-State: AMke39n+l219QMi5bALhMH5tg49cAgyWCOEaod50zxwg0EUGseqa+X1R3jILy8SnIuoLgA==
X-Received: by 10.84.131.33 with SMTP id 30mr18197430pld.45.1488124658822;
        Sun, 26 Feb 2017 07:57:38 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id e68sm8374782pfa.85.2017.02.26.07.57.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 07:57:38 -0800 (PST)
Message-ID: <58b2faf2.4737620a.bbbba.12dc@mx.google.com>
X-Google-Original-Message-ID: <20170226155730.GA29067@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 21:27:30 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 6/7] staging: sm750fb: Replace NULL comparison.
References: <cover.1488122987.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488122987.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replaced NULL comparison with pCurrentDviCtrl->pfnInit. This patch fixes
the following checkpatch issue:

CHECK: Comparison to NULL could be written "pCurrentDviCtrl->pfnInit"

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v4
-Added proper version number to patch.

 drivers/staging/sm750fb/ddk750_dvi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index 42c753f..171ae06 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -45,7 +45,7 @@ int dviInit(
 	dvi_ctrl_device_t *pCurrentDviCtrl;
 
 	pCurrentDviCtrl = g_dcftSupportedDviController;
-	if (pCurrentDviCtrl->pfnInit != NULL) {
+	if (pCurrentDviCtrl->pfnInit) {
 		return pCurrentDviCtrl->pfnInit(edgeSelect, busSelect, dualEdgeClkSelect, hsyncEnable,
 						vsyncEnable, deskewEnable, deskewSetting, continuousSyncEnable,
 						pllFilterEnable, pllFilterValue);
-- 
2.9.3



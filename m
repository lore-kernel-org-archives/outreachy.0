X-GM-THRID: 6263377185768210432
X-Received: by 10.129.154.16 with SMTP id r16mr11445850ywg.39.1458306141641;
        Fri, 18 Mar 2016 06:02:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.228 with SMTP id c91ls2412382qgf.37.gmail; Fri, 18 Mar
 2016 06:02:21 -0700 (PDT)
X-Received: by 10.129.83.85 with SMTP id h82mr5399505ywb.18.1458306140987;
        Fri, 18 Mar 2016 06:02:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id 12si1830234pfb.1.2016.03.18.06.02.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 06:02:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id 4so36536992pfd.0
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 06:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iRqm82myq3pudUFbELj3MjMW1xDX5c2X3tACk+c4K4k=;
        b=BnhXVVBKm9AZRAtawPXIcFB52l/MhGMCxx4CNjV39BCqgDmQRA9h6f+5l52Er8y1QQ
         LkJkNd8U51nspJInwupJzi2TRIS3x6sYAIUDVR/xQDKuCREYXyn0UzjFZ95IRyuatGLb
         JU+h8Yk2h300xEcJ+aEecd4lP9OYPECBt1cqw0ewrrnY4+s7CrLdXFrLucwrh82NlKEf
         mAGDuHLb6rVqqCApzZWyEKoxZXXtXoGuds7fH6WJQkOsbIT5aJZ05hawkp02Wu72QD81
         5s9hFPYTQeMOtK8UvkUI9fphG/nv2H+KSj0jIlKWvShnuhgDxJdb+UGTVcJyNvM38He+
         MoFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iRqm82myq3pudUFbELj3MjMW1xDX5c2X3tACk+c4K4k=;
        b=hSvH26MwOeSReYe5Xdk1lOaaqevReLS7HxZVX6KFO9gIFu5dD9ZF5Oj2fQihxSxxDK
         mRHijfIlLH3Uaa0R05HfR+WTDYXPEHVgpYrd3YQFEJohwKCb7LlbASI5+YJ4Pe2Un+k/
         DPOC2e9EsY+bOPXqeUZdyuRgJfIPBxtXmGcSslubHrOZwIgH5qTJOyggAW5UM6Wp/ik+
         wGdni+E43jpmBEnY1I6ee4O6aZL6t/LA5cD6Q/4I8jFQwxM7xpuLMSMNfjfuMo1ObBYq
         rn3bMaMdaO2EWUUiZ5ET3mPH9NXN5kGvz87Q7OcrHdHJDn/RLmvKJfpdIayPIeQ78vSi
         v0lQ==
X-Gm-Message-State: AD7BkJIdzTfwmWgLf2ZIje7SPYM3mTp2wAJFU2qt2m36myffMFc4PC/sZAkSU0nmO2XsxQ==
X-Received: by 10.66.142.132 with SMTP id rw4mr23083096pab.26.1458306140767;
        Fri, 18 Mar 2016 06:02:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.162.14])
        by smtp.gmail.com with ESMTPSA id y21sm20978176pfa.85.2016.03.18.06.02.19
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 06:02:20 -0700 (PDT)
Date: Fri, 18 Mar 2016 18:32:15 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com, dan.carpenter@oracle.com
Cc: devel@driverdev.osuosl.org
Subject: [PATCH] staging: most: hdm-dim2: Remove possible dereference error
Message-ID: <20160318130215.GA24475@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Commit 3eced21a5afb ("staging: most: hdm-dim2: Replace request_irq
with devm_request_irq") introduced the following static checker
warning:
drivers/staging/most/hdm-dim2/dim2_hdm.c:841 dim2_probe()
error: 'dev->netinfo_task' dereferencing possible ERR_PTR()

Remove the warning by returning PTR_ERR immediately rather than 
storing in a variable and returning at the end of the function
since we do not need to free anything.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index 0dc86ad..a364495 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -771,7 +771,7 @@ static int dim2_probe(struct platform_device *pdev)
 	dev->netinfo_task = kthread_run(&deliver_netinfo_thread, (void *)dev,
 					"dim2_netinfo");
 	if (IS_ERR(dev->netinfo_task))
-		ret = PTR_ERR(dev->netinfo_task);
+		return PTR_ERR(dev->netinfo_task);
 
 	for (i = 0; i < DMA_CHANNELS; i++) {
 		struct most_channel_capability *cap = dev->capabilities + i;
-- 
1.9.1



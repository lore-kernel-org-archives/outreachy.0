X-GM-THRID: 6263377185768210432
X-Received: by 10.31.151.21 with SMTP id z21mr12835493vkd.7.1458328666619;
        Fri, 18 Mar 2016 12:17:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.22 with SMTP id 22ls2337145qgi.41.gmail; Fri, 18 Mar
 2016 12:17:46 -0700 (PDT)
X-Received: by 10.13.214.13 with SMTP id y13mr5052301ywd.24.1458328666081;
        Fri, 18 Mar 2016 12:17:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id h69si2201963pfj.0.2016.03.18.12.17.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 12:17:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id u190so179941598pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 12:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IA4VCJtvOLMglqZSjRTWK7eVOH8iC/2tuWDE7Lt2++I=;
        b=ZZxTeLM++bwdbB9Y5qJMdyZholBA8dQVZGud+FDfBGxRIGQE3W/5BA++8Ff8kpalfi
         BqV3V6RqQfLa/JYl6zzuXlXhTHaBu3Hrl9eL1JeCqeHFeCAvY2AE24d0uA6EEC5r1ikY
         olEI1kUh/1NjPty6L4BN6tqlnXMEcRonYkHlaPf4OBhKeayxwfLKCTr0cNbSEjNJCNcu
         jjifvp8j8sdIh1f6/HN4TFAoy/euR0SD61fmyQnqxV6JAfCcfXlLTV/37oCP7EJ6aUrg
         rFZp5rcnWzFKKvgYfLaXLsBMsM8H532I43wPs811gkoZaIgaDM2J9zZt4/iMtte3378O
         fESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IA4VCJtvOLMglqZSjRTWK7eVOH8iC/2tuWDE7Lt2++I=;
        b=itHSIZHAVpd7/EdzOBUtkyZlt0fVqPQGk0z+xjcIiiC4NswhArB8cP4NA9NAlTcOp6
         MSLTvxMvZGFm749KAUQsAqWxREjpG/z/TSeie1/UaRv3riz6WMVprtx9tzH/Z1PeI4lj
         QDaqndcNjZma272nqqysD9ErzGpP03HyhFDaiY+OYZrs0xWEWLflRC+eLwLFsx17Cobd
         dLjzuzAj5rPT4o2T4174TAIdsr5CZUZkAQnX7njWwNveK/t8JtFlOQCm41Ow0II9z941
         kKiMXXNSrNHnXghxeB7OZkNUWzuTV1bYiAymvafM1A4ATnqsqQDenXz0UB2wlnPk//jL
         zogQ==
X-Gm-Message-State: AD7BkJLeCwswhiIkOM50SQSh8yv+onRM0laW5xDdJK/fKGAnImcqbzLjfarnHFM8zzvJuw==
X-Received: by 10.98.14.207 with SMTP id 76mr26214462pfo.1.1458328665854;
        Fri, 18 Mar 2016 12:17:45 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([117.99.186.180])
        by smtp.gmail.com with ESMTPSA id r68sm22768354pfb.51.2016.03.18.12.17.44
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 12:17:45 -0700 (PDT)
Date: Sat, 19 Mar 2016 00:47:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com, dan.carpenter@oracle.com
Cc: devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: most: hdm-dim2: Remove possible dereference error
Message-ID: <20160318191741.GA848@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Commit 3eced21a5afb ("staging: most: hdm-dim2: Replace request_irq
with devm_request_irq") introduced the following static checker
warning:
drivers/staging/most/hdm-dim2/dim2_hdm.c:841 dim2_probe()
error: 'dev->netinfo_task' dereferencing possible ERR_PTR()

Remove the bug introduced by the commit due to change in control flow
by returning PTR_ERR immediately rather than returning at the end of 
the function since we do not need to free anything.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Revised commit message

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



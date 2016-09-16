X-GM-THRID: 6330852738662924288
X-Received: by 10.200.37.77 with SMTP id 13mr10006848qtn.10.1474016518069;
        Fri, 16 Sep 2016 02:01:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.193 with SMTP id b1ls5174820otd.19.gmail; Fri, 16 Sep
 2016 02:01:57 -0700 (PDT)
X-Received: by 10.129.105.6 with SMTP id e6mr9431358ywc.8.1474016517716;
        Fri, 16 Sep 2016 02:01:57 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si2294175pfw.1.2016.09.16.02.01.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 02:01:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so720895pfj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 02:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9cYJ0wp3tSyUWNLAQefF8g4Z1WXgy1raqP8Jg9/egBE=;
        b=o8CqAsyJ1/LdoGQxef22H8QUwWigHflx1/N9HHsvghljw2JD6ZDCen2ASEoKSprFXZ
         nUKc8EW6d22h6GhoiCkMCCy6eChsZrpQOhAL9Z6YWazDQMDfVqd1iLueYCCAzP5ciMv5
         EufPyeIwNiZQ72r4OAN4tyCGMvQRjSTso5T0zkTYUtXTQ7NPoyXy12qhBRErkf7duUUs
         A+81rT92b5PhLvxosEQszTG+7va1ZwZZOcbiwUuJ1N52y9BudNgcdZvDqTu0hwcf8HBo
         0/0kn8Ei34SkPs4XeVhi54z++9vFyXQbbbx8FXe7LUxq+K6SZ4b0BN71xyXzRJtSi+zc
         4LZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9cYJ0wp3tSyUWNLAQefF8g4Z1WXgy1raqP8Jg9/egBE=;
        b=ZJiUlIGKhS1ZeJUVDIrZRVvNXpQUy8Lb3tTu2pQgJXR8ZWjZR8AEKWXDL8agRkG4IV
         0fWUpze81sAVfyZd6AOWD2fUQCtMQLFF5IaMVAFf5n/gFrn6O2GNAq3uOwVgnwgoSVZ1
         YliSY/2IkIh0OLHXgST4LC01knYC3+O2pC4gtlDjbK7w+0ITGSHJwbt4/GwlqM222ebe
         s2ZD5NyPq82LznS06NXLHVBMjCF/7QQCgaejwHYtcoiiBIwH0zTDlPhf9pFmYTT3HYyt
         Ao9PP+vnOOFG6PVO3r5xdU+Hsgm2NEYcu0rPGITvHhzr5D1g18k7VU2t0s5G4fwIOQW8
         st0A==
X-Gm-Message-State: AE9vXwPshyu1gqAdMBKOnQg9ElOFXJ70OcQpYAh0kqxrTO7RRr2Cifzry0wijaKWN+pBXQ==
X-Received: by 10.98.80.136 with SMTP id g8mr7651242pfj.185.1474016517298;
        Fri, 16 Sep 2016 02:01:57 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.70.17.88])
        by smtp.gmail.com with ESMTPSA id o5sm50478088pfb.9.2016.09.16.02.01.54
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 16 Sep 2016 02:01:56 -0700 (PDT)
Date: Fri, 16 Sep 2016 14:32:32 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thomas.petazzoni@free-electrons.com, noralf@tronnes.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] Staging: fbtft: Use !x instead of x == NULL.
Message-ID: <20160916090231.GA3940@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.
This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/fbtft/fbtft_device.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft_device.c b/drivers/staging/fbtft/fbtft_device.c
index 924abd3..e921183 100755
--- a/drivers/staging/fbtft/fbtft_device.c
+++ b/drivers/staging/fbtft/fbtft_device.c
@@ -1401,7 +1401,7 @@ static int __init fbtft_device_init(void)
 	long val;
 	int ret = 0;
 
-	if (name == NULL) {
+	if (!name) {
 #ifdef MODULE
 		pr_err("missing module parameter: 'name'\n");
 		return -EINVAL;
@@ -1418,14 +1418,14 @@ static int __init fbtft_device_init(void)
 
 	/* parse module parameter: gpios */
 	while ((p_gpio = strsep(&gpios, ","))) {
-		if (strchr(p_gpio, ':') == NULL) {
+		if (!strchr(p_gpio, ':')) {
 			pr_err("error: missing ':' in gpios parameter: %s\n",
 			       p_gpio);
 			return -EINVAL;
 		}
 		p_num = p_gpio;
 		p_name = strsep(&p_num, ":");
-		if (p_name == NULL || p_num == NULL) {
+		if (!p_name || !p_num) {
 			pr_err("something bad happened parsing gpios parameter: %s\n",
 			       p_gpio);
 			return -EINVAL;
-- 
1.7.1



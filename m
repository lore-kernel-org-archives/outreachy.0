X-GM-THRID: 6330109506616295424
X-Received: by 10.129.73.139 with SMTP id w133mr1012941ywa.28.1473843470848;
        Wed, 14 Sep 2016 01:57:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.112 with SMTP id o45ls479767oto.24.gmail; Wed, 14 Sep
 2016 01:57:50 -0700 (PDT)
X-Received: by 10.129.157.21 with SMTP id u21mr988126ywg.11.1473843470426;
        Wed, 14 Sep 2016 01:57:50 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z4si809662pam.0.2016.09.14.01.57.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 01:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so459281pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 01:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZKksnr/VVSlTkIb/cRx2YGy0VZJ0/GUA78U4Nig+hHE=;
        b=nk/zwoeId6ilZ8kX6Z/mobH9sOWsbDe7hO3XQnrnOrXSJRPzElmeyKZyb3y0GNGDbe
         mjuc+lBcXIEiRD+26IUVfRWW4b+wSMSQ1jc4gN5TmShKJ8SXV6/dZ4eklaCkFqGWGWVo
         3sKfcXz4/z/1FAqv1eGStkzqCOGP6ztrBNfAGex5WfB+WUxzCUeqBgN2iVbBURXr5aro
         uQ9YrBxueG0MLmqLmgnIR3k+k31Pslis3+6U+ArJI/1P/huJl7+fZm4+nrJHNKf2jWgi
         rLZwjmJyeMWJPLNjIoVqkK2sOdUIe9Ds6wz5JWC177Y5v4RgHhbUj0SSvi9Ra7EyccPT
         EDvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZKksnr/VVSlTkIb/cRx2YGy0VZJ0/GUA78U4Nig+hHE=;
        b=ZYcV6KtlZYsoxar0vjw6IXRNPyLQUEUAuj6YNTFtpPZLWPLtW8tH8HHD5I2J2UJDA5
         smt1JNfh9MDaB7XT7M8TG6bQvBujmgmIjsQjcF3M9+0BS5RVAdBVDdghz0nX51iSa/A0
         okxaW4kT4DrDDj5cH+2D9q6SBe+1OYgJJUWRMobEWYc9IEYP803L+xo565Z2H2vnky8M
         BvAWyl2sBsLbQmIfKRs1QQIQCi+DsAPU5r3HIH6rNLC0Fzjy1o3HUFF/g/chu+dPalZS
         v33Xh6mxWcomMlbv6d26I8EDVp+Wvd1/2WzKgm7zDxrD+ZjIjMxokqOwSjqBsZHLHYXN
         03Hw==
X-Gm-Message-State: AE9vXwOXDpmQaNRquCghj0tWbex9wFVUUcSBqa8QOPGLB5ZdfwzYj8C8MkUvWmnSQ0E2+w==
X-Received: by 10.66.165.67 with SMTP id yw3mr2613775pab.8.1473843469874;
        Wed, 14 Sep 2016 01:57:49 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.94.114])
        by smtp.gmail.com with ESMTPSA id p17sm36416240pfi.7.2016.09.14.01.57.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 01:57:49 -0700 (PDT)
Date: Wed, 14 Sep 2016 14:28:22 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: speakup: Use x instead of x != NULL.
Message-ID: <20160914085822.GA2558@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use x instead of x != NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/speakup/fakekey.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/fakekey.c b/drivers/staging/speakup/fakekey.c
index 8f058b4..032b936 100644
--- a/drivers/staging/speakup/fakekey.c
+++ b/drivers/staging/speakup/fakekey.c
@@ -56,7 +56,7 @@ int speakup_add_virtual_keyboard(void)
 
 void speakup_remove_virtual_keyboard(void)
 {
-	if (virt_keyboard != NULL) {
+	if (virt_keyboard) {
 		input_unregister_device(virt_keyboard);
 		virt_keyboard = NULL;
 	}
-- 
1.8.2.3



X-GM-THRID: 6263088426063495168
X-Received: by 10.129.154.16 with SMTP id r16mr8266133ywg.39.1458239180968;
        Thu, 17 Mar 2016 11:26:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.197 with SMTP id g66ls900613ioi.0.gmail; Thu, 17 Mar
 2016 11:26:20 -0700 (PDT)
X-Received: by 10.107.12.212 with SMTP id 81mr8211495iom.18.1458239180518;
        Thu, 17 Mar 2016 11:26:20 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id tu5si1259730pab.2.2016.03.17.11.26.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 11:26:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so12372268pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 11:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dVvLneVRnoZt9DAuvpgLz1iVhrs5eiclWMmXn7/Sw+I=;
        b=vBR+yzzyBzqy1ol6WoPYNIuEIfOJV8yog2/5yms4bW3bEcNwTiJqov7zG2WQH5DPM8
         VjqWM6UkcnLfgiGWJw5BXtX67pTPGuYBeqKEm7Q1Ks6ldRR9reCB7XsbKyveub3PVgeM
         QPzRGDWuzZLcqbPJA+Lz00IeCoupon8zYQNbTLcxHUG4tejiUXVPiRp/Aj3yE5oh9Svm
         NWDy/jiOe8OVNBOdOlNELbgC4qG3whtU5JdYFLdUHOZr4tUqud1kcjBhks7I3LwcOca+
         IobOkTuDzjKXwH7or0f5lNLkCR6oGZaDmIbzaiMCnCgoqqEChcFEA2d+tR47kMs+gpTo
         IlVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dVvLneVRnoZt9DAuvpgLz1iVhrs5eiclWMmXn7/Sw+I=;
        b=K916Dh6oJsX8cXGuDT8nhgB1HnAIjFF0KTJlSnL/U7NlPfuubktm472pta1Dp9OC1i
         JQWOn8g4disHBjQoDfwDJcgCFW+2vg4ywQTofQ4Pdh7Dt/71Z0NG2mLP3T0+CfDQxj8i
         P45Pn1nDVmsldgTVds1ZzdWU0aOheoxQdDaGx8I6+0Atcvr0l/fEzmyOpUDX4CwKmolD
         arEZgj/k+SsHHiClRw+7kAr8BgCu4CczQZaaAA9lwqh4C/ZdKU039PqqnxnxXj8d2221
         4s+IqCPnkXTnkYaiYpvRYLShNC7qqGrSBAFwPNCIrX1XqSA8/0gTJRkIMnPe65T0lcG8
         cdWA==
X-Gm-Message-State: AD7BkJJcxRVzDqK+JoeTexO4y/dEOQmcJScw9OHvO4lzv6SXJpHTH1Yh3tWnFudwKk+6Hw==
X-Received: by 10.98.66.75 with SMTP id p72mr17336776pfa.50.1458239180364;
        Thu, 17 Mar 2016 11:26:20 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.0])
        by smtp.gmail.com with ESMTPSA id yl1sm14998427pac.35.2016.03.17.11.26.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 11:26:19 -0700 (PDT)
Date: Thu, 17 Mar 2016 16:57:23 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] Staging: i4l: Use !x instead of x == NULL.
Message-ID: <c24859a45083909ee11d40e8dadffc323c238b3a.1458213062.git.bankarsandhya512@gmail.com>
References: <cover.1458213061.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458213061.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/pcbit/edss1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i4l/pcbit/edss1.c b/drivers/staging/i4l/pcbit/edss1.c
index b2262ba..e72c164 100644
--- a/drivers/staging/i4l/pcbit/edss1.c
+++ b/drivers/staging/i4l/pcbit/edss1.c
@@ -254,7 +254,7 @@ static void pcbit_fsm_timer(unsigned long data)
 
 	dev = chan2dev(chan);
 
-	if (dev == NULL) {
+	if (!dev) {
 		printk(KERN_WARNING "pcbit: timer for unknown device\n");
 		return;
 	}
-- 
1.8.3.4



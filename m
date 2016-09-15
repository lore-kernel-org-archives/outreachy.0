X-GM-THRID: 6330674938515554304
X-Received: by 10.31.16.162 with SMTP id 34mr85405vkq.8.1473975209755;
        Thu, 15 Sep 2016 14:33:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls4267551otj.25.gmail; Thu, 15 Sep
 2016 14:33:29 -0700 (PDT)
X-Received: by 10.129.179.130 with SMTP id r124mr8064560ywh.27.1473975209457;
        Thu, 15 Sep 2016 14:33:29 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si1775298pab.1.2016.09.15.14.33.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:33:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id p2so2582162pap.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 14:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SW9OOi5gm9zXNMS2jEh/4Y7xkkntCCJt0iXBvI1r6OU=;
        b=mPwWJ8K2aXANsa9mGMvL8b5wFhJvgy4amzpEwOPJALRn6KJlgyXPwIBF5yQlCPHlf3
         NeVKM8zXsYbNwxCeK7rna19S/hOs83PyWU7uIh+GCMHlze4Ro9WotHolUXTVxIXQTHPr
         A6IBrwLKg1imfVLyB7GeltU1XwDKJdVPNGP59YdIcOj0zqXpqqvx1TnTFiYZA/1y19t8
         3nRYVN7YhjHugKwe4RKm9PkLNK0o6Q6tiUdXT7QJTZ41wYUPp5ziEMy+FzjhrMQk7ykk
         BP8/j36/kovgA2kzlIE26vvyfM9G/VMygDswLxUBl/qO6CzSp0VQNfIG1ktBXzzbzdwi
         2seA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SW9OOi5gm9zXNMS2jEh/4Y7xkkntCCJt0iXBvI1r6OU=;
        b=To5QQo9we6cfcQ/WqyzDvrUD9Od/hDpD39i6Em6Kf0p2AVJeBNqC0zio/RYhjVR8lj
         2kQkYlOMb87PPUpoewwYy76k2+iTWdRRPUCJaL+cNjnbOrNBC9fXEGlTJL7qTfvuehJ4
         DtKqDsHbWEXwI8VQczD4zAnHEN11ChVecPMSjUTGpR3hVHH7n78Qg1uo3uWNxIYL+rgT
         AJqiZlJe+gcKJ1YIXZE7dXrOHWXn+i+I6cmxh1qlWAlMdC1ewyINRCc1/uZCCUTZr4Dj
         pbltJFl1jZFZDcZI1VPMlEhTj+EOurytoc/45I6pj4wcekBIpsRzt4p8geg7zJPie7J7
         Zl/g==
X-Gm-Message-State: AE9vXwMXCNIPIOYy7oLId+HmHQdipKKr+Ika9VkQf2Eo1Ecu+JKFb1vqbL4Ck5TAJ6liig==
X-Received: by 10.66.72.40 with SMTP id a8mr18171690pav.15.1473975209257;
        Thu, 15 Sep 2016 14:33:29 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f11sm47199680pfe.1.2016.09.15.14.33.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:33:28 -0700 (PDT)
Date: Fri, 16 Sep 2016 03:03:21 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/5] staging: sm750fb: Change 'uint32_t' to 'u32'
Message-ID: <b463a5329eeab9c528197990155de98c94699908.1473975000.git.aquannie@gmail.com>
References: <cover.1473975000.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473975000.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

It is preferred to use 'u32' instead of 'uint32_t' for unsigned int. Issue
detected by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/sm750fb/sm750_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 1de9f81..a376d17 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -534,7 +534,7 @@ int hw_sm750_pan_display(struct lynxfb_crtc *crtc,
 			 const struct fb_var_screeninfo *var,
 			 const struct fb_info *info)
 {
-	uint32_t total;
+	u32 total;
 	/* check params */
 	if ((var->xoffset + var->xres > var->xres_virtual) ||
 	    (var->yoffset + var->yres > var->yres_virtual)) {
-- 
2.7.4



X-GM-THRID: 6331204832263667712
X-Received: by 10.107.48.210 with SMTP id w201mr11788490iow.25.1474098677798;
        Sat, 17 Sep 2016 00:51:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.197 with SMTP id c63ls2325265otb.11.gmail; Sat, 17 Sep
 2016 00:51:17 -0700 (PDT)
X-Received: by 10.157.4.79 with SMTP id 73mr1179555otc.57.1474098677479;
        Sat, 17 Sep 2016 00:51:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si3439907pfw.1.2016.09.17.00.51.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 00:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so1917492pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 00:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=09olG5EDqiQO6j7L358CqLsoCcfnjvQrudAqLN34cjw=;
        b=qqNubbaDm3rIr8gcFv3+zKAUHa06Q22owAHgNgWu8tbT3RInz65ybs4NisJMUSAaoL
         Uar90BDYyuXqIup8lodIPpLlDkbwFc1iHcny04G5htq92F+1/1N9YAcZpp4MjCv9RTVo
         uwVqHHEDZ8YRR4TBDloFAP+f8NaG+Q1stABdlC8DQf7fFUAh9ELLHqhZ6gGL2uDHsZbi
         z1YtqNGhPUnRgqPSWyKW2nvdUxli+1MRj8EB63FG0kxjCLoS2xCbJTEyV9f0Saf1gXz1
         HQUvn4Ah9gE+60c+Y8DR+9EJkuPoS9jEb7IMZBeXDK4lYqvaEI3zdKX4HTJQSTy08a7g
         bgvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=09olG5EDqiQO6j7L358CqLsoCcfnjvQrudAqLN34cjw=;
        b=Gvo3BRWha5yOjy9chJkKoiPZUUVApli7Khg7vKX8nM2L3GHR9YV1PsIwX1KwGPL2br
         N6K3LnbL/NP+vkSNCy0zWs2RpH73/xu1DEbhwCFMOxQJoyJb05YWE0lNwm9ZPMSkTXHW
         sDv01Bmdrlu0BPfvicVaOdqhAwiIHWu15VvzOouGHyxyeY8PpU9eJlucCO843aJ3SEaH
         Dtha0kN8duFCTd1AxHpCSkEZIodUEwN0u2rJx0P1RJmMpUu3mdZbY6kHl2Wl22aF8qNE
         /mDPQikZnPhUnRcJ7BGqabSWjIG0gOJo1Za3efUyxWKMQuvUXnOxjYtEf3RIZ8CR+jnF
         KFXA==
X-Gm-Message-State: AE9vXwMrVzqGDLLJTKU8DwPmi7iKAuXmOYgroco6vPyOdF8yprY/P+gYwMMRqTG55BOyBw==
X-Received: by 10.98.95.129 with SMTP id t123mr29273591pfb.148.1474098677303;
        Sat, 17 Sep 2016 00:51:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id x126sm56943108pfx.61.2016.09.17.00.51.14
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 00:51:16 -0700 (PDT)
Date: Sat, 17 Sep 2016 02:20:59 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, labbott@redhat.com, sumit.semwal@linaro.org,
	arve@android.com, riandrews@android.com
Subject: [PATCH 1/2] Staging: android: Modify argument of sizeof() to pointer
 variables.
Message-ID: <d9306dc12be43f1c65e8a6a780a1fe8f47866bbf.1474055668.git.bankarsandhya512@gmail.com>
References: <cover.1474055668.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474055668.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Modify arguments of sizeof() to pointer variables.
The destination of the allocation has type struct **, so the
elements of the array should have pointer type, not structure type.

These changes are made using below Coccinelle script:

@disable sizeof_type_expr@
type T;
T **x;
@@

  x =
  <+...sizeof(
- T
+ *x
  )...+>

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/android/ion/hisilicon/hi6220_ion.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
index 659aa71..4f0dd4b 100755
--- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
+++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
@@ -57,7 +57,7 @@ static int hi6220_ion_probe(struct platform_device *pdev)
 		return PTR_ERR(ipdev->data);
 
 	ipdev->heaps = devm_kzalloc(&pdev->dev,
-				sizeof(struct ion_heap)*ipdev->data->nr,
+				sizeof(*ipdev->heaps)*ipdev->data->nr,
 				GFP_KERNEL);
 	if (!ipdev->heaps) {
 		ion_destroy_platform_data(ipdev->data);
-- 
1.7.1



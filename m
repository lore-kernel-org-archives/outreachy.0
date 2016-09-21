X-GM-THRID: 6332811112929558528
X-Received: by 10.36.107.208 with SMTP id v199mr1101961itc.39.1474472487819;
        Wed, 21 Sep 2016 08:41:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.56 with SMTP id g53ls4639257ote.32.gmail; Wed, 21 Sep
 2016 08:41:27 -0700 (PDT)
X-Received: by 10.157.18.176 with SMTP id g45mr2942525otg.43.1474472487226;
        Wed, 21 Sep 2016 08:41:27 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id si10si8411067pab.1.2016.09.21.08.41.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 08:41:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so2535464pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 08:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bSSHhLLUK2curXWfBUXuGpOgd7cn/DS8nB/iBESKZPs=;
        b=Av14AWok2//5TU1Z713nA4C+dE/FhRittJQIPqhbJkrEMoo+nvhrsYsQaXtjcE+UEK
         iLM6OBDm9uJB7YxEu6Y1EaRbNGMZjrw2Bm1mCbOI/Jlw7598Tfs6yCywxfRaKQxlJxzs
         kvYRNj5x7Ev5GLEDOpnehgEN7F4H65JMn1JePKAT4UcZ3WuAtmFg+BCKYIGzKNdQmAay
         ZP3CDWVUWQpIsumatodt5vXrmdEvC7nmp9PqjBiv0O4X/5ijSvHh3IodT06jwSAl5Fk+
         hVILhEes2NW1t7g+ctZNb6lU45fMCBmllPUc9qJhZzxDWZJQqUf+oug2Vwnyo8bx7/Zt
         5pwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bSSHhLLUK2curXWfBUXuGpOgd7cn/DS8nB/iBESKZPs=;
        b=mviGzBWnfoAs4DLFiWzrk2ISgiCcVJCSSw7jFN0yKf3ck14X/v4zCrpb1+qHtaA2+R
         tzqhw8l3/PeJpMyPH4lLYl61ozjcAx53b2u0bf8p/c1QZneJICLZIuuQGO9gVYFAe9CF
         vfeGnOBy+Cc2m5s1Tds9XhZQlTECd8DklJzuA6YN+PT7EiVvpBdO95QsXqy9mP8uE1eq
         bOYcT42HoRfPvTVZYb3qM1ut+HokULQFj94F4vpxqlAMaXtI8DzM3Fo9wlFDRoVlgHpD
         tz6A9eFTyJZvd3HjAnLBYmeZr/sZ1KqEzZzEdw3JNeJz0q3qx8jBXk9ARaKlQul4eELg
         HQTA==
X-Gm-Message-State: AE9vXwPGE/wlPnmIZZy0z1zQSnv+UcWOWGe3qn02x4lWjly1oPJnIUmUfZBahaaYME/AOg==
X-Received: by 10.98.156.81 with SMTP id f78mr33559890pfe.139.1474472486740;
        Wed, 21 Sep 2016 08:41:26 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.252])
        by smtp.gmail.com with ESMTPSA id u1sm85625457pfb.62.2016.09.21.08.41.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 08:41:25 -0700 (PDT)
Date: Wed, 21 Sep 2016 21:11:14 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Laura Abbott <labbott@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Riley Andrews <riandrews@android.com>
Subject: [PATCH] staging: android: ion: hisilicon: Use pointer to memory
 being allocated as the sizeof argument
Message-ID: <20160921154114.GA18681@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch finds cases where the argument to sizeof is wrong in memory
allocation functions by checking the type of the allocated memory when it is a
double pointer and ensuring the sizeof argument takes a pointer to the memory
being allocated.
Done using coccinelle:
@@
type T;
T **x;
@@

  x =
  <+...sizeof(
- T
+ *x
  )...+>

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/android/ion/hisilicon/hi6220_ion.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
index 659aa71..9f9b244 100644
--- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
+++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
@@ -57,7 +57,7 @@ static int hi6220_ion_probe(struct platform_device *pdev)
 		return PTR_ERR(ipdev->data);
 
 	ipdev->heaps = devm_kzalloc(&pdev->dev,
-				sizeof(struct ion_heap)*ipdev->data->nr,
+				sizeof(*ipdev->heaps) * ipdev->data->nr,
 				GFP_KERNEL);
 	if (!ipdev->heaps) {
 		ion_destroy_platform_data(ipdev->data);
-- 
2.7.4



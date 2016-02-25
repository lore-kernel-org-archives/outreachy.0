X-GM-THRID: 6254956616259469312
X-Received: by 10.129.25.212 with SMTP id 203mr40297636ywz.35.1456401468571;
        Thu, 25 Feb 2016 03:57:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.181 with SMTP id d50ls362624qgd.51.gmail; Thu, 25 Feb
 2016 03:57:48 -0800 (PST)
X-Received: by 10.129.79.21 with SMTP id d21mr41699593ywb.46.1456401468058;
        Thu, 25 Feb 2016 03:57:48 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si1167068pab.0.2016.02.25.03.57.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:57:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c10so2708796pfc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=V941XgdOfZVUI0Rgzx+UTuT15vSEVKJ4HWfAvi5I3iw=;
        b=UC6jQUprUsjYDPE2NhmtdXDy3ipy5uST5ub0GPngb7ZC+h2WEJOY09VCJ05xGYWpxU
         7M0fnZklVndvjBGC0I4mGOI6NrnnPRmcaotLbzqSYMENfdSuXzowWnsT7lLFO7y1mvst
         eYKEYuEwXQFqN6GLDnvq8bJtNJ2+qRtiu7Md1+hmxMVCJkZ+LLe0+hJ2smt6VywiLuDB
         l2kv/HOi5N4bqlJngBwq0AowHg4b3s9WbV4d7LBtg2XjHhPvsiXjRdAqtX37LJyATBZw
         umK2V0vVABhExMpoipdVXj24uYzUhcNFfL/ttW/Wc1x2/ydtu0DOKSHBk3Jod5xqQyCq
         wlbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=V941XgdOfZVUI0Rgzx+UTuT15vSEVKJ4HWfAvi5I3iw=;
        b=kFuvp6LljQDiVttwPETDo9Q3FFnhjDsxsTYQ1JoLbef9EkwxhUh38VtzPrVv4l4Jvv
         B2fKoPd2HlWxzxB4O2wuPOU/tXZQpvOgGjc6rwyZGV7cE9k3WcrCOCylyLmlTpdcIHH6
         gYGl2FyDUyN2Yo/GN11FKtuptahIhgZgzM107xsP3hAosvm+QbUmt4n17VsPwd2ljfsu
         WCWE9AXErdEk4hWYeG4xwoKJ8R1Dlaa9bqOLChr6WAmGa7ctBMfKglsP72gxE9cM46fF
         05CxMyhe2vaa8PMc6sFSFKqf+HyFhOkUxpQR9HDkjI3iTEjwvn7UhtSKQgh0PP+X+tEI
         GCzA==
X-Gm-Message-State: AG10YORm12RNrd0+nD+IZo42pk5HAqLz8fgJs5XM9YXLHYRPklpB+8qJ/XpWFpIgxmvPnA==
X-Received: by 10.98.75.10 with SMTP id y10mr62375793pfa.32.1456401467853;
        Thu, 25 Feb 2016 03:57:47 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t12sm11868358pfa.54.2016.02.25.03.57.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:57:47 -0800 (PST)
Date: Thu, 25 Feb 2016 17:28:23 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/8] staging: rtl8188eu: os_dep: Remove useless return
 variables
Message-ID: <20160225115823.GA5388@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:
@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
          -No change

 drivers/staging/rtl8188eu/os_dep/osdep_service.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/osdep_service.c b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
index d87b547..5a90ef6 100644
--- a/drivers/staging/rtl8188eu/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
@@ -41,10 +41,7 @@ inline int RTW_STATUS_CODE(int error_code)

 u8 *_rtw_malloc(u32 sz)
 {
-	u8	*pbuf = NULL;
-
-	pbuf = kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
-	return pbuf;
+	return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
 }

 void *rtw_malloc2d(int h, int w, int size)
--
2.1.4



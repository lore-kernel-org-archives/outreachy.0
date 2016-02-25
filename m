X-GM-THRID: 6255055306157457408
X-Received: by 10.107.10.217 with SMTP id 86mr711956iok.6.1456368553050;
        Wed, 24 Feb 2016 18:49:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.230 with SMTP id k93ls133594qge.78.gmail; Wed, 24 Feb
 2016 18:49:12 -0800 (PST)
X-Received: by 10.129.3.69 with SMTP id 66mr38726319ywd.41.1456368552122;
        Wed, 24 Feb 2016 18:49:12 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id 12si844000pfb.1.2016.02.24.18.49.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 18:49:12 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fl4so23575757pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 18:49:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XAHQF6I70XOAiaSu5rPJwbG7H3BzQ7tdr6hI3R3bUwE=;
        b=ksf/yu0/heqVJcmgDy/4kaFhMYYztjUgrrk76x12Tz6BCVd2DTtOAHMPIfC/lwmHsj
         y1Lakz5z4e/TdxwwKzz15DyNRSK7U4SNg92tsx/HHOVlHn+W/m62rpKvCbVaBDIVsIuo
         zkaM+hDdqRELNPIy/PsRyarw+JqGyVNJWDkfsam1ZPg6kDTMt70eMPZWlwv7L7ew9a9C
         NvboK8H9jfSnwd2m5ZOErJcLpqZ2H278oo6bJJegSuTjkcszWiiqg365sisFqpymJxqa
         QaSzetoj7/mAS0t+28dgnEv/XARSkctbKRIDR+KZpEjBxb6f5GK0MDX94yySr2QVff7G
         yCUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=XAHQF6I70XOAiaSu5rPJwbG7H3BzQ7tdr6hI3R3bUwE=;
        b=SXIS0jDddwG/lh8Bqiza9ogKakReF6M4pD9/Ei9/3MBB0lZLdsuH6SvLQdmTjhBk9T
         eN0HqGkKx1BQvW2JAi71RbfBf998KRCNh1W7QEbM3MM0b1Fu1Mhtfz7xrsbYtGdGDsMo
         5HoFHk6Nlm8A+vMNS7Hthwn1fZHCD9Vt5iDoqUBidXcAcXs22N7/WUbLf5WgznhBQTlY
         4ya8TbCvMmdi3GH3RlOGqrDUvki2QMSHqQcIOcUpy83cDwSt6irDbaDFRGqnST5HwnkA
         9WJrjQQgcUX3Yuru+x7p1v8cBt++2u9Z8tK44G/e0M1tqGsmWFxhTWpYCrp08CMTCmM8
         z0IQ==
X-Gm-Message-State: AG10YOTENZNldoPa7xW/cvZVkfPo0j9/H7D2Qu5IEhOzfDGPFnCDvmgvH08d1T3eY3GmkA==
X-Received: by 10.66.124.170 with SMTP id mj10mr59699944pab.92.1456368551888;
        Wed, 24 Feb 2016 18:49:11 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id 70sm7891698pfs.78.2016.02.24.18.49.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 18:49:11 -0800 (PST)
Date: Thu, 25 Feb 2016 08:18:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: android: Replace min_t/max_t with min/max
Message-ID: <20160225024851.GA21156@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace min_t/max_t with min/max when both variables are of the same
type.

The Coccinelle semantic patch used to make this change is as follows:
@@
type T;
T a,b;
@@
- min_t(T, a, b)
+ min(a, b)
@@
type T;
T a,b;
@@
- max_t(T, a, b)
+ max(a, b)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/android/ashmem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 8ae1308..770042f 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -663,8 +663,8 @@ restart:
 		if (page_range_subsumed_by_range(range, pgstart, pgend))
 			return 0;
 		if (page_range_in_range(range, pgstart, pgend)) {
-			pgstart = min_t(size_t, range->pgstart, pgstart);
-			pgend = max_t(size_t, range->pgend, pgend);
+			pgstart = min(range->pgstart, pgstart);
+			pgend = max(range->pgend, pgend);
 			purged |= range->purged;
 			range_del(range);
 			goto restart;
-- 
1.9.1



X-GM-THRID: 6205822870992453632
X-Received: by 10.13.233.197 with SMTP id s188mr278269ywe.42.1444905733769;
        Thu, 15 Oct 2015 03:42:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.198 with SMTP id l6ls438509igx.29.gmail; Thu, 15 Oct
 2015 03:42:13 -0700 (PDT)
X-Received: by 10.68.165.5 with SMTP id yu5mr6829969pbb.1.1444905733309;
        Thu, 15 Oct 2015 03:42:13 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id zg1si1420495pbb.2.2015.10.15.03.42.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 03:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id cn9so2925792pad.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 03:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ovtbSVGHbH8LlZ4vn/TDWzujFs5EbgzBwjdTGkEp1Es=;
        b=WbOQRXb4ZrHwDaPVWChSnLWX0LyZadldVqXFWO6TcZRpT2ITGSjuc65YACun+k/zIt
         SYx39uhJwH231ok2XQveiSp3hf7hAGnd2D0k40KjeWEsSZ2M6hFe8ALfFWuv4QW2ZUec
         N54GLHbKaKAyvy2kU8xPE0UUWLyuo2PBaJaRxStLQs5mBWtg2thcuMUkz6IjTmbW+ij3
         qCmTZh/owp5we4YMQCnr5AxFbYeAPUs8TrWSHYb//dZLkTLOi+/ASw8a5CEOELnrLT7a
         y63VK0s5txuN6Xh2vNrrniwb24oZswQRqg0IKElqEKMw8vdriROanGkIPwm+AWMg8lHD
         GQeQ==
X-Received: by 10.66.101.39 with SMTP id fd7mr9178323pab.3.1444905733221;
        Thu, 15 Oct 2015 03:42:13 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id yg2sm14640993pbb.79.2015.10.15.03.42.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 03:42:11 -0700 (PDT)
Date: Thu, 15 Oct 2015 16:12:01 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: most: cdev: Remove useless check
Message-ID: <20151015104201.GA19502@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable mbo is already NULL tested so, check on it should be
removed.
Semantic patch used:

@@ expression E;
statement S; @@
if(E==NULL) {... return ...;}
- if(E)
  S

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/most/aim-cdev/cdev.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/most/aim-cdev/cdev.c b/drivers/staging/most/aim-cdev/cdev.c
index 930ada0..5dc5608 100644
--- a/drivers/staging/most/aim-cdev/cdev.c
+++ b/drivers/staging/most/aim-cdev/cdev.c
@@ -207,8 +207,7 @@ static ssize_t aim_write(struct file *filp, const char __user *buf,
 	}
 	return actual_len - retval;
 error:
-	if (mbo)
-		most_put_mbo(mbo);
+	most_put_mbo(mbo);
 	return err;
 }
 
-- 
2.1.0



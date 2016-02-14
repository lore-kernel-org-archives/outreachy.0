X-GM-THRID: 6250932396840976384
X-Received: by 10.50.79.161 with SMTP id k1mr5421166igx.5.1455409114483;
        Sat, 13 Feb 2016 16:18:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.134 with SMTP id h6ls1160906obr.78.gmail; Sat, 13 Feb
 2016 16:18:30 -0800 (PST)
X-Received: by 10.182.79.134 with SMTP id j6mr9245062obx.4.1455409110769;
        Sat, 13 Feb 2016 16:18:30 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id l85si1266994ywb.2.2016.02.13.16.18.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 16:18:30 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id q184so4134145qkb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 16:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=D4NduZQ2I9UrMHrFe30BHPAKpf+biOWkG2fvb6wBbeg=;
        b=cBv5T7DGF1TCYVSyVXP2dKTxf6DFW9jVxXc77SHXI22JTK9zkSVZSn6ZGQvPWkhHPf
         zVuYGMO6w/QUwVno4gwqzq/Hsj3g671gddoFj7bkD1ZPOKJpw+skg7TX02vGTSFCy9ag
         G10pmSMX/hAWmICdVIoaYW3on51LkcBDfWwl6RU0I0xL9X7Hr6tUAWF0mBqIxR+ptAYX
         3r/5SxcBzi2v0e8ziR35LrhTmcBsCUgas+6bzIJMEVVsrWtBML/b53Nv8y3/50h/YUUp
         W6zczKIWsN0cc4JT+AQdg6YGOymxHM2IOUWIi89Jx9RIDA0QGkPBxSA4iy1aZ0dtgVqT
         QF5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=D4NduZQ2I9UrMHrFe30BHPAKpf+biOWkG2fvb6wBbeg=;
        b=JS40Fq/WRcev6u18xgb0wnuEq3k2YoZipLBrtcrekmS3b0qIJp92grgf+bOoReobxi
         M2o7naFUjZQyQ7naqzlTGzO8Hauynm7hgrVKDT+7H0vaIlawJwhIxu+LmwCz88L/rHqF
         1nKpTXZlvVX1Mlo/uumpvSqMDL+s9tk8i55Zoq4jzHrKSbvPfCtPfR7LtzJv05VNkldQ
         2bRmDZWbHt2+XpJqxwDjIp4Y7JiqfL6HIDJszYRDWzEar9ZmZrekF134+zBWKSdodX24
         ZOhF+krYuIs4GHRgXVCN5R9BUGUTK8cB39rEf6p9J2whjkPdJOeSfCXvmaJ+KwQonYII
         Erdw==
X-Gm-Message-State: AG10YOTTY8OVPyM57Y0xxX8xrSxybs20y5D0n+ANrZ/zPI73aKUpS/IjAP5JSIGt62HlPw==
X-Received: by 10.55.79.207 with SMTP id d198mr11094381qkb.49.1455409110556;
        Sat, 13 Feb 2016 16:18:30 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id s90sm8379727qgs.13.2016.02.13.16.18.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 16:18:30 -0800 (PST)
Date: Sun, 14 Feb 2016 00:17:50 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: Simplify code by eliminating else block
Message-ID: <20160214051750.GA26350@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove else block here as it is not useful after the return statement in 
the corresponding if block. This simplifies code. This issue was
identified by checkpatch.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Modified commit decription to respect 80 char limit.

 drivers/staging/wilc1000/host_interface.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 472fd7f..fe27560 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3355,10 +3355,9 @@ static s32 host_int_get_assoc_res_info(struct wilc_vif *vif,
 		*pu32RcvdAssocRespInfoLen = 0;
 		PRINT_ER("Failed to send association response config packet\n");
 		return -EINVAL;
-	} else {
-		*pu32RcvdAssocRespInfoLen = wid.size;
 	}
-
+	
+	*pu32RcvdAssocRespInfoLen = wid.size;
 	return result;
 }
 
-- 
2.5.0



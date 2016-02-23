X-GM-THRID: 6254479074591244288
X-Received: by 10.98.71.209 with SMTP id p78mr31676815pfi.13.1456234388958;
        Tue, 23 Feb 2016 05:33:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.200 with SMTP id s8ls822394igr.15.canary; Tue, 23 Feb
 2016 05:33:08 -0800 (PST)
X-Received: by 10.66.146.193 with SMTP id te1mr31335903pab.17.1456234388490;
        Tue, 23 Feb 2016 05:33:08 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id ui7si3883950pab.0.2016.02.23.05.33.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 05:33:08 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fy10so110378533pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 05:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=646TFvkK5nI5JeoTFCO+Fm/uISgoTw5/qfblqYs0fz4=;
        b=qQkZJewik439khv979wJ7CaKdVRymucvWOxSJD9CaDFelFBxz99Rh+/K4kGU6sNwfP
         NSv71L+tiIvSs1bUNNxkmYB/Po246ge7DZ3858Mn+5xSN9paw4IbtxoEGNxY+xufb1Gj
         IwYGNZcdaQXPI9Wi3thAfPGXbfO+5a0p4BE6pHSxT/dWyIcthkVj/Y5yNDXS6ObiKWM0
         tDiFDbOVzO+rCk9vF+g++2lhVYjsLiJL55jIjaCur0pe/SS0WhaSC0nxkoWTwil511eB
         SmJ6MNjZnKOJzQOPQSuNB2nZEJ0SER92+WUEFAL1l9pv9adaT4PvJss99YmqQyct+7VU
         sRyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=646TFvkK5nI5JeoTFCO+Fm/uISgoTw5/qfblqYs0fz4=;
        b=cvzhqhIApxIe4ExEsoJ8uq2W4jn6P/TvMVLUR3fTsn6LDBZ7KcaFDZs+mVVIOk+UGn
         QN4oOCoq6NVpuppc5DqGCmLt+6MKz1S2qNnzA+1sk6D7S7bJlGbP1vRw/tJ5mMM+aPb4
         bIWDbk2BRhp1UgexFJ/BpgoNScq3bpZato8dYDdh1uxN0NlvsrQtmF/Zb2JcMdvhXcAk
         6zGcgAsapC9TvAd2qM99t5LIZHgs1cW0qpVh06Ch3fzGh6RSatrBCOA/LfGVcftith1N
         ycpUSdnZtS+9hikhqRITtpU4FJFCtn5uBGGBG4Q8Ip2ws/DEIzE4eybutgMH66AWYQOP
         uq4Q==
X-Gm-Message-State: AG10YOTrOQhzMSFDfiN4ol3VUgPA1+/4sKyUCLRVljqmTW8wfLopj8PQH4cDjsae21OvBw==
X-Received: by 10.67.7.1 with SMTP id cy1mr46662399pad.123.1456234388325;
        Tue, 23 Feb 2016 05:33:08 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id yj1sm44641556pac.16.2016.02.23.05.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 05:33:07 -0800 (PST)
Date: Tue, 23 Feb 2016 19:03:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: libcfs: use swap() in cfs_hash_bd_order()
Message-ID: <20160223133302.GA3944@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use swap() function instead of using a temporary variable for swapping
two variables.

The Coccinelle semantic patch used to make this change is as follows:
//<smpl>
@@
type T;
T a,b,c;
@@
- a = b;
- b = c;
- c = a;
+ swap(b, c);
//<smpl>

Additionally cleaned up the if-else block.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/hash.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
index 5e2afe4..a645f50 100644
--- a/drivers/staging/lustre/lustre/libcfs/hash.c
+++ b/drivers/staging/lustre/lustre/libcfs/hash.c
@@ -800,16 +800,10 @@ cfs_hash_bd_order(struct cfs_hash_bd *bd1, struct cfs_hash_bd *bd2)
 	}
 
 	rc = cfs_hash_bd_compare(bd1, bd2);
-	if (rc == 0) {
+	if (!rc)
 		bd2->bd_bucket = NULL;
-
-	} else if (rc > 0) { /* swab bd1 and bd2 */
-		struct cfs_hash_bd tmp;
-
-		tmp = *bd2;
-		*bd2 = *bd1;
-		*bd1 = tmp;
-	}
+	else if (rc > 0)
+		swap(*bd1, *bd2); /* swab bd1 and bd2 */
 }
 
 void
-- 
1.9.1



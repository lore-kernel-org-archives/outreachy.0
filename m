X-GM-THRID: 6254491784398766080
X-Received: by 10.107.185.4 with SMTP id j4mr34253237iof.21.1456237347906;
        Tue, 23 Feb 2016 06:22:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.101.196 with SMTP id fi4ls1087475obb.32.gmail; Tue, 23 Feb
 2016 06:22:27 -0800 (PST)
X-Received: by 10.182.246.130 with SMTP id xw2mr33003041obc.29.1456237347656;
        Tue, 23 Feb 2016 06:22:27 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id 79si3792006pft.0.2016.02.23.06.22.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 06:22:27 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fl4so111238631pad.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 06:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qPHLTrn/ppGlO2nhKFqW6rOpz/APcsJB5Pt5dPqVKeA=;
        b=xgb9ReJdBln209tsxzv5BY5Zkx5I+IlBLOc2LUOc7lXczBCSUv/vheWKd//SKhEMLm
         Lf9AtqL1NETRtrFigbBadp0gF83mvy120/vbt+P3+MDWH7VTPcJA/4Cw+RCK4OahsqIA
         z3RZruRLtWYTsKfY2anE7F61YlWK7sxXLoBiBObBw1ujbR/dmu8wQQwoCXcuaAr1lUqu
         LjZAtHiJPb4Owf75CSXEXgA/XQDkaQ/EfokBcF6P7xbkBYm3oxVvT++NJiaA0cvMVETi
         dsbOQTo2wL0xE0HsJ5AZbtsyvBrKfzWJXZF6Bc4siQTk/hyjuyQRtdciBzdhuTwtAea5
         zR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=qPHLTrn/ppGlO2nhKFqW6rOpz/APcsJB5Pt5dPqVKeA=;
        b=mQpHK5DYkkSQs8Ue8ly8lcvysp8Ju6ldpKR9c2Mc2pERUGXFS6+ZyfJYlH4AL/FzgY
         cpjYt7XaXKT9PYdItD5EEhYPGmQ6rwydf7utyf78df2X5GaB8kireEUrdHEX2ix7Tp/I
         Ga/XwmIyQsjBrxz6TM/lXYqUP7+uvBqazqW5aMpMrTfUmpF2gqzNxmbNvpae4eJ0PDDr
         Vf2cQJ3lCr51NC/azCIH8pXtJeDlEcHlcNyCuKzI7vW7neO4bw7NNh8A5+OUBuCIZYW3
         Y4SC0oblprfJwMURzgcWQf1+co9cBWbErlm6LrU4vQj1OwFJDJLjX4dTySf69A1xOG2i
         jmIQ==
X-Gm-Message-State: AG10YOSe6whhIfR//mSL/9F3ei/kUvrMmy6hqU1hdXv7Veif0Tp61vXleGbbp8naMa5XMA==
X-Received: by 10.66.190.229 with SMTP id gt5mr46714764pac.118.1456237347482;
        Tue, 23 Feb 2016 06:22:27 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id fn3sm44895586pab.20.2016.02.23.06.22.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 06:22:26 -0800 (PST)
Date: Tue, 23 Feb 2016 19:52:10 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: lustre: libcfs: Use swap() in
 cfs_hash_bd_order()
Message-ID: <ab41303260243d22196ab846c092faac61ae6bf4.1456236436.git.amitoj1606@gmail.com>
References: <cover.1456236436.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456236436.git.amitoj1606@gmail.com>
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

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Divided one patch into a series.

 drivers/staging/lustre/lustre/libcfs/hash.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
index 5e2afe4..c8d8bc8 100644
--- a/drivers/staging/lustre/lustre/libcfs/hash.c
+++ b/drivers/staging/lustre/lustre/libcfs/hash.c
@@ -803,12 +803,8 @@ cfs_hash_bd_order(struct cfs_hash_bd *bd1, struct cfs_hash_bd *bd2)
 	if (rc == 0) {
 		bd2->bd_bucket = NULL;
 
-	} else if (rc > 0) { /* swab bd1 and bd2 */
-		struct cfs_hash_bd tmp;
-
-		tmp = *bd2;
-		*bd2 = *bd1;
-		*bd1 = tmp;
+	} else if (rc > 0) {
+		swap(*bd1, *bd2); /* swab bd1 and bd2 */
 	}
 }
 
-- 
1.9.1



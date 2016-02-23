X-GM-THRID: 6254491784398766080
X-Received: by 10.140.95.38 with SMTP id h35mr6241007qge.3.1456263778701;
        Tue, 23 Feb 2016 13:42:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.232 with SMTP id m8ls1026229igx.33.canary; Tue, 23 Feb
 2016 13:42:58 -0800 (PST)
X-Received: by 10.107.132.73 with SMTP id g70mr35631096iod.4.1456263778360;
        Tue, 23 Feb 2016 13:42:58 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id yd9si4097465pab.1.2016.02.23.13.42.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:42:58 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ho8so120037432pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RZzGh+mw3YlL2OsD5+O1elnkab7ZndDk4AmAntxn9uc=;
        b=0NDN/Th9IbZAJMR5PxYTwzlFGENyYTU+0Q26t3pfi2WXYq5+kdnVWOvH8KnkN3eqXm
         1TnSLkvApdK6VTVdAJQs2VXWYTTJyih39gW24Z3KBxzpVkMP28fvBHQl8M62njBnDpK/
         StdLtZr9Y1XNNlE2/M07mxGNvVpIKXFC2k5YpnJib9WW/vB3DYCC8bsQPjUiblEedkHR
         rT5Vl93RocArcLhVaEVXJrA5RdVzJnVuKQc9NBQ9ZMoVmGRPZxYa7QVZIslnb7BUTImS
         CcPr8CDUUPM5chJN5EiBRD1Q4cX/VwXJxKslQptI5cLatOdMlEp81n+JfJkc98tlBwpt
         hWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=RZzGh+mw3YlL2OsD5+O1elnkab7ZndDk4AmAntxn9uc=;
        b=CX2zfmPWwhkzB8ZHRg5qENvWJiss1KqoxWYwoGkgkGQLaRtuc77gw7yoxulgxmcVKR
         fyXY90QuXLru9MVOOxpRWg+pZ8dvCp3f/zgvevysJvcgLa8el18OoqDapU50urY0Hq4v
         m2aWa3D6Cu8LvCtdxFQBAKH6iWfekStqWA5vblXYrLbg+jjYu3wcEP99UuDd62tYcTPS
         CfPHeAZaDlvz1c1I+vaNrrGtL1RZcHgQETSJ645gqkwIbuqH70rizxrgQPU+vwkZQ/eZ
         UhciWTjq8+1uSv2JsBKMt0jXGs6+uNCUvvZbaRm3+UDkGufTZmrC9KKoMgjp24MIeFuh
         xosQ==
X-Gm-Message-State: AG10YOTp0uF17NZzBc31dhDrxRWPWqXrToxT+Clso3eZ+PV5jCCBGHL60/4ZxI+c3bYQpg==
X-Received: by 10.66.139.234 with SMTP id rb10mr49084685pab.82.1456263778138;
        Tue, 23 Feb 2016 13:42:58 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id 82sm46186538pfn.89.2016.02.23.13.42.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:42:57 -0800 (PST)
Date: Wed, 24 Feb 2016 03:12:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] staging: lustre: libcfs: Use swap() in
 cfs_hash_bd_order()
Message-ID: <3004cc9bddb9b5d09ffed23fbc1ce6a525023320.1456263289.git.amitoj1606@gmail.com>
References: <cover.1456263289.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456263289.git.amitoj1606@gmail.com>
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
Changes in v3:
        -Corrected spelling in comment
Changes in v2:
        -Divided one patch into a series

 drivers/staging/lustre/lustre/libcfs/hash.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
index 5e2afe4..8e6f9ac 100644
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
+		swap(*bd1, *bd2); /* swap bd1 and bd2 */
 	}
 }
 
-- 
1.9.1



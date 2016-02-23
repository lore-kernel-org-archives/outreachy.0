X-GM-THRID: 6254605326031519744
X-Received: by 10.66.63.68 with SMTP id e4mr33115153pas.40.1456263815888;
        Tue, 23 Feb 2016 13:43:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.146 with SMTP id g18ls1319322ioi.0.gmail; Tue, 23 Feb
 2016 13:43:35 -0800 (PST)
X-Received: by 10.50.57.17 with SMTP id e17mr18303389igq.11.1456263815575;
        Tue, 23 Feb 2016 13:43:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id 79si4072827pft.0.2016.02.23.13.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:43:35 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id c10so122877228pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=TJ5Qk4KY8OIrgibB8R6TUSuV3MRUEAUjvIW7pBWgDM0=;
        b=YVkUuJlDVkgJAJrFj5UPSldzXyxpnvwKQvNomqIA1W6yYBwKn15aBhurncti3jje54
         SCvLgsxscb+bGmHfc7Exz0Esl6P9NnRan7Uwuap+C+iRRvnuldNi5wa0RoWz7iOwyiCE
         U60x3c2vGz478rdPqnAU6hd7Z7XfYQylm1I+RGbIhMkyEI9Fti067AcmGZfhOYFJs/9v
         mWeti/S6yIDytZ1k8a0aC6Ek6apRPAXavOvUZkOuFSrVNX5+BYO6FBjMSjIXYVSw1mIf
         Bw8ZEabCIF/gc4Yzo7ZOIxjMU6ukHy2A/vP9ajIrn8ugZ4Y+bIDBosGCSqdg7NlW/4bc
         +hgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=TJ5Qk4KY8OIrgibB8R6TUSuV3MRUEAUjvIW7pBWgDM0=;
        b=kZfloGY42b+LXilZSt/kJm96HKQ3qMHJ/oCrQe0s58SJx+sMqpXrRRsj9o/sTHSHrR
         9xNwKWTsU+sTWDm8gRiBdEE7t7PYRUzMtfEk09zr5YtLRqgCA/HpY0eHBmbue0nkbDVE
         VnhMjv7tqaeD47ayjUBEC9sA5s5xsuLW1MDShRMSa0DQUsrO0tzJYNuh6MrmKslAt+nD
         cuqJLoz/b6K9T05QpFe2U3DgoPpbMb8qdOZpM6Q6SesGnU3WJ8lhpXAfFOWmSD4ASOSe
         0XalXdJEfk5hDVC+/O16059+kE6OJ1cLOPqlMlzSZpJusadBogLFPHwZ80BPh86zmLGI
         9dkA==
X-Gm-Message-State: AG10YOQRtB50XGxx7BUcRL9gBmCZKjjppEa7r0nUV0ho7Rl5jqIjLlkGcLX2vGlezEGaVA==
X-Received: by 10.98.18.207 with SMTP id 76mr48987705pfs.53.1456263815381;
        Tue, 23 Feb 2016 13:43:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id x13sm46220327pfa.72.2016.02.23.13.43.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:43:34 -0800 (PST)
Date: Wed, 24 Feb 2016 03:13:22 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/3] staging: lustre: libcfs: Remove comparison with zero
Message-ID: <ba95153e8019804864f607046e17b03b43b2cdd4.1456263289.git.amitoj1606@gmail.com>
References: <cover.1456263289.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456263289.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace comparison with zero with ! operator.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
        -None
Changes in v2:
        -Divided one patch into a series.

 drivers/staging/lustre/lustre/libcfs/hash.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
index fa0d23c..f60feb3 100644
--- a/drivers/staging/lustre/lustre/libcfs/hash.c
+++ b/drivers/staging/lustre/lustre/libcfs/hash.c
@@ -800,7 +800,7 @@ cfs_hash_bd_order(struct cfs_hash_bd *bd1, struct cfs_hash_bd *bd2)
 	}
 
 	rc = cfs_hash_bd_compare(bd1, bd2);
-	if (rc == 0)
+	if (!rc)
 		bd2->bd_bucket = NULL;
 	else if (rc > 0)
 		swap(*bd1, *bd2); /* swap bd1 and bd2 */
-- 
1.9.1



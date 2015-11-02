X-GM-THRID: 6212627761290280960
X-Received: by 10.182.232.135 with SMTP id to7mr21405619obc.44.1446490184156;
        Mon, 02 Nov 2015 10:49:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.148 with SMTP id d142ls1299602iod.13.gmail; Mon, 02 Nov
 2015 10:49:43 -0800 (PST)
X-Received: by 10.67.14.227 with SMTP id fj3mr19756212pad.17.1446490183897;
        Mon, 02 Nov 2015 10:49:43 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id iz5si1903066pbc.2.2015.11.02.10.49.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:49:43 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv9so162720837pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 10:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=XD/c7mNfdsOldpMSMLxu29iLLK6Kq2SlakU/3BMOquo=;
        b=sF4YYOfTtLaOLPxndqCIVsG/89cjC6AvdYdjITtRk0CduM8jW0CqiIASR69YmyV52V
         JwUP6MSGYFjV+pw6H36MgVHLr7qeTbDb/iwf6u2iauYpbq7aliP53uOAZPMGRGE6fD8k
         JrRnI6khQ6lk2/PsFiNdfnVqMEKGUjo1jH6KyWE2Ok6Ry9feOYJLPkRKODKcafIk/Abb
         VkWjcPooTt3DBZ5xfgDTdHkTK3zEvINS35XDg4LmfcBBVRVwzdFGk2dp46LIS4v7lNVt
         fXED9sTCvws23EHQF+VTsvBDy3IsLKeBxex8xOP69TjCqrdvkzc2J0fNwfqKjuy32f5C
         hjZQ==
X-Received: by 10.68.134.167 with SMTP id pl7mr28341094pbb.45.1446490183829;
        Mon, 02 Nov 2015 10:49:43 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id fb1sm25412136pab.9.2015.11.02.10.49.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:49:43 -0800 (PST)
Date: Tue, 3 Nov 2015 00:19:36 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: lustre: module: Replace function calls
Message-ID: <3beed3bcb9ca96a4d504079d6aeaae4f28b43d52.1446489978.git.shivanib134@gmail.com>
References: <cover.1446489978.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446489978.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace the calls of function cfs_trace_free_string_buffer() with
kfree() as the former function is not required.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/module.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/module.c b/drivers/staging/lustre/lustre/libcfs/module.c
index 50e8fd2..516a9e7 100644
--- a/drivers/staging/lustre/lustre/libcfs/module.c
+++ b/drivers/staging/lustre/lustre/libcfs/module.c
@@ -392,7 +392,7 @@ static int __proc_dobitmasks(void *data, int write,
 	} else {
 		rc = cfs_trace_copyin_string(tmpstr, tmpstrlen, buffer, nob);
 		if (rc < 0) {
-			cfs_trace_free_string_buffer(tmpstr, tmpstrlen);
+			kfree(tmpstr);
 			return rc;
 		}
 
@@ -402,7 +402,7 @@ static int __proc_dobitmasks(void *data, int write,
 			*mask |= D_EMERG;
 	}
 
-	cfs_trace_free_string_buffer(tmpstr, tmpstrlen);
+	kfree(tmpstr);
 	return rc;
 }
 
-- 
2.1.0



X-GM-THRID: 6331640360325873664
X-Received: by 10.237.53.90 with SMTP id b26mr9012247qte.8.1474201529412;
        Sun, 18 Sep 2016 05:25:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.155 with SMTP id d27ls2976029ioj.21.gmail; Sun, 18 Sep
 2016 05:25:28 -0700 (PDT)
X-Received: by 10.98.142.9 with SMTP id k9mr2571928pfe.17.1474201528805;
        Sun, 18 Sep 2016 05:25:28 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si3974733pab.2.2016.09.18.05.25.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 05:25:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so5629420pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 05:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lQPqsfFqRfVu1oFbYRPK0m5G5ga8QTwwep7gPTYqHiE=;
        b=NHkQIwkFtP2kfIrO9B99MtysgehJBYH+OHVUeq7leMtAB0IYpt6GjwJO0Grko4yEtQ
         44UtMIAAi8HWThYM/ygc5hEKaVxKEdR+QXZ8MAzb0CGJ1N/uxM9Dqc5A4VNzd+5Uro8P
         YyUuPlvUteyjAVCFRlb+z4q3sdNx9mTCjGSRhOTO+tZO6hXna9+7jppUyVevYFWiQ86O
         TRz+Q6ENR1XHxrkYnmbnsFBtmHojNUoRwwYamRebCzBXwEToMW6KJTwVjRKQCu2zRBRh
         GGixJQxy/u8bimaCcMQbijxRM3zq/lS47Lwjqlgm6XL+QAODNuZcXhf8zEjjjN4f0DPM
         G0jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lQPqsfFqRfVu1oFbYRPK0m5G5ga8QTwwep7gPTYqHiE=;
        b=S7qMfw8gcln/zh6yXs34LP7QPs4n93Ppi5B0EXvuAcwmbc3vD/haJfkN+vrrEXwfPS
         KRAD2x2NJElegvpn8os9kdeEnylvCKAGGwe4Lm3vZe0xqOWinQW5MDjLLNL2/nrHWxW9
         qzbEoXKqTBbaSU1RDQOu1XmaRU+CfFfRVXp1yx48eKYDTLidK7S9hxoNVovUgDvIUQPb
         KqGaGYqbrNtzrTNFs1eEYjEN4wYghp0HQ0ZSGVBCwTU67FyNsiJAEgedDr6WM8NY7QnE
         iYwwKweGQXOE3BaXscOyBEwbiZWxuuC4AFqy9aNZ2E1rYl9cszLop5zlqU+9RSUjEL+B
         +mgA==
X-Gm-Message-State: AE9vXwO1B4b5G2hVOzFWJokaPDH9DGzCNLOmvh41DoywFZ+Rq4tGE2qPJ8uUToQu0+Lt4Q==
X-Received: by 10.66.232.106 with SMTP id tn10mr38694347pac.130.1474201528434;
        Sun, 18 Sep 2016 05:25:28 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.93.227])
        by smtp.gmail.com with ESMTPSA id k80sm26142799pfk.27.2016.09.18.05.25.25
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 05:25:27 -0700 (PDT)
Date: Sun, 18 Sep 2016 17:56:03 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] Staging: lustre: file: Remove exceptional & on
 function name.
Message-ID: <a05a252addc4c24149195d9f78cc76c2c39162e0.1474159150.git.bankarsandhya512@gmail.com>
References: <cover.1474159150.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474159150.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

A function name is already a pointer, and does not need &.
This changes are made by below coccinelle script:

// <smpl>
@r@
identifier f;
@@
f(...) { ... }
@@
identifier r.f;
@@
- &f
+ f
// </smpl>

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting the commit message.
* Correcting the file permission issue.
 drivers/staging/lustre/lustre/llite/file.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index bfac6dd..4965d15 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -829,7 +829,7 @@ ll_lease_open(struct inode *inode, struct file *file, fmode_t fmode,
 	it.it_flags = fmode | open_flags;
 	it.it_flags |= MDS_OPEN_LOCK | MDS_OPEN_BY_FID | MDS_OPEN_LEASE;
 	rc = md_intent_lock(sbi->ll_md_exp, op_data, &it, &req,
-			    &ll_md_blocking_lease_ast,
+			    ll_md_blocking_lease_ast,
 	/* LDLM_FL_NO_LRU: To not put the lease lock into LRU list, otherwise
 	 * it can be cancelled which may mislead applications that the lease is
 	 * broken;
-- 
1.7.1



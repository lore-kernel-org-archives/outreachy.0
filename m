X-GM-THRID: 6205878038435987456
X-Received: by 10.50.134.199 with SMTP id pm7mr10724687igb.0.1444918578776;
        Thu, 15 Oct 2015 07:16:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.137 with SMTP id 131ls338610ioz.45.gmail; Thu, 15 Oct
 2015 07:16:18 -0700 (PDT)
X-Received: by 10.107.32.11 with SMTP id g11mr5726287iog.34.1444918578282;
        Thu, 15 Oct 2015 07:16:18 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pe1si1401448pac.2.2015.10.15.07.16.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 07:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabur7 with SMTP id ur7so6837136pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 07:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0EAhIwHglqr9NTcjZb+cXG6pmVVHO73CCwnjZI0E6zo=;
        b=j9TObzEg6p+kDX8KljWyFmbTYR63evULilo0Gy6QcWqBDFKoUxqDUh/LVOa5If++HZ
         4eYnchBiHPDVloCQv0KuAczlKGJRMRuuxstNwynVbxeyE1LzKk4/ZSpYZ8CDPNeAWpvw
         GOC9Jumbeqe7wZDbW6bUM7EVMj3k+qcVI5ANqQIXmVO9xAYPVnMnuAe0C2i64VyEWl78
         zaJdYLabvTPbiKdPduMxdPs5B7pubXd3XQkjpF4r1UALHqnwk4Z8C94I1xGVqJSn5vXz
         hNVVeuN6qOCrOc1HbgU7lJPE7ImhzrvNtXILwXnKdW+DdTytwOO2gdLFbyECH5dNCo8J
         N3Rw==
X-Received: by 10.68.68.134 with SMTP id w6mr10441674pbt.61.1444918578149;
        Thu, 15 Oct 2015 07:16:18 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id w8sm15743193pbs.87.2015.10.15.07.16.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 07:16:17 -0700 (PDT)
Date: Thu, 15 Oct 2015 19:46:06 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: mdc_locks: Remove extra test expression
Message-ID: <20151015141605.GA33977@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

struct it is already NULL tested before so, it should be removed from
the if test expression.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/mdc/mdc_locks.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_locks.c b/drivers/staging/lustre/lustre/mdc/mdc_locks.c
index e0b81ee..d4bf34b 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_locks.c
+++ b/drivers/staging/lustre/lustre/mdc/mdc_locks.c
@@ -885,7 +885,7 @@ resend:
 
 	/* Retry the create infinitely when we get -EINPROGRESS from
 	 * server. This is required by the new quota design. */
-	if (it && it->it_op & IT_CREAT &&
+	if (it->it_op & IT_CREAT &&
 	    (int)lockrep->lock_policy_res2 == -EINPROGRESS) {
 		mdc_clear_replay_flag(req, rc);
 		ptlrpc_req_finished(req);
-- 
2.1.0



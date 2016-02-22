X-GM-THRID: 6254021828724916224
X-Received: by 10.140.253.198 with SMTP id y189mr25893501qhc.9.1456127927631;
        Sun, 21 Feb 2016 23:58:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.2 with SMTP id 2ls41474ioe.10.gmail; Sun, 21 Feb 2016
 23:58:47 -0800 (PST)
X-Received: by 10.67.30.161 with SMTP id kf1mr26167041pad.21.1456127927301;
        Sun, 21 Feb 2016 23:58:47 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ui7si3018666pab.0.2016.02.21.23.58.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 23:58:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ho8so89444878pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 23:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+VXh8Gn/zSueWYiCPZNj8j62UsKFmUcsk55PDH2K/R4=;
        b=lohRZrUBjGeVKbCEfhOmvvz9ACgi4lYnOcXv4Nlar3fhj30YDDKI6s6LXNoeFgxPG2
         v/8xW2G1aeWIaXV1sl2NOULoUlX6Hg8aM7pecFgT0Xt7moHz6/9rXjThzv440iliSalg
         MJsLgW57l4eM58UHvoyoqBu/bvnHWnMWVcQs8bftbntGSRWOCunbArKogr0KXUgQmuaD
         kMNz8HH9RZLS9df9tpNaAuhuczLrKkrzOu93/38xcEIj1favWSH6VpA6vEzHurdKBVl4
         +vqjoZh3M2Cq5eUszJ4eo8sC42C+kJ52CdxL30pk/8QrmKsX/5nRKW7SpCnhS6RSIxl9
         pC/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=+VXh8Gn/zSueWYiCPZNj8j62UsKFmUcsk55PDH2K/R4=;
        b=gLnmzcQs+gDQpPZQtlHykl+oWDQons6esw6PdLL5egqMkLrjlw11kgKfzKTrVMBYx+
         l9lrc+Y2yypkxzKS7unyiektfkQfU0Xq/PUyyzkiOtPhxInvNTBPuoDJR6CMJCZWUBAa
         UENgjPQcaCaWNrUHH+w6sg7vRUUMh6k1aZnGa6iByVZHjnZlBrJwr4acQ+P2w0NFiy3S
         XSX47Ug7bx1+wJeRLL7Zd5Z/PeVIKslJqVfJNSbyWIbfmW2SH7c1LuOYHBR56r6n1M8z
         /AmZONu/N2vSa3iBe1FUdEnGabjv/0vnK+KGUyX9UxXLa8Mqiig8tpPL2bdpXWPJcNMe
         keuA==
X-Gm-Message-State: AG10YORGPmfayS94haPSc5lYn9EqxFkUlA9hKaXsKpfh2QhJbi7w3Xo+6TAx7vNPgcnCoQ==
X-Received: by 10.67.6.10 with SMTP id cq10mr36330783pad.120.1456127927190;
        Sun, 21 Feb 2016 23:58:47 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r5sm34767033pap.7.2016.02.21.23.58.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 23:58:46 -0800 (PST)
Date: Mon, 22 Feb 2016 13:29:20 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Use setup_timer
Message-ID: <20160222075920.GA11138@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The function setup_timer combines the initialization of a timer with the
initialization of the timer's function and data fields.

The multiline code for timer initialization is now replaced with function
setup_timer.

This was done with Coccinelle.

@@ expression e1, e2, e3; type T; @@
- init_timer(&e1);
...
(
- e1.function = e2;
...
- e1.data = (T)e3;
+ setup_timer(&e1, e2, (T)e3);
|
- e1.data = (T)e3;
...
- e1.function = e2;
+ setup_timer(&e1, e2, (T)e3);
|
- e1.function = e2;
+ setup_timer(&e1, e2, 0);
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rdma/hfi1/verbs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/verbs.c b/drivers/staging/rdma/hfi1/verbs.c
index 09b8d41..1761686 100644
--- a/drivers/staging/rdma/hfi1/verbs.c
+++ b/drivers/staging/rdma/hfi1/verbs.c
@@ -1926,9 +1926,7 @@ int hfi1_register_ib_device(struct hfi1_devdata *dd)
 	spin_lock_init(&dev->n_qps_lock);
 	spin_lock_init(&dev->n_srqs_lock);
 	spin_lock_init(&dev->n_mcast_grps_lock);
-	init_timer(&dev->mem_timer);
-	dev->mem_timer.function = mem_timer;
-	dev->mem_timer.data = (unsigned long) dev;
+	setup_timer(&dev->mem_timer, mem_timer, (unsigned long)dev);

 	/*
 	 * The top hfi1_lkey_table_size bits are used to index the
--
2.1.4



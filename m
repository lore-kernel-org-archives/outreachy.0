X-GM-THRID: 6252907967708921856
X-Received: by 10.66.231.4 with SMTP id tc4mr11704298pac.14.1455868586674;
        Thu, 18 Feb 2016 23:56:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.66 with SMTP id b60ls22071qga.56.gmail; Thu, 18 Feb
 2016 23:56:25 -0800 (PST)
X-Received: by 10.31.9.78 with SMTP id 75mr11155854vkj.9.1455868585511;
        Thu, 18 Feb 2016 23:56:25 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id ff2si1537921pad.2.2016.02.18.23.56.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 23:56:25 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id c10so48254011pfc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 23:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LJbcUMxt2ISI8/9BHXMNFPsVrOJtlb/2zM2smAkJneg=;
        b=s5DjSzKyiWoTvA3bjkLiDB+1DsThbf1p04j8GGrdCdC3qyzR4p7h6pKwJqBKSqRW0a
         ubeVuXp/MKKLqcr1lavl6wq+uPE7WLkpRbXpmrlb/vXuqxkTAebzvBMucKyutSnPDz+M
         OUx2FDQ4oQFYiNoBo9UYQ2gMULxp6B7n7X5RBYiJvNK5QDURG2g44vSRd0HbQFWhqaVq
         vxN4W5IIqCg2xDOIJGsW5pKhQ142qTH3/OpDvxjajpHnQBtTKWxD3OX2DpLGmciKEb+a
         oM9wNxIPk+VZWtCa48cNsbIgxmCk1c8UQ13JgLC4tnA2NNcaRYIhi7Plii1WNV/xtEtr
         F8Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=LJbcUMxt2ISI8/9BHXMNFPsVrOJtlb/2zM2smAkJneg=;
        b=k59WA5X9LOsigSCWsjqm3EftN/NfH9LlZmlKDVclJwsDOQVxA4kZjB6IUFvMMeT5oO
         Jf7r6cKyrY11kX8FjUyLAqgrF7S455ASmaP1nxYbg/DUGA9j5obK//EiASkCUU6RKCNu
         hwmzSThUQ9ommCupvxO0nsh82XTMOdwiFk3yaigartdbu4BLW7mxGYB9GycpZqnUndO4
         JfP3OSbS4NIv46qvuzDf8Uzgtn03cIDbQA3IXVnQzCyHUBHhdkj/gO/fPDS/7ycEQXhQ
         9UMeOcyadL7owhoyb9qpmaJTsU5jA1/7hyhAd4Z9lFfr1ODGKkiyRexUXn9IG/I7hkD0
         /e2w==
X-Gm-Message-State: AG10YOTmdNertmIN1gEQZzO42eIVcHI9SCD+6o/IryBeL9KIXA+UxLN3SlJkekbB6FydVQ==
X-Received: by 10.98.86.13 with SMTP id k13mr6110019pfb.28.1455868585345;
        Thu, 18 Feb 2016 23:56:25 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id dg1sm15516936pad.18.2016.02.18.23.56.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 23:56:24 -0800 (PST)
Date: Fri, 19 Feb 2016 13:26:54 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: tj@kernel.org
Subject: [PATCH] staging: octeon: Use alloc_ordered_workqueue
Message-ID: <20160219075654.GA12205@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replaced create_singlethread_workqueue() with alloc_ordered_workqueue() with
WQ_MEM_RECLAIM set, so it creates a workqueue which executes work items
one at a time in the queueing order and is guaranteed to make forward
progress under memory pressure.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 8d239e2..6ee7fce 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -677,7 +677,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}

-	cvm_oct_poll_queue = create_singlethread_workqueue("octeon-ethernet");
+	cvm_oct_poll_queue = alloc_ordered_workqueue("octeon-ethernet",WQ_MEM_RECLAIM);
 	if (!cvm_oct_poll_queue) {
 		pr_err("octeon-ethernet: Cannot create workqueue");
 		return -ENOMEM;
--
2.1.4



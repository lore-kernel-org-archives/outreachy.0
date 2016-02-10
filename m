X-GM-THRID: 6249577113411649536
X-Received: by 10.107.157.9 with SMTP id g9mr37868467ioe.26.1455093061293;
        Wed, 10 Feb 2016 00:31:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.229 with SMTP id i5ls123565obe.75.gmail; Wed, 10 Feb
 2016 00:30:59 -0800 (PST)
X-Received: by 10.182.254.35 with SMTP id af3mr35474472obd.37.1455093059534;
        Wed, 10 Feb 2016 00:30:59 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id tn7si241280pac.1.2016.02.10.00.30.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:30:59 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so592972pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QbDdZsgeckWl7Tp1S2hPq8vjaZeGMtqcbcKmi4YL7Mg=;
        b=oH/LhhFGvS8vKnP7ysKq1asR+67/V/wqlAhr7A3K3muk/fpBZnkgcoU1BA5HQAkxip
         SGaGn4E2qc8+/iOja/rEofPqHG3Xw6ZvM3sCeZ/Zp8FNZmNGS17faLLtyOHsqqsq5s+5
         9QMTxVz6ekCnhoppOlR2/3Lg66C3jFVgyD9pJXyMtoTrckqxfrfznK86B5h9VTOYxbTE
         3XeaFWxZ+uXiKBoec2lPVy91zzRtD0XBwoMchls1SlR66ZzMyBuDksF/WQ5QANFP0zYH
         36pT024S3az5UfbhoBI7xglE3EH/+FtdXBOTTvFBX6KErbUCYMzKo+7e+bNEdPYZ6zoq
         Zr/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QbDdZsgeckWl7Tp1S2hPq8vjaZeGMtqcbcKmi4YL7Mg=;
        b=AjN36PQbrR5DF4pVpwDj9QLYp1r/U9pjngJjXkKYAXPDxYWRa3pHt5zm3UL9Attc7H
         UpqavVulzmy0b7isYAbM9qu1/AUdZ4uKEhkqxVxJkl7vbjzUCCrM+ebBiYZlBSa4ZHZZ
         S1heA8Q45r9kA7/AQ90hhm3tuAS34tSl4MBC1vLK7njNvd0GhJKZjpZo2KCUhJBggou3
         1E/EKBHdi9YMsTApSnrNp3zJImXrAqV3qxSr/JyQEBM3NTi0alvYXE6KnCV4ixyI2/IN
         2gAQ5s4corB+blAKEJsuehImR2flfJ90IjfZUeZAv3hBOC/gXo3CdmkDQS+e3wg6U0f6
         Q/6g==
X-Gm-Message-State: AG10YORIjewPNS7HKEZhyubCqsrh4HNaeNMJPnfsBBeEi2iPIz0yBE7UtTGLL8D+eka5Gw==
X-Received: by 10.67.15.2 with SMTP id fk2mr54968542pad.99.1455093059374;
        Wed, 10 Feb 2016 00:30:59 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id z7sm3150446pfi.19.2016.02.10.00.30.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:30:58 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	daniel.baluta@gmail.com,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH v2 2/2] staging: lustre: lov_pool: Fixed a return coding style warning.
Date: Wed, 10 Feb 2016 14:00:53 +0530
Message-Id: <1455093053-7386-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove unusefull return at the end of void function.
WARNING: void function return statements are not generally useful.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_pool.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_pool.c b/drivers/staging/lustre/lustre/lov/lov_pool.c
index bba37bf..34e0919 100644
--- a/drivers/staging/lustre/lustre/lov/lov_pool.c
+++ b/drivers/staging/lustre/lustre/lov/lov_pool.c
@@ -247,7 +247,6 @@ static void pool_proc_stop(struct seq_file *s, void *v)
 		lov_pool_putref(iter->pool);
 		kfree(iter);
 	}
-	return;
 }
 
 static int pool_proc_show(struct seq_file *s, void *v)
-- 
1.9.1


